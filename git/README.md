# Git notes


- Git is a Version Contrl System that allows multiple users to collaborate on projects, tracking changes
- Provides history of changes and allows users to manage different branches and merge changes efficiently
- allows developers to roll back to previous versions
- 


## Branching & Merging

- Git enables developers to work on dfferent parts of a project at the same time, so developers can work at the same time without intefering
- developers can create their own branch and start working and later merge their work to the main branch
-

## README.md file

- Provides detailed overview of project
- Explains what project is about 
- First document user sees

## Editing changes into Git

### Rebasing & Force changing:

- Maintains linear project history 
- 
- ```git push --force-with-lease``` This is good practice as it adds a safety layer
- Checks if remote branch has been updated after last fetch.

### Squashing Commits
- Combines multiple commits into single commit
- Simpler and cleaner history
- Easier to review changes 

# Good Practices
- ``` git pull``` before making changes
- Commit frequently so you can understand where problems arise
