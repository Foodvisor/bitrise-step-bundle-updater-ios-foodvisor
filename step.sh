#!/bin/bash
set -ex
git clone git@github.com:Foodvisor/bundle_updater.git
xcodebuild -project bundle_updater/bundle_updater.xcodeproj -configuration Release
bundle_updater/build/Release/bundle_updater -env "${env}" -version "${version}" -mail "${mail}" -password "${password}"