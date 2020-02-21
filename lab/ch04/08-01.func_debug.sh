#!/bin/bash

DEBUG=true

if true ; then
  echo "Debug mode ON."
else
  echo "Debug mode OFF."
fi

$DEBUG && echo "Debug mode ON." || echo "Debug mode OFF."

