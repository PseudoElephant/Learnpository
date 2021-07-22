#!/usr/bin/env bash

commits_behind=`git log  --oneline --no-merges "origin/master..HEAD" -- | wc -l | xargs`
if [ $commits_behind -gt 5 ];
then 
    echo "This branch is ${commits_behind} behind master. Please sync it."
    exit 1
fi

commit_titles=`git log --no-merges --format="%s" "origin/master..HEAD" --`

# Check Title
while IFS= read -r title;
do
    if [ ${#title} -gt 50 ]; then
        echo "Title is too long. (Greater than 50 ch)"
        exit 1
    fi
done <<<"$commit_titles"
