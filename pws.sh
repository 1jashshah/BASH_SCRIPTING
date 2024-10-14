#!/bin/bash

function file_count(){

local count=$(ls -l | grep "^-" | wc -l)

echo "$count"

}

file_count
