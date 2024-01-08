#! /bin/bash

source ./tester2.sh

cmd_exist(){
    command -v $1 > /dev/null 2>&1
}

STRING="Null Byte"
echo "hackers love to learn on $STRING."

checker

echo "Does Zypper Exist?"
if ! cmd_exist {zypper}; then
    echo -e "${RED}Zypper needed to run"
    exit 1
else echo "Test:" $? "Zypper is available."
    exit 1
fi
