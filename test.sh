#!/bin/sh

XCODE_LIBS="$(xcode-select -p)/Toolchains/XcodeDefault.xctoolchain/usr/lib"

export DYLD_FRAMEWORK_PATH="$PWD/Rome:$XCODE_LIBS"
export DYLD_LIBRARY_PATH="$XCODE_LIBS"
xctester -FRome -F"$XCODE_LIBS" Source/SourceKittenFrameworkTests/*.swift
