#!/bin/bash
echo "Clean..."
rm fsh/*
rm -r docs/*
echo "Copy new content FSH input files..."
cp ../jpsys-maps-ig-sushi/input/fsh/* fsh
echo "Copy new content IG publisher output..."
cp -r ../jpsys-maps-ig-sushi/output/* docs
for i in `find docs  -size +25M`; do rm $i; done
echo "Commit to git repo..."
git add fsh 
git add docs
git commit -a -m "new version"
echo "Push to git repo..."
git push
