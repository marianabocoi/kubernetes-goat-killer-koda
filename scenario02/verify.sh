if [[ "$(<solution.txt)" == "sha256:f54a58bc1aac5ea1a25d796ae155dc228b3f0e11d046ae276b39c4bf2f13d8c4" ]]; then
    exit 0
else
    exit 1
fi