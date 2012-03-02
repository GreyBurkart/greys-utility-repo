# Grey's Utilities Repo

## Alfred Extensions
* **Backup Dropbox > USB.alfredextension** -- Make sure to edit the path for your own setup. This backs up the ~/Dropbox folder to a USB key using rsync; I found this easier than running the shell script from another location
* **Git Pull.alfredextension** -- Folder action, does what it says and outputs into _growlnotify_
* **Git Status.alfredextension** -- Another folder action that just does what it says, also requires _growlnotify_
* **newtxt.alfredextension** -- A quick way to create a new text file on the desktop
* **Screenshadow Toggle.alfredextension** -- Toggles the absolutely _massive_ window shadow in Lion screen shots (cmd+shift+4, space, click). Based on "Desktop Toggle" by David Ferguson
* **Desktop Declutter** -- Moves all Desktop contents into a 'dClutter' folder (AppleScript)
* **Clean up broken text** -- Strips newlines from pasteboard text, good for copy-pasting from emails with hard line-breaks (not really my AppleScript code)

## AppleScripts

* **CurrentDate.scpt** -- Inserts current date into text; created for someone with WriteRoom and without TextExpander
* **RemoveAllTags.scpt** -- Removes any and all @tags from the active TaskPaper document. _Note: This is destructive, and each tag counts as 1 step in the undo stack!_
* **Sync iDevices.scpt** -- Simply tells iTunes to sync a connected iOS device; handy for launch services like AlfredApp
* **DoneDateStamp.scpt** -- Alternative date-stamp for @done tags in TaskPaper
* **RemoveWeekTagFromDone.scpt** -- Does exactly what it says to the TaskPaper archive for cleaner and faster search views
* **NextWeekSwap** -- Replaces all @next tags with @week in TaskPaper. _Note: Same undo stack caveat as RemoveAllTags.scpt!_ 
* **WeeklyReviewSwap.scpt** -- Combines _ReviewWeekTagFromDone_ and _NextWeekSwap_ into a single process in that order, and also removed @flag from @done (in Archive).

## Automator Workflows

* **Convert-folder-to-UTF8.workflow** -- Drop a folder of text files on this to re-encode them all to UTF-8
* **TaskPaperMerge.workflow** -- Drop a folder of *.taskpaper files on this to combine them into a single document
* **Drag Folder Here to Remove Conflicted Copies** -- Drop a Dropbox sync folder on this to move all conflicted copies to a folder "Conflicted Cleanup" on the desktop
* **TaskPaper-EnableResume** -- User utility to selectively enable Lion Resume for TaskPaper only

## Shell Scripts

* **pert.sh** -- Simple PERT calculator for rough work estimates
* **hkdflow-init.sh** -- Initialize a git repo / directory for HKDFlow methodology
* **praxis-init.sh** -- Initialize a git repo / directory for Praxis Projects
* **mdcv** -- Proof-of-concept markdown to pdf workflow for generating nice and simple CVs

## Misc

* **GreysTasks.taskpapertheme** -- What I've been using for a TaskPaper theme recently; pay attention to the special tags