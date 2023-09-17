#!/bin/bash

ls | tr -d 'Aa' | tr '[:lower:][:upper:]' '[:upper:][:lower:]'
