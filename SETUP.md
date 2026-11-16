# SETUP — instructions for Claude

You are setting up a long-term memory system for a new Claude Code user. They are new to
the terminal. Be friendly, plain-spoken, and quick. Never dump jargon on them.

The kit lives at `~/claude-memory-kit/`. Do the steps in order. **Do not create or edit any
file until the interview (step 1) is finished.**

---

## Step 1 — Onboarding interview (before anything else)

Open with one short line, something like:

> "Before I build anything, I'm going to ask you a few questions so I actually know who
> you are. Answer like you're texting, short is fine. You can skip any of them."

Then ask **one question at a time** (wait for each answer; never send a list of questions).
Use the AskUserQuestion tool where the answer is a pick from options; plain chat otherwise.
React briefly to each answer (one line, no gushing), and ask a natural follow-up only when
an answer is vague and the detail clearly matters.

Cover these, in roughly this order:

1. **Name + basics** — what to call them, age, where they're based.
2. **What they do** — school, job, business, side projects or hobbies; whatever fills their
   week. If they run a business: what it sells, to who, and its stage.
3. **Work or money (optional)** — how they earn, if they want to share. Skip it if they
   are a student or would rather not say. Never ask for exact amounts.
4. **Their people** — the 3–10 people Claude will hear about most: friends, family,
   classmates, coworkers, clients, mentors. For each: name, who they are to them, what they work on together.
5. **What they're working on right now** — active projects, each in one line. Anything
   with a deadline? (Get the actual date.)
6. **Goals** — what they want in the next 3–6 months.
7. **Tools** — apps they use daily (email, calendar, notes, design, code...). Never ask for
   passwords, keys or account numbers.
8. **How they want Claude to work** — e.g. blunt vs. gentle, short vs. detailed answers,
   ask first vs. just do it, anything that annoys them about AI.
9. **Obsidian vault** — where it is. Offer the default: `~/Vault`. If they already made a
   vault in Obsidian, find it (`ls ~/Documents ~/Desktop ~` and look for a `.obsidian`
   folder) and confirm with them.
10. **Anything else** — "Anything I should always know about you that I didn't ask?"

Then play it back in **5–8 short bullets** ("Here's what I've got:") and ask if anything
is wrong. Fix it, then move on.

---

## Step 2 — Install the folders

Run (substitute the vault path they chose):

```
bash ~/claude-memory-kit/install.sh "<VAULT_PATH>"
```

It creates the vault, the memory folder, links them together, and installs the skills.
It never overwrites existing files. Read its output and tell them in one line what it did.

---

## Step 3 — Build from their answers

Fill everything with **their real answers**. No placeholder text left anywhere — if
something wasn't answered, delete that line rather than leaving `<...>`.

1. **`~/CLAUDE.md`** — start from `~/claude-memory-kit/templates/CLAUDE.md`. If `~/CLAUDE.md`
   already exists, read it and merge into it; never wipe it. Fill: Me, What I do, Key People table, Active Projects table, Tools, How I want Claude to
   work, and the vault paths. Keep it a router: one line per thing, depth lives in files.
2. **People files** — one per person in `<VAULT>/Second Brain/People/<Name>.md`, using
   `People/_TEMPLATE.md`. Fill what you know; leave Open loops empty if none.
3. **Projects** — one folder per active project: `<VAULT>/Projects/<Name>/CONTEXT.md`, from
   `Projects/_TEMPLATE/CONTEXT.md`.
4. **Tasks** — any to-dos they mentioned go in `<VAULT>/Second Brain/Tasks.md` (To Do table,
   today's date in Filed).
5. **Goals** — write `<VAULT>/Second Brain/Goals.md` (one row per goal, with dates).
6. **First memories** — their answers to question 8 (how to work) become `feedback_*.md`
   memory files; personal context that isn't a stable fact becomes `user_*.md`. Use the
   format in `templates/memory/EXAMPLE_feedback.md`. Add one line per memory to
   `MEMORY.md` in the memory folder. Delete `EXAMPLE_feedback.md` from the memory folder after.
7. **MAP.md** — fill in their name and vault path in `<VAULT>/Second Brain/MAP.md`.
8. Replace `<VAULT>` everywhere in the installed skills
   (`~/.claude/skills/task/SKILL.md`, `new-project`, `save-memories`) with the real path.

---

## Step 4 — Finish

Tell them, briefly:

- Open Obsidian → "Open folder as vault" → pick `<VAULT>`. Everything you just told me is
  in there.
- Always start Claude with `cd ~ && claude` so it loads this.
- The three commands: `/task`, `/new-project`, `/save-memories`.
- Correct me any time ("no, do it like X") — I'll remember.

Then end with one concrete suggestion of the first thing they could do with it, based on
what they told you.

You can delete `~/claude-memory-kit` afterward; everything was copied out of it.
