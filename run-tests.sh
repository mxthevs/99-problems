#! /bin/sh

OCAML=$(which ocaml)
if [ -z $OCAML ];
then
  echo "ERROR: Could not determine if OCaml is installed in this machine.\n"
  exit 1
fi

for d in */ ; do
  DIR_BASENAME=$(basename $d)
  PROBLEM_NAME="${DIR_BASENAME:3}.ml"
  PATH="./${DIR_BASENAME}/${PROBLEM_NAME}"
  
  ocaml $PATH

  if [ $? -ne 0 ];
  then
    echo "ERROR: ${PATH} failed.\n"
    exit 1;
  fi
done