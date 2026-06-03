#!/bin/zsh

cd ~/ece327-w25/labs-admin/lab2
for classlist in ~/ece327-w25.csv ~/ece627-w25.csv
do
  ~/workspace/gitlab-assignments/create-classlist-commit.sh lab2 $classlist ece327-w25/labs 
  ~/workspace/gitlab-assignments/add-classlist.sh lab2 $classlist ece327-w25/labs 
done

