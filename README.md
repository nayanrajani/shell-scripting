# shell-scripting

## Resources

- https://www.geeksforgeeks.org/introduction-linux-shell-shell-scripting/

- https://www.tutorialspoint.com/unix/shell_scripting.htm

- https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux/

- https://www.shellscript.sh/

## Grafana

- https://sbcode.net/grafana/

## waht is #!?

- Shebang

## Initialize the local directory as a Git repository

git init

## Add files

git add .

## Commit your changes

git commit -m "First commit"

## Add remote origin

git remote add origin {Remote repository URL}

## {Remote repository URL} looks like: {<https://github.com/user/repo.git}>

## Verifies the new remote URL

git remote -v

git pull {repo url} main
git pull origin main --allow-unrelated-histories
git push --set-upstream origin main
git add .
git commit -m "changes added"
git push

## Remove a git repo init

rm -rf .git

## change local branch name to main

git branch -m main
