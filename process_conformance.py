#!/usr/bin/env python3
"""
Process conformance statements in markdown files.

This script:
1. Iterates through markdown files in ./input/pagecontent and ./input/intro-notes
   (excluding changehistory.md and narrative-conformance.md)
2. Finds sentences containing conformance keywords (SHALL, SHALL NOT, SHOULD, SHOULD NOT, MAY)
3. Adds markers (§pdex-XX: ... §) to each conformance statement in the source files
4. Creates a CSV file (conformance_statements.csv) with reference, statement, and sourcefile columns
"""

import os
import re
import csv

# Directories containing markdown files
MARKDOWN_DIRS = [
    "./input/pagecontent",
    "./input/intro-notes",
]
CSV_FILE = "./conformance_statements.csv"

# Files to exclude
EXCLUDE_FILES = ["changehistory.md", "narrative-conformance.md"]

# Conformance keywords pattern
CONFORMANCE_PATTERN = r'\b(SHALL NOT|SHALL|SHOULD NOT|SHOULD|MAY)\b'


def process_conformance_statements():
    """Process all markdown files and extract conformance statements."""
    # Counter for reference numbers
    ref_counter = 1

    # Collect all statements and file modifications
    all_statements = []
    file_modifications = {}

    # Get all markdown files from all directories
    md_file_paths = []
    for md_dir in MARKDOWN_DIRS:
        if os.path.isdir(md_dir):
            for f in sorted(os.listdir(md_dir)):
                if f.endswith('.md') and f not in EXCLUDE_FILES:
                    md_file_paths.append((md_dir, f))

    for md_dir, md_file in md_file_paths:
        filepath = os.path.join(md_dir, md_file)

        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        # Process line by line to maintain markdown structure
        lines = content.split('\n')
        new_lines = []

        for line in lines:
            # Skip lines that are code blocks, headers, or already have markers
            if (line.strip().startswith('```') or
                line.strip().startswith('#') or
                '§pdex-' in line):
                new_lines.append(line)
                continue

            # Check if line contains conformance keywords
            if re.search(CONFORMANCE_PATTERN, line):
                # Split line into sentences (roughly - ending with . ! ? or end of line)
                sentences = re.split(r'(?<=[.!?])\s+', line)

                new_sentences = []
                for sentence in sentences:
                    # Skip sentences that already have markers (start with §pdex- and end with §)
                    if '§pdex-' in sentence and sentence.strip().endswith('§'):
                        new_sentences.append(sentence)
                        continue

                    if re.search(CONFORMANCE_PATTERN, sentence):
                        # This sentence contains a conformance keyword
                        ref = f"§pdex-{ref_counter:02d}"

                        # Clean the sentence for CSV (remove extra whitespace)
                        clean_sentence = sentence.strip()

                        # Add markers to sentence
                        marked_sentence = f"{ref}: {clean_sentence} §"

                        # Store for CSV
                        all_statements.append({
                            'reference': ref,
                            'statement': clean_sentence,
                            'sourcefile': md_file
                        })

                        ref_counter += 1
                        new_sentences.append(marked_sentence)
                    else:
                        new_sentences.append(sentence)

                new_lines.append(' '.join(new_sentences))
            else:
                new_lines.append(line)

        file_modifications[filepath] = '\n'.join(new_lines)

    # Write modified files
    for filepath, content in file_modifications.items():
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

    # Write CSV file
    with open(CSV_FILE, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['reference', 'statement', 'sourcefile'])
        writer.writeheader()
        writer.writerows(all_statements)

    print(f"Processed {len(md_file_paths)} files")
    print(f"Found {len(all_statements)} conformance statements")
    print(f"CSV written to {CSV_FILE}")


if __name__ == "__main__":
    process_conformance_statements()
