How does tracking and adding changes make developers' lives easier?
Tracking and adding changes with git is vital to most developers workflow.  It enables developers to be on the same page with one another and ultimately cultivates a better team environment.  It saves time and thus money by making sure everyone is keeping their hands out of other peoples work until it is ready to be seen and viewed by others.  

What is a commit?
A commit is taking files and folder that had been staged and adding them to the HEAD.  They are basically save points for any files you are tracking with git.  

What are the best practices for commit messages?
Keep them short, but pointed.  They should read like commands.  Detail exactly what you did.  

What does the HEAD^ argument mean?
It basically means "the last commit"

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages are initializing or cloning a respository.  git init or git clone sshURL
Adding a file to the staging portion.  git add *file/dir name*
Commit.  This takes all the changes that were staged to the head and saves them as a "snapshot".  git commit -m "message here"

Write a handy cheatsheet of the commands you need to commit your changes.
git add
git status
git commit -m "message here"
git push origin branch_name
What is a pull request and how do you create and merge one?
Pull requests are how you get changes made from one branch onto another branch (like the master branch!).
You can create one by going to github.com and selecting the branch you'd like to merge into the master branch.  There is a green button labeled "create pull request".  Just hit thats and then hit "confirm" and voila!  You will probably want to delete the old branch to avoid clutter.

Why are pull requests preferred when working with teams?
Pull requests give time for other people to review your code and how it will interact with the master branch.  It's an opportunity to double check your work with extra pairs of eyes and other minds to make sure you don't accidently have negative consequences from doing the merge manually.