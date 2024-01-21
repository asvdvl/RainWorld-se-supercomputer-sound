#!/bin/bash

cd ..
rm ./RainWorld-se-supercomputer-sound_0.3.0.zip
zip -r ./RainWorld-se-supercomputer-sound_0.3.0.zip ./RainWorld-se-supercomputer-sound -x "*.git/*" "*.7z" "*.aup3" "*.kra" "*.sh" "*.gitignore"
cp ./RainWorld-se-supercomputer-sound_0.3.0.zip ~/.factorio/mods/