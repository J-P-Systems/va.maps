#!/bin/bash
# Update gh-pages
echo "Clean..."
rm -r docs/*
mkdir docs/fsh
echo "Copy new content FSH input files..."
cp -r ../va-fhir-cop-mapset-ig/input/fsh/* docs/fsh
echo "Copy new content IG publisher output..."
cp -r ../va-fhir-cop-mapset-ig/output/* docs
for i in `find docs  -size +25M`; do rm $i; done
echo "Commit to git repo..."
git add docs
git commit -a -m "new version"
echo "Push to git repo..."
git push
