#!/bin/bash
cat >my-artifact.json <<EOF
GO_REVISION_TAG: $GO_FROM_REVISION_GIT
EOF
