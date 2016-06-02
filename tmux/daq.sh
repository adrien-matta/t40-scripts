#!/bin/bash
# check for existing session
tmux attach -t t40daq
if [ $? == '1' ]
then
  tmux new -s t40daq './layout.sh'

fi
