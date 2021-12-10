#!/bin/sh

ls -l

sed -i  's/version/1.1.1/g' ./1.txt
ls -l
cat ./1.txt
