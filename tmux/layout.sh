#!/bin/bash
# 
tmux rename-window -t 0 'Playground'

# Create and Name the DAQ windows
tmux neww
tmux rename-window -t 1 'MIDAS-DAQ'
# Spliting the windows in four Pane
tmux splitw -h -p 50 -t 0 -c '#{pane_current_path}'  
tmux splitw -v -p 50 -t 0 -c '#{pane_current_path}'  
tmux splitw -v -p 50 -t 1 -c '#{pane_current_path}' 

# open a new windows with for the CAEN HV power supply
tmux neww
tmux rename-window -t 2 'CAEN HV' 

# reopen main windows
tmux select-window -t 1

# execute command in each pane
# minicom command to look at NNLX1 via com port
tmux select-pane -t 0 
tmux send-keys "minicom" C-m
# Start the MIDAS Session
tmux select-pane -t 1 
tmux send-keys "MIDAS64-session" C-m
# Start the tape Server
tmux select-pane -t 2 
tmux send-keys "/MIDAS/TapeServer/Linux64/master" C-m
## regular terminal, go to the data folder
tmux select-pane -t 3 
tmux send-keys "cd /space/TapeData/EXPT1" C-m
tmux send-keys "ls -rtlh" C-m
#Caen HV telnet connection
tmux select-window -t 2
tmux send-keys "echo caen" C-m
#
# reopen main windows
tmux select-window -t 1
