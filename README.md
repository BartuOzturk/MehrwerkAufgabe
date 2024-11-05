# Process Mining KPI Script

This project contains a Python script to calculate key process mining KPIs from an event log stored in a CSV file. The KPIs include the number of events, cases, activities, and unique process variants. Additionally, it prints each process variant along with the frequency of its occurrence across cases.

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
  - [Running Locally](#running-locally)
  - [Running with Docker](#running-with-docker)
- [Example Output](#example-output)

## Features
- **Event KPIs**: Calculates the total number of events, cases, unique activities, and process variants.
- **Process Variants**: Identifies unique sequences of activities (process variants) for each case and counts their occurrences.
- **Docker Support**: Provides a Docker setup to run the script in an isolated environment.

## Requirements
- Python 3.7 or higher
- `pandas` library for data handling

To install `pandas`, run:
```bash
pip install pandas    
```
## Usage

### Running Locally
1. Clone the repository and navigate to the project directory.
2. Ensure the `bookstore.csv` file is in the same directory as `main.py`, or specify the path when running the script.
3. Run the script using Python:

```bash
python main.py bookstore.csv
```
### Running with Docker

1. Build the Docker image:
Open a terminal in the project directory (where the Dockerfile is located) and run
```bash
docker build -t basic-process-mining .
```
2. Run the Docker container:
To execute the script within Docker, use the following command:
```bash
docker run -ti --rm -v ${PWD}/bookstore.csv:/opt/bookstore.csv basic-process-mining
```
## Example Output
- When the script runs successfully, it will output the KPIs and process variants like this:
```
# Events:     100
# Cases:      50
# Activities: 3
# Variants:   2

Process Variants and their counts:
enter bookstore-browse books-leave bookstore: 50 Case(s)
enter bookstore-buy book-leave bookstore: 30 Case(s)
enter bookstore-leave bookstore: 20 Case(s)
```



