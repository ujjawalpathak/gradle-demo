#!/usr/bin/env bash
cat >data <<EOF
GO_IMAGE_TAG=$GO_REVISION_GIT
echo $GO_IMAGE_TAG
EOF
