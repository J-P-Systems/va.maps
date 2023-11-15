#!/bin/bash
rm fsh/*
cp ../jpsys-maps-ig-sushi/input/fsh/* fsh
rm -r docs/*
cp -r ../jpsys-maps-ig-sushi/output/* docs
git add docs
git commit -a -m "new version"
git push
