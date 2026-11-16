---
name: save-memories
description: Sweep the current session for durable, non-obvious things worth saving to long-term memory. Save them straight away, update the MEMORY.md index, then report what was saved. Invoke when the user says "save memories", runs /save-memories, or is about to end a session.
---

# End-of-Session Memory Sweep

Capture what's worth remembering before a session ends. Run carefully: saving low-value
stuff bloats the system and makes future sessions worse, not better.

## Memory location

- Memory files: the Claude Code memory folder for the home directory,
  `~/.claude/projects/<home-path-with-dashes>/memory/` (e.g. `-Users-jake`). It is linked into
  the Obsidian vault at `<VAULT>/Second Brain/Memory/`, so the user browses memories there.
  Always write to the `~/.claude` path; the vault view updates automatically.
- Index file: `MEMORY.md` in that folder (one-line pointers only, never full content)
- Always-loaded core: `~/CLAUDE.md`

## CLAUDE.md vs. memory — where does it belong?

- **`~/CLAUDE.md`** = slow-changing core: who the user is, what they do, key people,
  tools. Edit it directly when a stable fact changes.
- **memory/** = faster-changing, granular stuff: feedback they gave, project state with
  dates, pointers to external systems, narrow preferences.

Rule of thumb: if it would appear in a "master reference" doc about their life and
business, it goes in CLAUDE.md. A correction, one-off preference or project state goes in memory.

## Flow

### 1. Scan the session
Re-read the conversation and list *candidate* memories. Be skeptical: most session content
is temporary and shouldn't be saved.

### 2. Filter by type

| Type | Saves |
|---|---|
| **user** | Their role, preferences, life context, knowledge |
| **feedback** | Corrections they gave OR approaches they explicitly liked. Must include **Why:** + **How to apply:** |
| **project** | Ongoing work, business state, relationships. Relative dates → absolute. Must include **Why:** + **How to apply:** |
| **reference** | Pointers to external systems (dashboards, accounts, key files) |

### 3. Filter OUT the noise

**Do not save**, even if asked (push back once and ask what was *non-obvious* about it):

- Anything already in `~/CLAUDE.md` (if it belongs there but isn't, add it to CLAUDE.md instead)
- Anything already in `Tasks.md`, a People file, or a project's `CONTEXT.md`
- In-flight tasks (those go in `Tasks.md`)
- Code patterns, file paths, folder structure (derivable)
- Ideas discussed but not decided
- Anything an existing memory already covers
- Session summaries or "what we did today" recaps

### 4. Check existing storage
Read `~/CLAUDE.md`, `MEMORY.md` and any related memory files. For each candidate decide:
**NEW**, **UPDATE** (extend an existing file), **ADD TO CLAUDE.md**, or **SKIP**.

### 5. Write immediately — no approval gate
Don't present a list and wait. Write the memories, then report. The filter rules above
still bind hard; removing the approval step puts the judgment on you.

### 6. Write the memories

- **Filename:** snake_case, prefixed by type: `feedback_<topic>.md`, `project_<topic>.md`,
  `user_<topic>.md`, `reference_<topic>.md`
- **The `name:` field equals the filename without `.md`.** One identifier per memory.
- **Frontmatter:**
  ```
  ---
  name: <filename without .md>
  description: <one-line summary, used to decide relevance in future sessions>
  metadata:
    type: <user | feedback | project | reference>
  ---
  ```
- **Body:** lead with the rule or fact. For feedback and project, add **Why:** and
  **How to apply:**. Link related memories with `[[other_memory_name]]`. Concrete beats abstract.

### 7. Update MEMORY.md
Add one line under the section matching the type:
`- [Title](filename.md) — one-line hook (under ~150 chars)`

**Size check:** Claude Code only loads the first ~24 KB of `MEMORY.md`. Run `wc -c MEMORY.md`.
Over 22 KB → move one whole section into `MEMORY_<TOPIC>.md` and leave a one-line pointer to it.

Never add a duplicate line for an updated memory.

### 8. Report
Short recap: what was saved (file names), updated, skipped. No fluff. If nothing was
worth saving, say so; don't manufacture memories.
