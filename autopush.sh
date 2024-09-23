#!/bin/bash

# Define the date for the commit (format: YYYY-MM-DD HH:MM:SS)
# You can change the date here to any previous date
commit_date="2024-01-01 12:00:00" : "2024-08-08 12:00:00"

# Navigate to your Git repository
#cd /path/to/y

# Create or modify a file (this example adds a line to 'auto_commit_log.txt')
echo "Auto-commit on $commit_date" >> auto_commit_log.txt .

# Stage the file for commit
git add .

# Set the commit date and make the commit with a custom message
GIT_AUTHOR_DATE="$commit_date" GIT_COMMITTER_DATE="$commit_date" git commit -m "Backdated commit on $commit_date"

# Push the commit to the remote repository
git push origin main