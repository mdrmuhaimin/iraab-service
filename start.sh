#!/bin/bash
cd flask_app
pip install poetry
poetry install --with dev
poetry run poe local_run

