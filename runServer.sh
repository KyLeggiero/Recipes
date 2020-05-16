#!/bin/bash

bundle check
bundleCheckStatus=$?

if [ 0 -ne $bundleCheckStatus ]; then
    echo "Updating Ruby gems.."
    source updateGems.sh
fi

# jekyll serve --trace --incremental
bundle exec jekyll clean
bundle exec jekyll serve --trace --incremental --safe
