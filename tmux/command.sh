#!/bin/bash
# execute command in each pane
# minicom command to look at NNLX1 via com port
tmux select-pane -t 0 
echo panel0
# Start the MIDAS Session
tmux select-pane -t 1 
echo panel1 
# Start the tape Server
tmux select-pane -t 2 
echo panel2
# regular terminal, go to the data folder
tmux select-pane -t 3 
echo panel3      

tmux select-window -t 1
echo CAENHV

# reopen main windows
tmux select-window -t 0
