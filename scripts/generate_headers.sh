#!/bin/bash
if [[ "$1" == "3.x" ]];
then
    cd ./godot && \
        ./../scripts/timeout scons platform=iphone target=release_debug
else
    # Godot 4.x uses different target names
    cd ./godot && \
        ./../scripts/timeout scons platform=ios target=template_release
fi
