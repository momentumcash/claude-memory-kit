# <NAME> — Master Reference

> Claude reads this file at the start of every session. It's a **router**: one line per
> thing, with pointers to where the detail lives. Keep it short. Depth goes in the vault.

## Me
<Name, age, where based. What they do in one or two lines.>

## What I do
<School, job, business, side projects: one line each. Delete this section if not needed.>

## How I want Claude to work
- <e.g. blunt, short answers, just do it instead of asking>

## Key People
**Full file on each person: `<VAULT>/Second Brain/People/<Name>.md`** — read it before
anything substantive about them.

| Person | Who they are | Project |
|---|---|---|
| **<Name>** | <one line> | <project> |

## Where Things Live
| Thing | Path |
|---|---|
| The map of the system | `<VAULT>/Second Brain/MAP.md` |
| Tasks (To Do / Done) | `<VAULT>/Second Brain/Tasks.md` — file via `/task` |
| Goals | `<VAULT>/Second Brain/Goals.md` |
| People files | `<VAULT>/Second Brain/People/` |
| Meeting notes | `<VAULT>/Second Brain/Meetings/` |
| Claude's memory | `<MEMORY_DIR>` (browsable at `Second Brain/Memory/`) |
| Projects | `<VAULT>/Projects/<Name>/` — each has a `CONTEXT.md` |
| Dead projects | `<VAULT>/Projects/Archive/` |

## Active Projects
**Read a project's `CONTEXT.md` before working in it.**

| Project | What it is |
|---|---|
| <Name> | <one line> |

## Tools / Accounts
- <tool> — <what it's for>

## Memory rules
- When I correct you or say "remember", save it to memory right away (one fact per file,
  index line in `MEMORY.md`). Don't ask permission.
- Stable facts about my life/business go in this file instead of memory.
- Before saving, check if a memory already covers it, and update that one instead.
- Write real dates (2026-10-11), never "next week".
