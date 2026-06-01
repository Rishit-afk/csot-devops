#!/bin/bash
find "$1" -type f -print0 | xargs -0 sed -i 's/\t/    /g'