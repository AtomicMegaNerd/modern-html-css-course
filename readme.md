# Modern HTML & CSS From The Beginning Source Files

This is my fork of the HTML course that I took on Udemy with my own notes and docs.

## Pre-Requisites

- Install a recent version of `nodejs` with the `npx` command.
- Install [Zellij](https://zellij.dev/) if you want to leverage the Zellij layout for TUI based
  development.

## Terminal Setup

### Zellij

You can launch the custom Zellij layout thusly:

```bash
./scripts/zellij.sh
```

It will either create a new session or re-attach to an already running session. Four panes will
be created:

- neovim
- llm - for `copilot-cli` or `claude`
- shell
- live-server (See below for running the live server in this pane)

### Live Server

Running the live-server:

```bash
npx live-server ./<PATH_TO_HTML>
```

*NOTE* you want to ensure that you point it to the directory where the HTML files are and not to
the specific `index.html` file. That way links between pages will work.

## References

The following are reference links that I added based on what I learned here:

- [Live Server](http://tapiov.net/live-server/)
- [Block vs. Inline Elements](https://www.w3schools.com/htmL/html_blocks.asp)

---

## Author Information from Source Repo

This repo includes all of the source files for the Modern HTML & CSS From The Beginning 2.0 course.
It does not include the premium docs. Those are only available if you purchase the course from 
[traversymedia.com](traversymedia.com).

### Course Links

- [Author's Course Website](https://www.traversymedia.com/modern-html-css-from-the-beginning)
- [Udemy](https://www.udemy.com/course/modern-html-css-from-the-beginning)

### Files

- **HTML Sandbox Starter** - The starter files for the learning-based modules, mini-projects and 
  challenges
- **HTML Sandbox Finished** - The final code for learning-based modules, mini-projects and challenges
- **Bono Landing Form** - Mini-project for basic CSS properties and flexbox
- **Lumina Creative** - First full website project
- **Lumina Creative Grid** - Uses grid for the gallery instead of flexbox
- **Tutor Website** - Second Project
- **Leno Website** - Third project. Uses BEM methodology

