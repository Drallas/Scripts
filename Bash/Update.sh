#!/bin/sh

# Old way to update Homebrew before i knew about the Brewfile

now=$(date +"%D %T")
BrewPAth="/opt/homebrew/bin"

echo "$now : Starting update"
$BrewPAth/brew update
echo "update done"
echo "------------------"

echo "$now : Starting upgrade"
$BrewPAth/brew upgrade
echo "upgrade done"
echo "------------------"