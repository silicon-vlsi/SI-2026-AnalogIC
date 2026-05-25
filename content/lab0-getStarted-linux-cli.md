<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" style="height:64px;margin-right:32px"/>

## Context and scope

The linked MakeUseOf article is a gentle “first steps” guide: open a terminal, learn how the shell prompt works, then practice a small set of navigation and file-manipulation commands like `pwd`, `ls`, `cd`, `mkdir`, `cp`, `mv`, `rm`, and simple redirection/pipes.[^1][^2][^3]

Below is a self-contained, step-by-step Markdown walkthrough that mirrors that style, so a beginner can follow it on any Ubuntu-like system.

***

## Step 0: Open the terminal

1. On Ubuntu or similar:
    - Press `Ctrl + Alt + T`, or
    - Search for “Terminal” in your application menu.[^2]
2. A window with a prompt like this appears:

```bash
username@hostname:~$
```

3. The `~` means “your home directory”.[^2]

***

## Step 1: Run your very first commands

1. Print a simple message:

```bash
echo "Hello, Linux"
```

2. See your current directory:

```bash
pwd
```

    - “Present Working Directory” – typically `/home/yourname`.[^3][^1]

Ask the learner: “What does `pwd` print on your system?”

***

## Step 2: List files and understand `ls`

1. List what’s in the current directory:

```bash
ls
```

2. Show more detail (permissions, size, date):

```bash
ls -l
```

3. Include hidden files (those starting with `.`):

```bash
ls -la
```

Hidden files often include configuration files like `.bashrc`.[^1][^3]

***

## Step 3: Move around with `cd`

1. Go to your home directory:

```bash
cd
```

2. Go into a subdirectory, e.g. `Documents`:

```bash
cd Documents
```

3. Go up one level:

```bash
cd ..
```

4. Return to the previous directory:

```bash
cd -
```

Use `pwd` after each `cd` to confirm where you are.[^3][^2]

***

## Step 4: Create directories with `mkdir`

1. Create a practice directory in your home:

```bash
cd
mkdir cli-practice
cd cli-practice
```

2. Make multiple directories at once:

```bash
mkdir dir1 dir2 dir3
```

3. Create nested directories:

```bash
mkdir -p parent/child/grandchild
```

`-p` ensures parent directories are created as needed.[^4][^1][^2]

***

## Step 5: Create, inspect, and delete files

1. Create empty files with `touch`:

```bash
touch file1.txt file2.txt
```

2. View files in the directory:

```bash
ls
```

3. Delete a file:

```bash
rm file2.txt
```

4. Delete an empty directory:

```bash
rmdir dir3
```

`rm` removes files, `rmdir` removes empty directories; be careful, as `rm` does not ask for confirmation by default.[^1][^3]

Ask: “What’s the difference between `rm` and `rmdir` in your own words?”

***

## Step 6: View file contents (`cat`, `less`)

1. Create a small text file using redirection:

```bash
echo "First line" > notes.txt
echo "Second line" >> notes.txt
```

    - `>` overwrites, `>>` appends to the file.[^3]
2. Display file contents:

```bash
cat notes.txt
```

3. View longer files with paging:

```bash
less notes.txt
```

    - Use arrow keys to scroll; press `q` to quit `less`.[^2][^1]

***

## Step 7: Copy and move files (`cp`, `mv`)

1. Copy a file:

```bash
cp notes.txt notes-copy.txt
```

2. Copy a file into a directory:

```bash
mkdir backups
cp notes.txt backups/
```

3. Move or rename a file:

```bash
mv notes-copy.txt notes-renamed.txt
mv notes-renamed.txt backups/
```

`mv` acts as rename when source and destination are in the same directory, and as move when the destination is another directory.[^1][^3]

***

## Step 8: Use wildcards (globs)

1. Create a few files:

```bash
touch log1.txt log2.txt log-final.txt data.csv
```

2. List only `.txt` files:

```bash
ls *.txt
```

3. List files starting with `log`:

```bash
ls log*
```

`*` matches any sequence of characters, making it easy to select groups of files.[^2][^3]

***

## Step 9: Get help with `man` and `--help`

1. View manual for a command:

```bash
man ls
```

    - Use arrows to navigate; press `q` to quit.[^5][^2]
2. Use the `--help` option:

```bash
ls --help
mkdir --help
```

These show a quick summary of options without leaving the shell.[^5]

***

## Step 10: Practice a tiny workflow

Ask the learner to perform this entire mini-exercise:

1. Go to home:

```bash
cd
```

2. Create a new working directory and enter it:

```bash
mkdir lab1
cd lab1
```

3. Create some files and directories:

```bash
mkdir src results
echo "Experiment 1" > src/exp1.txt
echo "Experiment 2" > src/exp2.txt
```

4. Copy one file to `results`:

```bash
cp src/exp1.txt results/
```

5. Verify with:

```bash
ls
ls src
ls results
```

6. View contents:

```bash
cat src/exp1.txt
cat results/exp1.txt
```


This mirrors the sort of simple file-organization flow many beginner guides aim for.[^3][^1][^2]

***

To adapt this for your own students, you could add a section on `history`, aliases, and simple shell scripts once they are comfortable with these basics. From your perspective, which part of this flow would you like expanded into a more formal lab-style exercise for undergraduates?
<span style="display:none">[^10][^11][^12][^13][^14][^15][^6][^7][^8][^9]</span>

<div align="center">⁂</div>

[^1]: https://www.digitalocean.com/community/tutorials/linux-commands

[^2]: https://ubuntu.com/tutorials/command-line-for-beginners

[^3]: https://www.freecodecamp.org/news/linux-command-line-tutorial/

[^4]: https://www.iamtimsmith.com/blog/getting-started-with-the-linux-cli

[^5]: https://www.osc.edu/content/linux-command-line-fundamentals

[^6]: https://www.studocu.id/id/document/universitas-islam-negeri-siber-syekh-nurjati-cirebon/islamic-broadcasting-communication/a-newbies-getting-started-guide-to-linux-make-use-of/115438995

[^7]: https://www.youtube.com/watch?v=avg65oY7sj4

[^8]: https://www.youtube.com/watch?v=iwolPf6kN-k

[^9]: https://www.youtube.com/watch?v=16d2lHc0Pe8

[^10]: https://www.youtube.com/watch?v=cBokz0LTizk

[^11]: https://fs-net.de/assets/download/docu/common/en/AdvicesForLinuxOnPC.pdf

[^12]: https://www.youtube.com/watch?v=YHFzr-akOas

[^13]: https://www.youtube.com/watch?v=16d2lHc0Pe8\&vl=en

[^14]: https://www.academia.edu/25807079/Beginning_the_Linux_Command_Line

[^15]: https://www.youtube.com/watch?v=QhvDvpyvPSE

