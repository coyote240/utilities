#!/bin/bash

PLIST='/System/Library/LaunchDaemons/com.apple.metadata.mds.plist'

# Turn off Spotlight
mdutil -a -i off

# Unload it
launchctl unload -w $PLIST

# Load it
launchctl load -w $PLIST

# Turn on Spotlight
mdutil -a -i on
