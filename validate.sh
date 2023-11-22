#!/bin/bash

# Function to validate an octet
validate_octet() {
  local octet="$1"
  if [[ "$octet" =~ ^[0-9]+$ && "$octet" -ge 0 && "$octet" -lt 256 ]]; then
    return 0
  else
    return 1
  fi
}

# Input IP address
ip_address="10.0.0.1"

# Split IP address into octets
IFS='.' read -r -a octets <<< "$ip_address"

# Check if there are exactly 4 octets
if [ "${#octets[@]}" -eq 4 ]; then
  # Validate each octet
  valid=true
  for octet in "${octets[@]}"; do
    if ! validate_octet "$octet"; then
      valid=false
      break
    fi
  done

  # Print the result
  if [ "$valid" = true ]; then
    echo "$ip_address is a correct IP address"
  else
    echo "$ip_address is an incorrect IP address"
  fi
else
  echo "$ip_address is an incorrect IP address"
fi
