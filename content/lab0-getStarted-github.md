``` markdown
# GitHub Lab – Web-Only Beginner Workflow

This lab is for absolute first-time GitHub users.  
Everything is done **in the browser**. You will **not** use `git` or the command line.

By the end of this lab, you will be able to:

- Create a GitHub account  
- Create a repository  
- Create and edit files using the GitHub web editor  
- Upload files from your computer using the web interface  
- View the commit history of your changes  

> Estimated time: 30–40 minutes  
> Requirements: A web browser and an email address

---

## 1. Create your GitHub account

1. Open your browser and go to:  
   https://github.com/  [web:27]
2. Click **Sign up** in the top-right corner. [web:16][web:18]
3. Follow the on-screen steps:
   - Enter your email  
   - Create a password  
   - Choose a username  
   - Decide if you want email updates  
4. Solve the verification puzzle and click **Create account**. [web:16][web:26]
5. Open your email inbox and click the verification link or enter the code sent by GitHub. [web:20]
6. Once verified, you will be taken to your GitHub dashboard. [web:17]

**Checkpoint:**  
You should see your username in the top-right corner of the GitHub page.

---

## 2. Create your first repository (web only)

1. Make sure you are logged in to GitHub.
2. In the upper-right corner, click the **+** icon and choose **New repository**. [web:27]
3. Fill in the form:
   - **Repository name**: `web-only-lab` (or any simple name)
   - **Description**: `My first GitHub repository using only the web interface`
   - **Visibility**: select **Public**
4. Turn on **Add a README** (toggle to **On**). This creates a `README.md` file automatically. [web:27]
5. Click **Create repository**. [web:27]

**Checkpoint:**  
You should now see a page with your new repository and a file list containing at least `README.md`.

---

## 3. Edit a file directly on GitHub

You will now make your first change using the built-in editor.

1. In your repository, click on `README.md`. [web:37]
2. In the top-right area of the file view, click the **pencil icon** to edit the file. [web:37]
3. In the text box, add a few lines, for example:

   ```text
   ## About this repository

   This is my first GitHub repository created using only the web interface.
```

4. (Optional) Click **Preview** to see how it looks. [web:37]
5. Scroll down to the **Commit changes** section.
6. In the **Commit message** box, write a short description, e.g., `Add description to README`. [web:37]
7. Ensure **Commit directly to the main branch** is selected.
8. Click **Commit changes**. [web:37]

**Checkpoint:**
After the page reloads, your new text should be visible in `README.md`, and you should see a new commit entry above the file list.

---

## 4. Create a new file from the web

Next, you will create a completely new file inside your repository.

1. Go to the main page of your repository (where you see the file list). [web:34]
2. Above the file list, click the **Add file** dropdown and select **Create new file**. [web:34]
3. In the **File name** box, type:
`notes/first-notes.txt`
    - This will create a folder named `notes` and a file named `first-notes.txt`. [web:34]
4. In the big text area, type some content, for example:

```text
This is my first notes file created directly on GitHub.
```

5. (Optional) Click **Preview**.
6. Scroll down to the **Commit changes** section.
7. Enter a commit message like `Add first notes file`. [web:34]
8. Make sure **Commit directly to the main branch** is selected.
9. Click **Commit changes**. [web:34]

**Checkpoint:**
You should now see a `notes` folder in your file list, and inside it, a `first-notes.txt` file.

---

## 5. Upload a file from your computer (web only)

Now you will upload a file (for example, a text file or a small document) from your local machine using only the GitHub website.

1. On your computer, create a simple text file (for example, `local-notes.txt`) and save it somewhere easy to find.
2. In your browser, go to the main page of your repository.
3. At the top of the file list, click the **Add file** dropdown and choose **Upload files**. [web:35]
4. Either:
    - Drag and drop your `local-notes.txt` file into the upload area, or
    - Click **choose your files** and select `local-notes.txt`. [web:35][web:38]
5. After the file is listed, scroll down to the **Commit changes** section.
6. Write a commit message such as `Upload local-notes.txt`. [web:35][web:36]
7. Confirm that **Commit directly to the main branch** is selected.
8. Click **Commit changes**. [web:35]

**Checkpoint:**
Your file `local-notes.txt` should now appear in the repository file list.

---

## 6. Edit and update an uploaded file

You will now modify the file you just uploaded and save another version.

1. In your repository, click on `local-notes.txt`.
2. Click the **pencil icon** to edit the file. [web:37]
3. Add a new line to the file, such as:

```text
This line was added using the GitHub web editor.
```

4. Scroll down to **Commit changes**.
5. Use a clear commit message like `Update local-notes.txt`. [web:37]
6. Click **Commit changes**.

**Checkpoint:**
You should see the updated content in `local-notes.txt` and another commit in the history.

---

## 7. View your commit history

1. On the main repository page, click on the **Commits** link near the top (or on the number showing total commits).
2. You will see a list of commits with messages such as:
    - `Add description to README`
    - `Add first notes file`
    - `Upload local-notes.txt`
    - `Update local-notes.txt` [web:27][web:32]
3. Click any commit to view:
    - Which files changed
    - What was added or removed

**Checkpoint:**
Students should recognize that each commit represents a “snapshot” of changes with a clear message describing what was done.

---

## 8. Recap – What you did using only the web

Without using any command line tools, you have learned to:

- Create a GitHub account
- Create a new repository with a README
- Edit existing files using the GitHub web editor
- Create new files and even new folders in the browser
- Upload files from your computer via the **Upload files** interface
- Write commit messages and view commit history

These are the essential skills needed to start using GitHub as a simple, cloud-based file and version manager. [web:32][web:34][web:35]

---

## 9. Suggested mini-exercises

If you want extra practice:

1. Create another folder, e.g., `docs`, and add a new file `docs/summary.md` using **Create new file**.
2. Upload a small image file (e.g., `diagram.png`) and observe how GitHub stores and shows it.
3. Edit `README.md` again to add links to your new files.

---

> Reflection question: If you were designing this for your students, which single action (creating a file, editing, or uploading) would you use as the **first hands-on task**, and why?

```
<span style="display:none">[^1][^10][^11][^12][^13][^14][^15][^2][^3][^4][^5][^6][^7][^8][^9]</span>

<div align="center">⁂</div>

[^1]: https://github.com/orgs/community/discussions/141724
[^2]: https://docs.github.com/en/repositories/working-with-files/managing-files
[^3]: https://www.youtube.com/watch?v=sD65M0V3YUs
[^4]: https://docs.github.com/en/repositories/working-with-files/managing-files/creating-new-files
[^5]: https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository
[^6]: https://ds-modules.github.io/curriculum-guide/workflow/pushing-to-github.html
[^7]: https://docs.github.com/en/repositories/creating-and-managing-repositories/quickstart-for-repositories
[^8]: https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files
[^9]: https://stackoverflow.com/questions/10318403/uploading-new-files-to-a-git-repository-directly-through-the-github-web-applicat
[^10]: https://docs.github.com/pages/quickstart
[^11]: https://stackoverflow.com/questions/77645787/how-to-edit-repository-in-github
[^12]: https://www.youtube.com/watch?v=pzxDVTz3CNM
[^13]: https://www.youtube.com/watch?v=-RZ03WHqkaY
[^14]: https://www.reddit.com/r/git/comments/16z29rr/new_to_git_how_to_edit_a_github_repo_locally/
[^15]: https://www.youtube.com/watch?v=tlu5e0TxSzo```

