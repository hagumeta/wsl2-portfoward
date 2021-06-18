#!/bin/bash


PORT=$1

netsh.exe interface portproxy delete v4tov4 listenport=${PORT}