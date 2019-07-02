#!/bin/bash
#########################################################################
# File Name: test.sh
# Author: raoxiang

#字符串要包起来

function contain_str(){
    param_count=${#}
    if [ ${param_count} != 2 ]; then 
        echo "parameter count is illegal. need 2 parameter. param_count: ${param_count}"
        return 1
    fi

    file_name=${1}
    str=${2}
    echo "file_name:${file_name}"
    echo "str:${str}"

    if [ ! -f "${file_name}" ]; then
        echo -e "\033[34m ${file_name} is not exist \033[0m"
        return 1
    fi

    if [ "${str}"x = ""x ]                                                                                                                                                                                                     
    then
        echo "the second parameter can not be empty "
        return 1
    fi

    rs=`grep "${str}" ${file_name}|tail -n 1`
    if [ "${rs}"x != ""x ]; then
        echo "${file_name} contain ${str}"
        return 0
    else
        echo "${file_name} doesn't contain ${str}"
        return 1
    fi
}
