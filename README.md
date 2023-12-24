# shell-scripting

## changes

# Initialize the local directory as a Git repository.
git init

# Add files
git add .

# Commit your changes
git commit -m "First commit"

# Add remote origin
git remote add origin <Remote repository URL>
# <Remote repository URL> looks like: https://github.com/user/repo.git

# Verifies the new remote URL
git remote -v

git pull <repo url> main
git pull origin main --allow-unrelated-histories
git push --set-upstream origin main
git add .
git commit -m "changes added"
git push