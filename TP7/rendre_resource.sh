#!/bin/bash

read a < $1
echo $(($a+1)) > $1
