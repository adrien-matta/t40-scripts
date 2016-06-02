#!/bin/bash
# Naming the DAQ windows
tmux rename-window -t 0 'MIDAS-DAQ'

# Spliting the windows in four Pane
tmux splitw -h -p 50 -t 0 -c '#{pane_current_path}'  
tmux splitw -v -p 50 -t 1 -c '#{pane_current_path}'  
tmux splitw -v -p 50 -t 0 -c '#{pane_current_path}' 

# open a new windows with for the CAEN HV power supply
tmux neww
tmux rename-window -t 1 'CAEN HV' 

# reopen main windows
tmux select-window -t 0

# execute command in each pan 
./command.sh
