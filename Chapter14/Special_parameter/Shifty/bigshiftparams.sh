#!/bin/bash
# Shifting multiple positions through the parameters
# Using the shift command , skips over parameters you dont need in situations 
echo
echo "The original parameters: $*"
echo "Now shifting 2..."
shift 2
echo "Here's the new first parameter: $1"
echo
exit