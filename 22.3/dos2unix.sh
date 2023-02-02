SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
for file in /$SCRIPT_DIR/*; do dos2unix $file; done;
