#!/bin/bash

for d in ../catkin_ws/src/*; do
    if [[ -d $d ]]; then
        if [[ -d $d/.git ]]; then
            echo
            echo "*** $d ***"
            echo
            cd $d
            git checkout master
            git pull upstream master
            git push
            cd ../../../scripts
        fi
    fi
done

echo
echo "*** documentation ***"
echo
cd ../documentation
git checkout master
git pull upstream master
git push
cd ../scripts


echo
echo "*** scripts ***"
echo
git checkout master
git pull upstream master
git push
