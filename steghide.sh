#!/bin/bash

# Function to hide a file within another file
hide_file() {
    cover_file="$1"
    hidden_file="$2"
    combined_file="${cover_file%.*}_with_hidden.${cover_file##*.}"
    
    # Concatenate the cover file and the hidden file
    cat "$cover_file" "$hidden_file" > "$combined_file"
    
    echo "File '$hidden_file' hidden within '$cover_file' successfully. Combined file saved as '$combined_file'."
}

# Function to extract the hidden file from a combined file
extract_hidden_file() {
    combined_file="$1"
    hidden_file="${combined_file%.*}_extracted.${combined_file##*.}"
    
    # Extract the hidden file from the combined file
    cp "$combined_file" "$hidden_file"
    
    echo "Hidden file extracted from '$combined_file' successfully. Saved as '$hidden_file'."
}

# Main script
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <command> <cover_file> <hidden_file>"
    echo "Commands:"
    echo "  hide    : Hide a file within another file"
    echo "  extract : Extract the hidden file from a combined file"
    exit 1
fi

command="$1"
cover_file="$2"
hidden_file="$3"

case "$command" in
    "hide")
        if [ "$#" -ne 3 ]; then
            echo "Usage: $0 hide <cover_file> <hidden_file>"
            exit 1
        fi
        hide_file "$cover_file" "$hidden_file"
        ;;
    "extract")
        if [ "$#" -ne 2 ]; then
            echo "Usage: $0 extract <combined_file>"
            exit 1
        fi
        extract_hidden_file "$cover_file"
        ;;
    *)
        echo "Invalid command: $command"
        exit 1
        ;;
esac
