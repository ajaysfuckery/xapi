#!/usr/bin/env bash

packages=(
	"sublime-text-4"
	"visual-studio-code-bin"
	"intellij-idea-community-edition"
	"jdk11-openjdk"
	"jre11-openjdk"
	"jre11-openjdk-headless"
	"kotlin"
	"python"
	"python-pip"
	"tk"
	"tcl"
	"jdk17-openjdk"
	"jre17-openjdk"
	"jre17-openjdk-headless"
	"atom"
	"spotify"
	"spotify-adblock-git"
	"gimp"
	"libreoffice-fresh"
	"onlyoffice-bin"
	"galculator"
	"deezer"
	"arcolinux-hblock-git"
)

packages2=(
	"variety"
	"qbittorrent"
	"pragha"
	"peek"
	"discord"
	"gitahead-bin"
	"vivaldi"
	"chromium"
	"guvcview"
)

for x in ${!packages2[@]}; do
	sudo pacman -Runs ${packages2[$x]}
done

sudo pacman -Syyu

for i in ${!packages[@]}; do
	sudo pacman -S ${packages[$i]}
done