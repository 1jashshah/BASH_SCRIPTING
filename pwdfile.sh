#!/bin/bash

function file_count(){

local fc=$(ls -l | grep "^-" | wc -l)
echo "$fc"
}
file_count
