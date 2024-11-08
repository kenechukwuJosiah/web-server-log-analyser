# Log Analysis Script

This Bash script analyzes a log file (`sample.log`) and provides insights on:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

The results are displayed in color-coded sections for better readability.

## Prerequisites

- Ensure you have a log file named `sample.log` in the same directory as the script, containing logs in a format compatible with `awk` for extracting IP addresses, request paths, status codes, and user agents.

## Usage

1. Save the script as `log_analysis.sh`.
2. Make it executable by running:
   ```bash
   chmod +x log_analysis.sh
   ```

## Project Url

https://roadmap.sh/projects/nginx-log-analyser
