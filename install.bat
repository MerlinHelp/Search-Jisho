@echo off
powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0add_to_startup.ps1"

powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0create_shortcut.ps1"