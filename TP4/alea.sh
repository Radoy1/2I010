#!/bin/bash

M="0123456789"
echo ${M:$(($RANDOM%${#M})):1}