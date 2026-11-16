---
name: task
description: File one or more tasks into the Tasks file (<VAULT>/Second Brain/Tasks.md) from a plain-English brain-dump, or mark tasks done. Routes each task to its project/person, dedupes, binary status. Invoke when the user brain-dumps tasks, says "add a task", "remind me to", "file these", "mark X done", or runs /task.
---

# Task — brain-dump → Tasks.md

The user dumps tasks in plain English: one or many, messy. Turn that into clean rows.
Don't interrogate them: parse, route, file, confirm.

## The file
- `<VAULT>/Second Brain/Tasks.md`: `## To Do` and `## Done` tables
  (**Task | Project | Notes | Filed**; Done uses a **Done** date column).
- Status is **binary**. Never invent "In Progress". Finishing = move the row to Done with today's date.
- New To Do rows go at the **top**.

## Flow
1. **Split the dump** into one clear action per row. Short, verb-first titles
   ("Email Sam the notes", not "I need to email Sam at some point").
2. **Route by owner**: the Project column is the person or project the work belongs to.
   Use the Key People / Active Projects in `~/CLAUDE.md`. Ambiguous → make the best call
   and mention it; don't stall.
3. **Notes**: one tight line of extra context if they gave any. Real dates, never "tomorrow".
4. **Dedupe**: read the file first; skip near-duplicates and say so.
5. **File** the rows. Escape any `|` in text.
6. **Confirm** in one or two lines: what was filed, where.
