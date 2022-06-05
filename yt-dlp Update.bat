echo off

for /f "usebackq delims=" %%A in ("0_Variables.txt") do %%A

%update%