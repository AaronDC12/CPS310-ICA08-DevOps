# ICA08 DevOps Fundamentals

## Project Overview

This project generates a summary report for support tickets. It reads ticket data, counts open tickets and high-priority tickets, and uses a JSON configuration file to control report settings.

## Requirements

- Python 3.12 or newer
- Git

## Setup

Create and activate a virtual environment in PowerShell:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

Install the project dependencies:

```powershell
python -m pip install -r requirements.txt
```

## Run the Application

```powershell
python release_audit.py
```

The application reads settings from `config.json` and ticket data from `tickets.txt`.

## Run Tests

```powershell
python -m pytest -v
```

## Verification

Run the PowerShell verification script:

```powershell
.\verify.ps1
```

The script runs the test suite, checks that `requirements.txt` and `config.json` exist, and displays the Git working-tree status.

## Configuration

The `config.json` file defines the ticket data file, report title, and high-priority threshold.

## Git Workflow

Development takes place on the `feature/release-readiness` branch. The completed changes are submitted through a pull request into `main`.