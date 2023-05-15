#!/bin/bash

IFS=',' read -r first second <<< "$myvar"
echo $first
echo $second

