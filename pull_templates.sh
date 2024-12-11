#!/bin/bash

rm -rf godot/_engine
mkdir godot/_engine
cd godot/_engine

echo "Downloading Linux Engine (ARM64)"
curl -L -# -O https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.arm64.zip

echo "Extracting Linux Engine (ARM64)"
unzip -o -q Godot_v4.3-stable_linux.arm64.zip

echo "Downloading Linux Engine (x86_64)"
curl -L -# -O https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip

echo "Extracting Linux Engine (x86_64)"
unzip -o -q Godot_v4.3-stable_linux.x86_64.zip

echo "Downloading Windows Engine"
curl -L -# -O https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_win64.exe.zip

echo "Extracting Windows Engine"
unzip -o -q Godot_v4.3-stable_win64.exe.zip

echo "Downloading macOS Engine"
curl -L -# -O https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_macos.universal.zip

echo "Extracting macOS Engine"
unzip -o -q Godot_v4.3-stable_macos.universal.zip

echo "Downloading export templates"
curl -L -# -O https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_export_templates.tpz

echo "Extracting export templates"
unzip -o -q Godot_v4.3-stable_export_templates.tpz

