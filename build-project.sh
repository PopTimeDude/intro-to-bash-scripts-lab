#!/bin/bash

# Prompt the user for the new directory name
read -p "Enter the name of the new directory: " NEW_DIR_NAME

# Check if the directory already exists
if [ -d "$NEW_DIR_NAME" ]; then
    echo "Error: Directory '$NEW_DIR_NAME' already exists."
    exit 1
fi

# Create the new directory
mkdir "$NEW_DIR_NAME"
echo "Directory '$NEW_DIR_NAME' created."

# Prompt the user for the new file name
read -p "Enter the name of the new file to create inside '$NEW_DIR_NAME': " NEW_FILE_NAME

# Construct the full path to the new file
NEW_FILE_PATH="$NEW_DIR_NAME/$NEW_FILE_NAME"

# Check if the file already exists in the new directory
if [ -f "$NEW_FILE_PATH" ]; then
    echo "Error: File '$NEW_FILE_NAME' already exists in '$NEW_DIR_NAME'."
    exit 1
fi

# Add the shebang line to the new file
echo '#!/bin/bash' > "$NEW_FILE_PATH"
echo "Shebang line added to '$NEW_FILE_PATH'."

# Make the new file executable
chmod +x "$NEW_FILE_PATH"
echo "File '$NEW_FILE_PATH' made executable."

echo "Script completed successfully."

# README.md instruction document
touch README.md 
echo 'after entering in "./build-project.sh" make sure that your file name for your project ends in ".sh" to recognize that it's a bash file like so, file-name.sh > README.md 
