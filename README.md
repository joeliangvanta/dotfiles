# dotfiles

Personal CDE dotfiles, set up per the ["Agentic Planning and Technical Design"](https://app.getguru.com/card/TArEKz5c/Agentic-Planning-and-Technical-Design-) Guru card so that `.ai-dev` (agent plan/research directories) works the same way on every new Ona instance.

- `git/ignore` → symlinked to `~/.config/git/ignore` (global gitignore): ignores `.ai-dev` and `.claude/settings.local.json` everywhere, at any depth.
- `CLAUDE.md` → symlinked to `~/CLAUDE.md`: instructs agents to write plans/designs/research into `.ai-dev` directories.
- `post-start-install.sh` creates both symlinks.

## Setup

1. Push this repo to GitHub.
2. In your Ona account settings, set this repo as your dotfiles repository.

`post-start-install.sh` is not run by Ona's own dotfiles clone step — that step runs during environment prebuild, before `$HOME` is the real per-instance home. Instead, obsidian's `.devcontainer/lifecycle/post-start.sh` looks for this exact filename in `~/dotfiles` and runs it on every real container start, once `$HOME` is correct. See the comment above `run_dotfiles_post_start_hook` in that file for the underlying contract.
