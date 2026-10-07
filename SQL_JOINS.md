# SQL JOINs

## What are JOINs?

`JOIN` is an SQL keyword used to combine rows from two or more tables into one result. It connects rows using a condition, usually matching a shared ID. 
`JOINs` produce query results. They do not permanently merge or change the original tables.

## How do JOINs work?

The `ON` condition defines how rows from different tables are matched. SQL combines rows that meet this condition, while the `JOIN` type determines whether rows without a match are also included.

![Diagram showing matching rows in an INNER JOIN](<Matched Rows.png>)

*The shaded overlap shows matching rows combined by an INNER JOIN.*

| JOIN | What it returns |
| --- | --- |
| INNER JOIN | Matching rows only. |
| LEFT JOIN | All left-table rows, plus matching right-table rows. |
| RIGHT JOIN | All right-table rows, plus matching left-table rows. |
| FULL JOIN | Matching rows and unmatched rows from both tables. |

The table after `FROM` is the left table; the table after `JOIN` is the right table. Missing values appear as `NULL`. `FULL JOIN` and `FULL OUTER JOIN` mean the same thing.

## Basic database examples

### Starting tables

**users**

| user_id | name |
| --- | --- |
| 1 | Alice |
| 2 | Bob |
| 3 | Charlie |

**orders**

| order_id | user_id | total |
| --- | --- | --- |
| 101 | 1 | 50 |
| 102 | 1 | 30 |
| 103 | 2 | 20 |

### INNER JOIN

```sql
SELECT
  users.name,
  orders.order_id,
  orders.total
FROM users
INNER JOIN orders
  ON users.user_id = orders.user_id;
```

| name | order_id | total |
| --- | --- | --- |
| Alice | 101 | 50 |
| Alice | 102 | 30 |
| Bob | 103 | 20 |

Only Alice and Bob appear because they have orders.

### LEFT JOIN

```sql
SELECT
  users.name,
  orders.order_id,
  orders.total
FROM users
LEFT JOIN orders
  ON users.user_id = orders.user_id;
```

| name | order_id | total |
| --- | --- | --- |
| Alice | 101 | 50 |
| Alice | 102 | 30 |
| Bob | 103 | 20 |
| Charlie | NULL | NULL |

Charlie is included because every user is kept.

### RIGHT JOIN

```sql
SELECT
  users.name,
  orders.order_id,
  orders.total
FROM users
RIGHT JOIN orders
  ON users.user_id = orders.user_id;
```

| name | order_id | total |
| --- | --- | --- |
| Alice | 101 | 50 |
| Alice | 102 | 30 |
| Bob | 103 | 20 |

Every order is kept. All orders have matching users, so the result matches `INNER JOIN` here.

### FULL OUTER JOIN

```sql
SELECT
  users.name,
  orders.order_id,
  orders.total
FROM users
FULL OUTER JOIN orders
  ON users.user_id = orders.user_id;
```

| name | order_id | total |
| --- | --- | --- |
| Alice | 101 | 50 |
| Alice | 102 | 30 |
| Bob | 103 | 20 |
| Charlie | NULL | NULL |

All users and orders are kept. The result matches `LEFT JOIN` here because every order has a user.
Alice appears twice because she has two orders.

## Why use JOINs? Why bother?

Databases keep customers, orders and products in separate tables to reduce repeated data. 
`JOINs` connect that information, so we can create useful reports, calculate spending and find records with no matches all in one query.

## Northwind exercises

### 1. Customers Orders List

Show all customers and their Order IDs.

```sql
SELECT c.CustomerID, o.OrderID
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID;
```

## 2. Orders with Customer Names

Show OrderID, OrderDate and CompanyName.

```sql
SELECT o.OrderID, o.OrderDate, c.CompanyName
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;
```

## 3. Orders with Product Names

Show OrderID, ProductName and Quantity.

```sql
SELECT o.OrderID, p.ProductName, od.Quantity
FROM Orders o
INNER JOIN [Order Details] od
    ON o.OrderID = od.OrderID
INNER JOIN Products p
    ON od.ProductID = p.ProductID;
```