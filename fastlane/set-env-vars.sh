#!/bin/bash

VERSION_TAG=$(echo "${GITHUB_REF}" | cut -d "/" -f3)
NEW_VERSION=${VERSION_TAG:1}
echo NEW_VERSION="$NEW_VERSION"
xcrun agvtool new-version "$NEW_VERSION"
sed -i '' "s#MARKETING_VERSION \= [^\;]*\;#MARKETING_VERSION = $NEW_VERSION;#g" LastDram.xcodeproj/project.pbxproj
sed -i '' "s#REPLACE_ME_WITH_API_URL#$API_URL#g" LastDram/EnvironmentVariables.swift
sed -i '' "s#REPLACE_ME_WITH_API_KEY#$API_KEY#g" LastDram/EnvironmentVariables.swift
