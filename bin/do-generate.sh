#!/bin/bash

# load parameters from given config file
source $1

SCRIPT=`realpath $0`
cwd=`dirname $SCRIPT`

cd $cwd

mkdir -p ../../repos

git clone ${gitRepository} ../../repos/${repository}
git reset --hard
git clean -fd
git pull


# get length of an array
arraylength=${#tags[@]}

# we need to run the prepare command twice, so that we have an up-to-date version map file
for (( z=0; z<2; z++ ));
do
  # use for loop to read all values and indexes
  for (( i=0; i<${arraylength}; i++ ));
  do
    printf "\n\n======================================================\n"
    echo "Preparing version: " ${tags[$i]} " : " ${versions[$i]}
    printf "=======================================================\n"

    cd $cwd
    cd ../../repos/${repository}

    git checkout ${tags[$i]}
    git pull
    git reset --hard
    git clean -df

    configFileFull=${configFilePath}"/"${configFileBaseName}"-"${versions[$i]}".json"
    configFileMajor=${configFilePath}"/"${configFileBaseName}"-"${versions[$i]:0:1}".json"

    cd $cwd

    if [  -e ${configFileFull} ]; then
      workingConfigFile=${configFileFull}
    elif [ -e ${configFileMajor}  ]; then
      workingConfigFile=${configFileMajor}
    else
       workingConfigFile=${configFilePath}"/"${configFileDefault}
    fi

     docFolder="../../repos/"${repository}"/doc"
     if [ ! -e ${docFolder} ]; then
        docFolder="../../repos/"${repository}"/docs"
     fi

     buildFolder="../../build/"${repository}"/"${versions[$i]}
     mkdir -p ${buildFolder}

    ./console prepare --clear-build-dir ${additionalPrepareConfigs} --config-file=${workingConfigFile} \
       --repository-version=${versions[$i]} --version-map-file=./repos/versionmaps/${repository}.json \
       --repository-version-label="${labels[$i]}" --repository-version-maintained=${maintained[$i]} \
       --version-switch-path-prefix=${outputPath} ${docFolder} ${buildFolder}

    cat ./repos/versionmaps/${repository}.json
  done
done



# cleanup output directory
rm -rf ../static${outputPath}

for (( i=0; i<${arraylength}; i++ ));
do
  printf "\n\n======================================================\n"
  echo "Generating version: " ${tags[$i]} " : " ${versions[$i]}
  printf "=======================================================\n"

  destinationFolder="../static"${outputPath}"/"${versions[$i]}
  mkdir -p ${destinationFolder}

  cd $cwd
  ./console generate --source=../../build/${repository}/${versions[$i]}/docs --configuration=../../build/${repository}/${versions[$i]}/config.json --themes=../themes --destination=${destinationFolder}


  realpath ${destinationFolder}
done
