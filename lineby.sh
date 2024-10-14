#!/bin/bash

read -p "Enter the number of lines you wanna print" NUM

$(head $(NUM) /etc/passwd)
