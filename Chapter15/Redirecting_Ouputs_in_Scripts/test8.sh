#!/bin/bash
# tesing STDERR messages

echo "This is an error" >&2 # sending output to all STDERR
echo "This is normal output"