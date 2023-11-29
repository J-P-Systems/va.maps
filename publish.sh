#!/bin/bash
echo "Clean..."
rm fsh/*
rm -r docs/*
echo "Copy new content..."
cp ../jpsys-maps-ig-sushi/input/fsh/* fsh
cp -r ../jpsys-maps-ig-sushi/output/* docs
echo "Update git repo..."
git add docs
git commit -a -m "new version"
echo "Push to git repo..."
git push
