
- Seems like the working directory is what you are working on before stage or even commit .

- To check differences with the working directory: #And what is working to staged
    - git diff
    - git diff --cached
    - git diff head

- git rm <file>
- git rm --cached 

- git reset and git reset --hard
  - The difference is that normal reset (--mixed) will reset the staging area 
    but --hard will act also on the working directory (things not staged yet) will be 
    removed .


- git restore could be used to restore single files . Check the different variants
  - From staging
  - From working directory 

- git reset can be used with specif commits: It's variants are about what happens to
  - staging area      --mixed > will reset
  - working directory --hard  > will also reset (Very dangerous)

- A tag is a good way to refercene a commit
  - We can also have annotated tags with metadata

- This will also push tags if needed 
  - git push --tag

- git checkout: Multi-purpose, can switch branches and check out files.

- Delete branch: git branch -d branch1

- Fast-Forward vs. No Fast-Forward:
   - Fast-Forward: A clean, linear history, no extra commit.
   - No Fast-Forward: A merge commit is added, reflecting the branching structure.

- Check more on rebase
- 2:10:55 VScode git integration