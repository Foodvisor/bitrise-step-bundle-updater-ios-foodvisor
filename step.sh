#!/bin/bash
set -ex
git clone git@github.com:Foodvisor/bundle_updater.git
xcodebuild -project bundle_updater/bundle_updater.xcodeproj -configuration Release
mv bundle_updater/build/Release/bundle_updater $BITRISE_SOURCE_DIR
$BITRISE_SOURCE_DIR/bundle_updater -env "${env}" -version "${version}" -token "${token}"