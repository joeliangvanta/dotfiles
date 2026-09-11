# dotfiles

Personal CDE dotfiles, set up per the ["Agentic Planning and Technical Design"](https://app.getguru.com/card/TArEKz5c/Agentic-Planning-and-Technical-Design-) Guru card so that `.ai-dev` (agent plan/research directories) works the same way on every new Ona instance.

- `git/ignore` → symlinked to `~/.config/git/ignore` (global gitignore): ignores `.ai-dev` and `.claude/settings.local.json` everywhere.
- `CLAUDE.md` → symlinked to `~/CLAUDE.md`: instructs agents to write plans/designs/research into `.ai-dev` directories.
- `install.sh` runs on instance start to create both symlinks.

## Setup

1. Push this repo to GitHub.
2. In your Ona account settings, set this repo as your dotfiles repository.
3. New Ona instances will run `install.sh` automatically and pick up `.ai-dev` support.
