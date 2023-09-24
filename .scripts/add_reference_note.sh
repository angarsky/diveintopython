#!/bin/bash

SCRIPT_DIR_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SEARCH_DIR="${SCRIPT_DIR_PATH}/../learn"
BASE_URL="https://diveintopython.org"
NOTE_TEMPLATE="> [!NOTE]\n> Read this tutorial on the website: <url>\n\n"

for file_path in $(find ${SEARCH_DIR} -name '*.md'); do
  # Build tutorial URL as on the website.
  file_name=$( echo "${file_path}" | sed -E -e 's/.*\.\.(\/learn\/.*)\.md/\1/g' )
  file_name=$( echo "${file_name}" | sed -E -e 's/([\_]+)/\-/g' )
  tutorial_url=${BASE_URL}${file_name}

  # Prepare a note text.
  note_text=$( echo "${NOTE_TEMPLATE/<url>/$tutorial_url}" )

  # Get the 1st line of a text file.
  # @see https://unix.stackexchange.com/questions/359641/read-first-line-of-the-file-and-compare-it-with-a-string-in-shell-file
  first_line_content=$(
    sed '
      s/[[:space:]]\{1,\}/ /g;
      s/[^[:print:]]//g;
      s/^ //; s/ $//;
      q;' < "${file_path}"
  );

  # Add a note text if it hasn't added yet.
  if [ "${first_line_content}" != '> [!NOTE]' ]; then
    # @todo: find better way, this code breaks `\n` characters in the text.
    echo -e "${note_text}$(cat "${file_path}")" > "${file_path}"
  fi
done;
