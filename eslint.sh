#!/bin/bash

#The following line will print no of argument provided to script
USAGE="create-eslint <eslint_config_name>"
red=`tput setaf 1`;
green=`tput setaf 2`;
reset=`tput sgr0`;

if [ "$#" -lt "1" ]
then
  echo " ";
  echo "${red} error: missing required argument \`eslint_config_name\`";
  echo " ";
  echo "${green} --- Helper ---";
  echo " usage : ${USAGE}${reset}";
  echo " ";
else
  yarn add --dev babel-eslint eslint eslint-plugin-flowtype eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react eslint-config-$1

  echo "${green}please add config in file package.json${reset}"
  echo " ";
  echo "  \"eslintConfig\": {"
  echo "    \"extends\": \"$1\""
  echo "  }"
  echo " ";
fi
