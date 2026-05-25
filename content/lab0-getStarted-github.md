# GitHub Beginner Tutorial (Web + Linux)

This tutorial aimed at first-time GitHub users using the **website**, with a small section at the end for **Linux `git clone` and `git pull`**.

***

# Create a GitHub account

1. Open a browser and go to [https://github.com](https://github.com).[^1]
2. Click **Sign up** (usually in the top-right).[^1]
3. Enter:
    - Email address
    - Password
    - Username (this becomes part of your profile URL)
4. Solve the puzzle / CAPTCHA and click **Create account**.[^2]
5. GitHub will send a code to your email; enter that code to verify.[^3]
6. Choose the **Free** plan when asked.[^3]

After this, you have a GitHub account and a profile page.[^4]

***

# Create your repo from the course template

You have been given a template repository:

[https://github.com/silicon-vlsi/si2026-analog-notebook/](https://github.com/silicon-vlsi/si2026-analog-notebook/)[^5]

To create your own copy:

1. Make sure you are logged in to GitHub.[^4]
2. Open the template link in your browser.
3. On the main page of that repo, look for a green button **Use this template** near the top-right.[^6][^7]
4. Click **Use this template → Create a new repository**.[^7][^6]
5. Fill the form:
    - **Owner**: choose your username.
    - **Repository name**: for example `si2026-analog-notebook-yourname`.
    - Keep visibility as **Public** unless your instructor says otherwise.
6. Click **Create repository from template**.[^6][^7]

You now have your **own** repository, with the same structure and starter files as the template.[^7]

***

# Working with files on the GitHub website

All of this section uses only the **browser**, no command line.

## Open your repository

1. Click your profile picture (top-right) → **Your repositories**.[^4]
2. Click the repo you just created.

You will see a file list (for example, `README.md`, folders, etc.).

***

## Create (add) a new file in a folder

1. Navigate to the folder where you want the file (or stay at root).
2. Click the **Add file** button above the file list.
3. Choose **Create new file**.
4. Enter a file name, for example `notes/week1.md`.
5. In the big text area, type some content (plain text or markdown).
6. Scroll down to the **Commit changes** section:
    - **Commit message**: short description, e.g. `Add week 1 notes`.
    - Keep **Commit directly to the main branch** selected for now.
7. Click **Commit changes**.

GitHub saves the new file in the repository history.[^8]

***

## Upload an existing file from your computer

1. In your repo, click **Add file → Upload files**.
2. Drag-and-drop one or more files, or click to browse.
3. Add a commit message, e.g. `Upload simulation results`.
4. Click **Commit changes**.[^8]

***

## Edit (modify) an existing file

1. Open the file by clicking its name in the file list.
2. Click the pencil icon (**Edit this file**) at the top right of the file’s content.
3. Make your changes in the editor.
4. Scroll to **Commit changes**, write a meaningful commit message, e.g. `Fix typo in lab notes`.
5. Click **Commit changes**.[^8]

***

## Rename or move a file

1. Open the file.
2. Click the pencil (**Edit this file**).
3. At the top, where the filename is shown, change the name or add a folder path:
    - Example: change `notes.md` to `week1/notes.md` to **move** it into a `week1` folder.
4. Commit the change as usual.

Git treats rename/move as changes recorded in history.[^8]

***

## Delete a file

1. Open the file.
2. Click the trash can icon (**Delete this file**) at the top right.
3. Scroll to **Commit changes**, write a message, e.g. `Remove old diagram`.
4. Click **Commit changes**.[^8]

The file disappears from the current view but still exists in history.

***

# Quick intro to Markdown

Markdown is a simple text format that GitHub turns into nicely formatted HTML, especially in `.md` files like `README.md`.[^9]

## Basic syntax

- **Headings**

```markdown
# Heading 1
## Heading 2
### Heading 3
```

- **Bold and italics**

```markdown
**bold text**
*italic text*
```

- **Lists**

```markdown
- Item one
- Item two
  - Indented item (use 2 spaces before the dash)
```

- **Numbered lists**

```markdown
1. First step
2. Second step
```

- **Links**

```markdown
[GitHub](https://github.com)
```

- **Images** (the image must be in the repo or reachable via URL)

```markdown

```


GitHub shows a **Preview** tab above the editor so you can check how the markdown will render before committing.[^9]

***

# Clone your repo on a Linux machine

Although you will mostly work in the browser, sometimes you may want a local copy (for example, to run simulations or edit with VS Code).[^8]

## Clone your GitHub repository

1. In your browser, open **your** repo (not the template).
2. Click the green **Code** button.[^9]
3. Under **HTTPS**, copy the URL (looks like `https://github.com/your-username/your-repo.git`).[^9]
4. On your Linux machine, open a terminal and go to the directory where you want the project:

```bash
cd ~/projects    # example
```

5. Run:

```bash
git clone https://github.com/your-username/your-repo.git
```

Replace with your actual URL. This creates a new folder with your repo content.[^9][^8]
6. Enter that folder:

```bash
cd your-repo
```


***

## Keep your local copy up to date (`git pull`)

Whenever you make changes on the **GitHub website** (new files, edits, deletes), update your local copy like this:

1. In the terminal, go to your repo folder:

```bash
cd /path/to/your-repo
```

2. Run:

```bash
git pull origin main
```

    - `origin` is the default name of the remote on GitHub.
    - `main` is the default branch name in modern GitHub repos.[^10][^11][^8]

`git pull` fetches new commits from GitHub and merges them into your local branch, so your Linux copy matches what you see on the website.[^12][^8]

***

# Minimal daily workflow (for this course)

Staying within the browser for most tasks:

- Open your repo in GitHub.
- For each lab/week:
    - Create or edit markdown files for notes and answers.
    - Upload any required simulation results or images.
    - Use clear commit messages like `Add Week 2 lab answers`.
- Occasionally, on your Linux machine:
    - `git pull origin main` before running simulations or editing locally.[^10][^8]

***

To check your understanding: if you have just created a new markdown file on the GitHub website and later want those changes on your Linux machine, what are the exact terminal commands you would run starting from your home directory?
<span style="display:none">[^13][^14][^15][^16][^17][^18][^19][^20][^21][^22][^23][^24]</span>

<div align="center">⁂</div>

[^1]: https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github

[^2]: https://www.wikihow.com/Create-an-Account-on-GitHub

[^3]: https://learn.microsoft.com/en-us/visualstudio/version-control/git-create-github-account?view=visualstudio

[^4]: https://docs.github.com/en/get-started/onboarding/getting-started-with-your-github-account

[^5]: https://github.com/silicon-vlsi

[^6]: https://www.youtube.com/watch?v=QHH6hC9x5xA

[^7]: https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-template-repository

[^8]: https://docs.github.com/en/get-started/using-git/getting-changes-from-a-remote-repository

[^9]: https://docs.github.com/articles/cloning-a-repository

[^10]: https://github.com/git-guides/git-pull

[^11]: https://www.w3schools.com/git/git_pull_from_remote.asp?remote=github

[^12]: https://docs.github.com/enterprise/2.6/user/articles/fetching-a-remote

[^13]: https://github.com/signup

[^14]: https://docs.github.com/en/enterprise-cloud@latest/get-started/start-your-journey/creating-an-account-on-github

[^15]: https://docs.github.com/pt/get-started/start-your-journey/creating-an-account-on-github

[^16]: https://github.com/silicon-vlsi/project2020

[^17]: https://github.com/github/docs/blob/main/content/get-started/start-your-journey/creating-an-account-on-github.md

[^18]: https://github.com/silicon-vlsi/project2020/blob/master/README.md

[^19]: https://docs.github.com/de/get-started/onboarding/getting-started-with-your-github-account

[^20]: https://github.com/silicon-vlsi/silicon-vlsi

[^21]: https://docs.github.com/pt/get-started/onboarding/getting-started-with-your-github-account

[^22]: https://www.youtube.com/watch?v=h5cKAd94QNo

[^23]: https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-git-clone-on-Ubuntu-with-GitLab-and-GitHub

[^24]: https://www.youtube.com/watch?v=vrUleDpIdI8

