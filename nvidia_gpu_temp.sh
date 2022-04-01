#!/bin/bash
#gets nvidia GPU core temp
nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader
