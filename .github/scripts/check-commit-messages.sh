#!/usr/bin/env bash

REGEX_NORMAL="(feat|fix|docs|style|refactor|perf|test|chore|ci|revert|misc)(\(.+\))?:.{1,68}"
REGEX_MERGE_FROM="Merge pull request #[[:digit:]]{1,10}( from .*)?"
REGEX_MERGE_INTO="Merge branch \'.*\'( into .*)?"
REGEX="^${REGEX_NORMAL}|${REGEX_MERGE_FROM}|${REGEX_MERGE_INTO}$"

echo

fail=$(git show -s --format=format:'%s' "$@" | grep -v -E "${REGEX}")

echo "$fail"

if [[ $fail ]]
then
    echo ""
    echo "Above ↑ commits don't conform to commit message format:"
    echo "https://github.com/jongwooo/gatsby-cache/blob/main/.github/CONTRIBUTING.md#commit-message-rules"
    echo ""
    echo "Please fix."
    exit 1
fi
