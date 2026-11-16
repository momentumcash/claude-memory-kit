# The Map

*How <NAME>'s system fits together. If you ever wonder "where does X go?", this is the answer.
Written for <NAME> and for Claude.*

## The layers

| Layer | Folder | Job |
|---|---|---|
| **Second Brain** | `Second Brain/` | What I know: tasks, goals, people, meetings, Claude's memory, this map |
| **Projects** | `Projects/` | What I'm working on: one folder per client or build; dead ones in `Archive/` |

The vault lives at `<VAULT>`. Obsidian is just the viewer. The interface to all of it is
**talking to Claude**.

## Inside the Second Brain

- **Tasks.md** — To Do / Done. Filed by saying `/task ...`.
- **Goals.md** — the few targets everything else is measured against.
- **People/** — one file per key person: who they are, current threads, open loops.
- **Meetings/** — call notes and preps.
- **Memory/** — a window into Claude's long-term memory (lives in `~/.claude`). `MEMORY.md` is the index.
- **Skills/** — a window into Claude's /commands.

## Routing — where things go

| When I say... | It goes to... |
|---|---|
| "Add a task / remind me to X" | `Tasks.md` |
| News about a person | That person's file in `People/` |
| A new project | `/new-project` → `Projects/<Name>/CONTEXT.md` |
| Project progress or decisions | That project's `CONTEXT.md` |
| A correction about how Claude should work | Claude's memory |
| A stable fact about my life or business | `~/CLAUDE.md` |

## Conventions

- **Task status is binary**: To Do or Done.
- **Every project gets a folder + CONTEXT.md.**
- **A project quiet for ~45 days** → move it to `Projects/Archive/`.
- **Write dates, never countdowns.** `2026-11-01` stays true; "3 weeks out" goes stale.
