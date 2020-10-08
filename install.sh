#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source ubuntu/setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source mac/setup.sh
fi
