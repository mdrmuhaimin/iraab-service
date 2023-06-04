#!/bin/bash
cd flask_app
pip install poetry
poetry install --with dev
poetry run poe docker_run && poetry run poe docker_clean

