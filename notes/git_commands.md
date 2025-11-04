# Git Commands

##Summary

This Document is for git commands that will be useful for class.

###Basic Commands

**git status** = checking the curent state of local repository

**git add <filename>**= Adds the file to be included for your repo
    Ex. git add file1.sh

**git add .** = Adds all the files and lines that are new for the repo

**git commit -m "<message>"**= Adds new commit message for the new files and lines
    EX. git commit -m "Adding files"

**git push** = Push all new commits

**git push origin <branch name>** = updatese our repo with all your new changes

#### If changes are made on the guthub repo instead of the local repo

Any changes made up there need to reflect your local repository. If there's any diffefernces, you will run into merge conflicts

**git fetch origin** = Checks al the updates from the origin remove but does not automaticaly merge the new changes

**git pull origin** = fetches updates merges then into your local repo
