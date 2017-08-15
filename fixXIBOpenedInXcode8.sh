#!/bin/bash

function delXcode8Tag() {
  xib=$1
  sed -i "" '/saved in the Xcode 8 format/d' $xib  
}

xibs=`find . -name *.xib`
for xib in $xibs;do
echo "Fix $xib"
delXcode8Tag $xib
done
