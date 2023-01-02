if [[ $(<solution.txt) == "k8s-goat-ca90ef85db7a5aef0198d02fb0df9cab" ]]; then
    exit 0
else
    exit 1
fi