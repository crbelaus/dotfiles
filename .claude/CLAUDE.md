# Version control
- If the repo has a `.jj/` directory, use `jj` instead of `git`.
- Never modify history. I commit, describe, rebase, etc. myself.
  - Forbidden: `jj commit/describe/new/squash/split/abandon/restore/rebase/git push`, `git commit/rebase/reset/stash/push/checkout -- <file>`.
  - Allowed: read-only commands (`status`, `diff`, `log`, `show`).
- Commands must be non-interactive: pass `--no-pager`, never open an editor.

# GitHub
- For pasted GitHub links, fetch details with `gh` (e.g. `gh pr view`, `gh issue view`, `gh api`).
- Read-only by default. Do not comment, review, approve, create or edit PRs or issues, label, merge or push unless I explicitly ask.

# Plans
- When I ask for a plan (including in plan mode), write it to `~/Obsidian/Plans/YYYY-MM-DD-<short-slug>.md`.
