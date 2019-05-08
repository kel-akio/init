#!/bin/bash

echo "Login , UID , PATH : "
cut -d: -f1,3,6 /etc/passwd
