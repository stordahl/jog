#!/bin/sh
#
# JOG - because I can never remember npm script names
# by Jacob Stordahl
#

selected=`jq -r '.scripts | keys[]' package.json | fzf`

if [[ -z $selected ]]; then
  echo "JOG ERROR: no npm scripts found"
  exit 1
fi

# Define the array of file paths
file_paths=(
  "pnpm-lock.yaml"
  "pnpm-workspace.yaml"
  ".pnpmfile.cjs"
)

# Function to check if any file exists
check_file_exists() {
  local files=("$@")  # Store the arguments in an array

  for file in "${files[@]}"; do
    if [ -e "$file" ]; then
      echo "JOG LOG: Identified pnpm configuration"
      pnpm run $selected
      return 0
    fi
  done

  echo "JOG LOG: Identified npm configuration"
  npm run $selected
  return 0
}

# Call the function with the file_paths array
check_file_exists "${file_paths[@]}"
