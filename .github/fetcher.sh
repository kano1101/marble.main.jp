#!/bin/bash

curl -sLJO -H 'Accept: application/octet-stream' \
    "https://$GITHUB_TOKEN@api.github.com/repos/kano1101/recipe_note/releases/assets/$( \
      curl -sL https://$RECIPE_NOTE_TOKEN@api.github.com/repos/kano1101/recipe_note/releases/tags/v${1} \
        | jq '.assets[] | select(.name | contains("Mac")) | .id')"
