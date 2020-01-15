#!/bin/bash
# arithmetic calculator supporting float point
prompt="> "
echo -n "$prompt"
read equation
echo $(echo "scale=4; $equation" | bc)
