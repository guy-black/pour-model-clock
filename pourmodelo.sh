#!/bin/bash
#
# pourmodelo clock - a pomodoro clock that also reminds you to have a beer when your done.
#
# important variables
## work is the workspace your work is in
work=0;
## play is the workspace your break is in
play=6;
## work time minus warning buffer
wrkTime="24.5m"
## break time minus warning buffer
brkTime="4.5m"
## buffer between warning and screen switch
buffer=".5m"
## how many cycles to do
cycles=8
# notificaton functions
## modelo time foo
modeloTime () {
    zenity --notification --text="day's almost done!"
    sleep $buffer
    wmctrl -s $play
    zenity --notification --text="it's modelo time foo!"
}
## end break
endBreak () {
    zenity --notification --text="break time's almost up, get ready to get back to it"
    sleep $buffer
    zenity --notification --text="BACK TO THE LABOR MINES!"
    wmctrl -s $work
    sleep $wrkTime
    endWork
}
## end work
endWork () {
    if [ "$cycles" -le "1" ]
      then modeloTime
    else
    zenity --notification --text="save your work it's almost break time"
    sleep $buffer
    zenity --notification --text="break time!"
    wmctrl -s $play
    cycles=$(( cycles - 1 ))
    sleep $brkTime
    endBreak
 fi
}
## on timer start
zenity --notification --text="do something useful!"
wmctrl -s $work
sleep $wrkTime
endWork;

