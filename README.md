# 📊 Oracle SQL Tuning – Illustrated Case Studies

A structured collection of case-based exercises focused on understanding and tuning Oracle SQL execution plans. This repository uses real execution outputs and performance diagnostics to visualize how SQL statements are processed internally.

The project emphasizes **access paths**, **join strategies**, **index usage**, and the impact of **hints** through real-world analogies and custom illustrations.

---

## 📚 Contents

### 🎨 Execution Plan Illustrated Guide

This section presents a visual guide to the most common Oracle SQL operations (e.g., `HASH JOIN`, `NESTED LOOPS`, `INDEX UNIQUE SCAN`) and explains them through analogies and personal illustrations. Ideal for visual learners seeking to build intuition around Oracle’s internal decision-making.

📄 [View Confluence Page](https://victorcardenasgil.atlassian.net/wiki/x/AQCd?atlOrigin=eyJpIjoiNjc5OWUzMGFjMzkyNDU2NTk2MGIzMzkyNzc2YmM2NTMiLCJwIjoiYyJ9)

---

### 🛸 Oracle SQL Hints – Tuning Essentials

Provides foundational understanding of:
- What Oracle SQL hints are
- When and how to use them
- How hints like `LEADING`, `USE_NL`, and `INDEX` guide the optimizer
- How hints influence query performance by modifying join order and access paths

📄 [View Confluence Page](https://victorcardenasgil.atlassian.net/wiki/x/AoB-/?atlOrigin=eyJpIjoiMGJlNzFlYjBkOGM3NDkzM2E0ODJmMzc5YzJhNmJlNzEiLCJwIjoiYyJ9)

---

## 🧪 Case Studies Overview

Each case study folder contains:
- Original SQL (`caseX.sql`)
- Tuned SQL using hints (`caseX_tune.sql`)
- Estimated plan output via `EXPLAIN PLAN` (`explain_output.txt`)
- Actual execution plan output via `DBMS_XPLAN.DISPLAY_CURSOR` (`execution_output.txt`, `execution_tune_output.txt`)

---

### 🔹 `case01_02_beginner`
**Objective:**  
Examine how Oracle leverages unique indexes (`INDEX UNIQUE SCAN`) and `TABLE ACCESS BY ROWID`. Focus is on understanding the basic flow of indexed access.

---

### 🔹 `case03_subquery`
**Objective:**  
Explore how Oracle processes subqueries and how join order affects execution. Demonstrates how using the `LEADING` hint shifts the optimizer from a `HASH JOIN` to a `NESTED LOOP` when appropriate.

---

### 🔹 `case04_bad_join_conditions`
**Objective:**  
Evaluate join order in a three-table query. Highlights the impact of filtering early using a more selective table (`EMPLOYEES`) by using the `LEADING` hint to influence the join path.

---

### 🔹 `case05_nested_loop_join`
**Objective:**  
Analyze a multi-join scenario and compare Oracle's default strategy (`HASH JOIN`) with a forced `NESTED LOOP` via the `USE_NL` hint. Emphasis on performance tradeoffs based on expected row volumes.

---

### 🔹 `case06_exist_operator`
**Objective:**  
Focus on how Oracle interprets and optimizes `EXISTS` subqueries. Demonstrates that `EXISTS` logic is evaluated during row-level filtering and that the optimizer may already choose the most efficient plan, regardless of the presence of a `LEADING` hint.

---

### 🧩 `Extended Case Study 01`
Additional exploration and diagnostics related to Case 01. Includes performance comparisons, plan variations, and step-by-step visual breakdowns.

---

## 📁 File Structure

Each folder contains:

| File Name                | Purpose                                             |
|-----------------------------|--------------------------------------------------|
| `caseX.sql`                 | Base query for the case                          |
| `caseX_tune.sql`            | Query with SQL hints for tuning                  |
| `getplan_caseX.sql`         | Utility script for fetching execution plan       |
| `explain_output.txt`        | Estimated plan using EXPLAIN PLAN                |
| `execution_output.txt`      | Actual plan from Oracle cursor cache             |
| `execution_tune_output.txt` | Actual plan after applying hints                 |

---

## 🛠️ How to Use

1. Load the `.sql` file in SQL*Plus or another Oracle-compatible SQL IDE.
2. Use `EXPLAIN PLAN` or `DBMS_XPLAN.DISPLAY_CURSOR` to review execution behavior.
3. Compare default plans with hinted alternatives.
4. Check the `.txt` outputs to understand which operations were triggered and why.

---

## 🎓 Recommended Audience

This repository is intended for:
- SQL developers and analysts aiming to understand Oracle’s execution engine
- Data engineers focusing on performance tuning
- Students and learners preparing for Oracle certification or practical tuning scenarios

---
