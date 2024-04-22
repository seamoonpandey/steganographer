# Steganography with Bash Commands: A Step-by-Step Guide

## Introduction

Steganography is the art of hiding one file within another in a manner that makes it difficult to detect. This guide will walk you through a simple Bash script that allows you to conceal a file within another and retrieve the hidden file when necessary.

## Prerequisites

Before we begin, ensure that you have the following:

- A Unix-like operating system (e.g., Linux, macOS)
- Bash shell installed
- Basic understanding of how to use the command line interface

## Installation

Before you can use the `steghide.sh` script, you need to clone this repository to your local machine. Here's how you can do this:

1. **Open your terminal**

2. **Navigate to the directory where you want to clone the repository**

   You can change your current directory using the `cd` command. For example, if you want to navigate to the `Documents` directory, you would use the following command:

   ```bash
   cd ~/Documents
   ```

3. **Clone the repository**

   Use the `git clone` command followed by the URL of the repository. Replace `https://github.com/username/repository.git` with the actual URL of the repository:

   ```bash
   git clone https://github.com/username/repository.git
   ```

   This command creates a new directory in your current directory where all the files in the repository are saved.

4. **Navigate to the new directory**

   Use the `cd` command followed by the name of the new directory. Replace `repository` with the actual name of the repository:

   ```bash
   cd repository
   ```

Now you can proceed with the "Getting Started" section of this guide.

## Getting Started

1. **Locate the Script**

   Find the `steghide.sh` script in your system. This is the script we will be using for our steganography process.

2. **Make the Script Executable**

   In order to run our script, we first need to make it executable. Open your terminal and navigate to the directory containing `steghide.sh`. Then, execute chmod +x steghide.sh

   ```text
   This command grants execution permissions to the `steghide.sh` script.
   ```

## Usage

### Hiding a File within Another File

1. **Prepare Your Files**

   Ensure that the file you want to hide (`hidden_file.ext`) and the file you want to hide it in (`cover_file.ext`) are in the same directory as the `steghide.sh` script.

2. **Execute the Hide Command**

   In your terminal, run the following command:

   ```bash
   ./steghide.sh hide cover_file.ext hidden_file.ext
   ```

   ```text

   This command hides `hidden_file.ext` within `cover_file.ext` and saves the result as `cover_file_with_hidden.ext`.
   ```

### Extracting the Hidden File

1. **Locate the Combined File**

   Ensure that the file containing the hidden file (`combined_file.ext`) is in the same directory as the `steghide.sh` script.

2. **Execute the Extract Command**

   In your terminal, run the following command:

   ```bash
   ./steghide.sh extract combined_file.ext
   ```

   ```text

   This command extracts the hidden file from `combined_file.ext` and saves it as `combined_file_extracted.ext`.
   ```

## Important Notes

- This script does not provide encryption or sophisticated hiding techniques; it simply appends one file to another.
- Some programs may not recognize the combined file correctly if additional data is appended to the end.
- Always ensure that the cover file, hidden file, and the `steghide.sh` script are in the same directory before executing the commands.

This guide, along with the `steghide.sh` script, should be saved in the same directory. Users can then refer to this `README.md` file for instructions on how to use the `steghide.sh` script.

## License

This project is open source and available under the [MIT License](LICENSE.md).

## Contributing

We welcome contributions from the community. Feel free to fork this project, make modifications, and open a pull request. If you have any questions, please feel free to reach out to the maintainers.
