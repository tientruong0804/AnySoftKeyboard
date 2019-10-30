#!/usr/bin/env bash

RELEASE_BUILD=${1}
GITHUB_REF=${2}
export ANYSOFTKEYBOARD_CRASH_REPORT_EMAIL=${3}
KEYSTORE_FILE_URL=${4}
export ANYSOFTKEYBOARD_KEYSTORE_PASSWORD=${5}
export ANYSOFTKEYBOARD_KEYSTORE_ALIAS=${6}
export ANYSOFTKEYBOARD_KEYSTORE_KEY_PASSWORD=${7}
PUBLISH_CERT_FILE_URL=${8}
export PUBLISH_APK_SERVICE_ACCOUNT_EMAIL=${9}

export BUILD_COUNT_FOR_VERSION=$( git rev-list --count ${GITHUB_REF} )

echo "Counter is ${BUILD_COUNT_FOR_VERSION}, RELEASE_BUILD: ${RELEASE_BUILD}, and crash email: ${ANYSOFTKEYBOARD_CRASH_REPORT_EMAIL}"
./scripts/ci/ci_deploy.sh ${RELEASE_BUILD} ${KEYSTORE_FILE_URL} ${PUBLISH_CERT_FILE_URL}