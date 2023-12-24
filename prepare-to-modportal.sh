#!/bin/bash

rm ./RainWorld-se-supercomputer-sound_0.2.1.zip
cd ..
zip -r ./RainWorld-se-supercomputer-sound_0.2.1.zip ./RainWorld-se-supercomputer-sound -x "*.git/*" "*.7z" "*.aup3" "*.kra" "*.sh" "*.gitignore"