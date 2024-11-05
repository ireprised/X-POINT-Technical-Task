#!/bin/bash

# Function to display help message
function show_help {
    echo "Usage: $0 -n <base_name> -s <number_of_instances>"
    echo "  -n  Base name for the created artifacts (e.g., awesome)"
    echo "  -s  Number of instances for the ASG (e.g., 3)"
    echo "  -h  Show this help message"
}

# Initialize variables
BASE_NAME=""
INSTANCE_COUNT=0

# Parse command-line options
while getopts ":n:s:h" opt; do
    case ${opt} in
        n )
            BASE_NAME=$OPTARG
            ;;
        s )
            INSTANCE_COUNT=$OPTARG
            ;;
        h )
            show_help
            exit 0
            ;;
        \? )
            echo "Invalid option: $OPTARG" 1>&2
            show_help
            exit 1
            ;;
        : )
            echo "Invalid option: $OPTARG requires an argument" 1>&2
            show_help
            exit 1
            ;;
    esac
done

# Validate input
if [[ -z "$BASE_NAME" || $INSTANCE_COUNT -le 0 ]]; then
    echo "Error: Base name and instance count must be provided."
    show_help
    exit 1
fi

# Placeholder for ASG creation command
echo "Creating ASG with name: ${BASE_NAME}-ASG and instance count: ${INSTANCE_COUNT}"
# Here you would add the command to create the ASG using the provided parameters