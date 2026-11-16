---
name: new-project
description: Start a new project folder with a CONTEXT.md in <VAULT>/Projects/ and add it to the Active Projects table in ~/CLAUDE.md. Invoke when the user starts a new client, build, or initiative, says "new project", or runs /new-project.
---

# New project

1. Ask only what you don't already know (one question at a time): name, what it is, who
   it's for, deadline (a real date), what "done" looks like, any rules that change the work.
2. Create `<VAULT>/Projects/<Name>/CONTEXT.md` from `<VAULT>/Projects/_TEMPLATE/CONTEXT.md`.
   Fill it with their answers; delete any line left unanswered.
3. Add one row to the **Active Projects** table in `~/CLAUDE.md`.
4. If a person is involved, add a line under Current threads in their People file.
5. Any to-dos mentioned → `Tasks.md` (see the `task` skill).
6. Confirm in one line.

When a project is finished or dead, move its folder to `<VAULT>/Projects/Archive/` and
remove its row from `~/CLAUDE.md`.
