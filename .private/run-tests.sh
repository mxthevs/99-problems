#! /bin/sh

if [ -z $FROM_MAKEFILE ];
then
  echo "ERROR: DO NOT RUN THIS SCRIPT EXPLICITLY!"
  echo "INFO: If you want to test the solutions just use command: `make test`"
  exit 1
fi

OCAML=$(which ocaml)
if [ -z $OCAML ];
then
  echo "ERROR: Could not determine if OCaml is installed in this machine."
  exit 1
fi

for path in `find . -name \*.ml | sort`; do
  ocaml $path

  if [ $? -ne 0 ];
  then
    echo "ERROR: ${PATH} failed."
    exit 1;
  fi
done
