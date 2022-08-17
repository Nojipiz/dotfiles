#!/bin/bash
WHEREAMI=$(cat /tmp/whereami)
i3-sensible-terminal --working-directory="$WHEREAMI"
