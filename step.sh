#!/bin/bash
set -ex
rm -rf bundle_updater
git clone git@github.com:Foodvisor/bundle_updater.git
xcodebuild -project bundle_updater/bundle_updater.xcodeproj -configuration Release
clear
mv bundle_updater bundle_updater2
mv bundle_updater2/build/Release/bundle_updater .
rm -rf bundle_updater2
./bundle_updater -env "${env}" -version "${version}" -token "${token}"