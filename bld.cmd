@echo off

rem Build RenderTablePlugin for TiddlyWiki5

tiddlywiki .\RenderTablePluginWiki --verbose --build || exit 1

Read-Host