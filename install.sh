#!/bin/bash
# Claude Memory Kit installer. Safe to run twice: never overwrites an existing file.
# Usage: bash install.sh [vault_path]   (default: ~/Vault)
set -e

KIT="$(cd "$(dirname "$0")" && pwd)"
VAULT="${1:-$HOME/Vault}"
VAULT="${VAULT/#\~/$HOME}"

# Claude Code keeps memory per working folder; starting from ~ maps to this folder name.
PROJECT_KEY="$(echo "$HOME" | sed 's/[^a-zA-Z0-9]/-/g')"
MEM="$HOME/.claude/projects/$PROJECT_KEY/memory"

copy_if_missing() {  # src dest
  if [ -e "$2" ]; then echo "  kept    $2 (already exists)"
  else mkdir -p "$(dirname "$2")"; cp "$1" "$2"; echo "  created $2"; fi
}

echo "Vault:  $VAULT"
echo "Memory: $MEM"
echo

# 1. Vault
mkdir -p "$VAULT/Second Brain/People" "$VAULT/Second Brain/Meetings" "$VAULT/Projects/Archive"
copy_if_missing "$KIT/templates/vault/Second Brain/MAP.md"   "$VAULT/Second Brain/MAP.md"
copy_if_missing "$KIT/templates/vault/Second Brain/Tasks.md" "$VAULT/Second Brain/Tasks.md"
copy_if_missing "$KIT/templates/vault/Second Brain/People/_TEMPLATE.md" "$VAULT/Second Brain/People/_TEMPLATE.md"
copy_if_missing "$KIT/templates/vault/Projects/_TEMPLATE/CONTEXT.md"    "$VAULT/Projects/_TEMPLATE/CONTEXT.md"

# 2. Memory folder
mkdir -p "$MEM"
copy_if_missing "$KIT/templates/memory/MEMORY.md"           "$MEM/MEMORY.md"
copy_if_missing "$KIT/templates/memory/EXAMPLE_feedback.md" "$MEM/EXAMPLE_feedback.md"

# 3. Skills
for s in task new-project save-memories; do
  copy_if_missing "$KIT/skills/$s/SKILL.md" "$HOME/.claude/skills/$s/SKILL.md"
done

# 4. Windows into ~/.claude from the vault, so Obsidian shows memory + skills
link_if_missing() {  # target linkpath
  if [ -e "$2" ] || [ -L "$2" ]; then echo "  kept    $2"
  else ln -s "$1" "$2"; echo "  linked  $2 -> $1"; fi
}
link_if_missing "$MEM"                 "$VAULT/Second Brain/Memory"
link_if_missing "$HOME/.claude/skills" "$VAULT/Second Brain/Skills"

echo
echo "Done. ~/CLAUDE.md is written by Claude from your answers (template: templates/CLAUDE.md)."
