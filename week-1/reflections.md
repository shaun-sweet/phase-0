1.1 Think About Time Reflection
Most of the time management and productivity ideas I knew about prior.  One that was new was the “Pomodoro” technique.

Time boxing is a strategy that is incorporated in the Pomodoro technique.  It is basically the idea that you will set aside a certain amount of time to do only one, or a group of things, and only those things.  I can use that to make seemingly endless work broken into bite sized chunks and see measurable, consistent progress.

Honestly? I suck at managing my time because I am not in a role that really requires that of me.  Basically, I don’t.  I look forward to developing this skill.

Well, yes it works because I don’t really need to do it.  Until now.

No, haha, using my strategies now will result in stressing me out and making this much much harder than it needs to be.

My overall plan is to use trello to track things that need to be researched/done and basically have something that needs to be done as a “card” at all times so that any downtime I have, I can be working towards my career.  I will definitely be employing some mindfulness techniques I read about.  I especially like the idea of meditation being tiny bits of practicing getting back on track.  Anyone who knows me knows I am easily distracted :P


1.2 The Command Line Reflection
A shell is a command line interaface.  It is interactive, meaning you give it input, and it gives you a response immediately.  Bash is a type of shell.  Basically a flavor of command line language.

I have decent exposure to most of these commands.  That said the most challenging part was trying to understand and predict what the pipes and redirects would do before hitting enter.

I think that the most basic commands are “the most important” simply because you will end up using them the most and knowing the fancy ones isn’t really vital if you don’t have a good strong foundation.  So commands like ls, pwd, rm, touch.  I also am a big grep fan due to my background.

i had some trouble with find.  I used it and it worked and did what was expected.  I just didn’t understand why it had options/arguments like -name or -print in there.  It wasn’t explained on the website.  When I learned about “man” though I could see the breakdown of how bash wants that command.  That was a bit complex, however.

pwd - Print working directory.  It tells you which directory you are currently in

ls - shows you the contents of the directory you are in

mv - renames a file/directory

cd - changes your directory to whatever you specify

../ - is shorthand for “the directory above”.  above means whatever context it is used in.

touch - makes a new file.  touch *name of file*

mkdir - makes a directory. mkdir *name of dir*

less- shows you the end of the contents of a file.  great for checking logs that log the newest entry at the bottom of the file.

rmdir - removes a directory.  it cannot have any contents in it.  on mac if you open a directory in finder (the gui version of browsing files/directories) it automatically puts a file called .DS_Store which holds the preferences for finder about that particular directory there and will cause you to not be able to remove the directory because now it has an item in that directory.  you have to remove this hidden file first before this command will work in those instances.  I had to research this to figure this out.

rm - removes a file.  you can also remove directories.

help - brings up a list of common commands and how to use them.



1.4 Forking and Cloning Reflection 

I guess it would depend on their computer knowledge prior to me showing them. Assuming a decent proficiency though:
Go to your github.com profile and click the green “New repository” button, name it.
Fork: Navigate to a repository on github and click the fork button on the right, it’ll ask where you want to fork it to, select your github profile.
Clone: Go to the repository and you’ll see the URL at the top, copy that.  Then type in on CLI git clone *URL.git*

Not a whole lot to be honest.  To be fair I have done this before I started 😛
I remember when I first learned though.  Commit and push confused me.  I was confused by you would need to add, then commit, then push.  It felt like an extra step at the time. 