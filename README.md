# Claude Memory Kit

A memory system for Claude Code + Obsidian. Claude remembers who you are, your people,
your projects, and how you like to work, from one session to the next. Everything is plain
markdown files you can browse in Obsidian.

## Set it up with your AI (easiest)

Open Terminal, start Claude Code from your home folder (`cd ~ && claude`), and paste this:

```
Set up the Claude Memory Kit for me from https://github.com/momentumcash/claude-memory-kit
Clone it to ~/claude-memory-kit, then read ~/claude-memory-kit/SETUP.md and follow it.
```

Claude downloads the kit from this page, asks you a few questions, and builds everything.

## Or set it up step by step (5 minutes)

1. Open Terminal and download the kit:
   ```
   git clone https://github.com/momentumcash/claude-memory-kit.git ~/claude-memory-kit
   ```
2. Start Claude Code from your home folder:
   ```
   cd ~ && claude
   ```
3. Paste this to Claude:
   ```
   Read ~/claude-memory-kit/SETUP.md and set me up.
   ```

Claude will ask you questions first (who you are, what you do, who you work with, what
you're working on) and build everything from your answers. Answer like you're texting.
Short is fine.

When it's done, open the vault folder in Obsidian (Open folder as vault → pick `~/Vault`, or the folder you chose) to see it all.

## How you use it after

| Say | What happens |
|---|---|
| `/task call the client back tomorrow` | Files it in your task list |
| `/new-project` | Makes a project folder with a CONTEXT.md |
| `/save-memories` | Before you close a session, Claude saves anything worth remembering |
| "remember that I..." | Claude saves it to memory right away |
| "no, don't do it like that" | Claude saves the correction so it doesn't happen again |

Always start Claude from your home folder (`cd ~ && claude`) so it loads your memory.

## What's in here

```
SETUP.md                 the onboarding Claude follows (the interview + build)
install.sh               makes the folders and links (Claude runs it for you)
templates/CLAUDE.md      your "router": who you are + where everything lives
templates/vault/         the Obsidian vault: Second Brain (tasks, people, map) + Projects
templates/memory/        the memory index
skills/                  /task, /new-project, /save-memories
```
