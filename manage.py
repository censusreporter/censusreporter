#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "censusreporter.settings")

    # --- START OF FIX ---
    # Get the absolute path to the project root (the folder containing manage.py)
    BASE_DIR = os.path.abspath(os.path.dirname(__file__))

    # Add the inner 'censusreporter' directory to sys.path
    # This fixes: ModuleNotFoundError: No module named 'config'
    sys.path.insert(0, os.path.join(BASE_DIR, 'censusreporter'))

    # Add the 'apps' directory to sys.path
    # This fixes: ModuleNotFoundError: No module named 'census'
    sys.path.insert(0, os.path.join(BASE_DIR, 'censusreporter', 'apps'))
    # --- END OF FIX ---

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)