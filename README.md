#pomodoro clocks have been done to death

so here's one that reminds you when the study/work is done and it's officially Modelo (or whatever your favorite beer is) Time


#important variables    
work is the workspace your doing your work in (note this is 0 indexed.  if your workspaces are numbered 1 through 10 and your usually on 1 and 7 then you're on 0 and 6 here)
play is the workspace for your fun relax stuff
wrkTime is how long to work for minus the warning buffer time
brkTime is how long to rest for minus the warning buffer time
buffer is how long of a warning buffer to have before changing screens
cycles is number of times to do work

#TODO
-allow the important variables to be passed in at the command line
-allow for varying length breaks (ie, every 4th break is 20 minutes instead of 5)
