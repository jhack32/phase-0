# 1.5 Tracking Changes Reflection

## Questions:

- How does tracking and adding changes make developers' lives easier?

Tracking/adding helps developers tremendously because they're able to see what the process was to get to where it is now. It also allows them to go back to their previous changes if they ever needed to.

- What is a commit?

A commit is a short note that follows every change. It summarizes what was done to the file(s).

- What are the best practices for commit messages?

The best practices for commit messages would be to keep a maximum of 75 words. If able, 50 words or less would be the best. It would also be good to have spaces after every title/paragraph. The first line should be a concise summary of the changes in the commit. The message should be in the imperative. For example, "Change header" would be better than "Changed Header"

- What does the HEAD^ argument mean?

The HEAD^ argument is the last commit.

- What are the 3 stages of a git change and how do you move a file from one stage to the other?

The 3 stages of a git change are git add, git commit, and git push. Git add helps git know which file you want to add. Then, you use git commit to leave a note on what was done in the files you added. After that you can push it onto github where it'll contain the file changes and the commit message.

- Write a handy cheatsheet of the commands you need to commit your changes?

git status (see what's going on, what needs to be added)
git add (add's the file)
git commit -m "" (allows you to enter a message between the quotes about what was changes were made)
git commit -v (opens up a file for you to write what changes were made)

- What is a pull request and how do you create and merge one?

A pull request helps match up the files on GitHub with your locally stored version. You would first need to be on a branch other than master. After that you push to the branch. After that you go on your repo through the GitHub.com website. Once you're there, it should have a 'compare and pull request' button. After you click that, you should make sure your base fork is set to your own repo. If you can't find your name then you can change it through the url link by just changing it to your own username. After that you click on create pull request then merge pull request.

- Why are pull requests preferred when working with teams?

This keeps the changes that someone has made perviously up to date with their own copy. A team member would be able to get the changes another team member made and work from there. It keeps everyone working on the same copy and updates their copies with the changes other members have made.

## Reflection

It's interesting to work on different branches because I'm able to make changes to the files without affecting the original repo. After I'm done making changes and feel like everything is right, I can merge it with the original repo. I can see the importance of having a branch to work on rather than merging it straight to the master branch. What i did was:
 create a new branch -> add new file to branch -> make change to file -> commit -> make another change -> commit -> IF done -> push -> then go on repo on github website -> compare and merge -> confirm -> delete branch -> go back to terminal and checkout to master -> pull -> merge