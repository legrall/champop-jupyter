#!/bin/bash

gcloud ai-platform local train --package-path trainer \
                                --module-name trainer.task \
                                --python-version 3.5