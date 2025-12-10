#!/bin/bash

echo Halting BetterMusic services

docker compose down -v

echo BetterMusic services halted
