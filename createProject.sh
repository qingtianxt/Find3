#!/bin/bash
projectType=$1
applicationName=$2
projectTypeWeb=web
projectTypeCenter=center
templatePlace=src/main/resources/templates
templateName=gradle-template-generator
inputPort=8080


if test -z ${projectType} ;then
 echo "请选择是生成web还是center项目"
 exit
fi

if test -z ${applicationName} ;then
 echo "请输入服务名称"
 exit
fi

if [ ! -d ./"$templateName" ]; then
 echo "模板在当前目录下不存在，获取模板项目"
 git clone http://gitlab.sftcwl.com/sfsrm/gradle-template-generator.git
fi
cd gradle-template-generator


function createWeb() {
    echo "生成web项目"
    if [ -d "$(cd $(dirname $0);pwd)/${templatePlace}" ]; then
       rm -rf ${templatePlace}
    fi
    cp -r src/main/resources/templatesWeb src/main/resources/templates
}

function createCenter() {
    echo "生成center项目"
    if [ -d "$(cd $(dirname $0);pwd)/${templatePlace}" ]; then
      rm -rf src/main/resources/templates
    fi
    cp -r src/main/resources/templatesCenter src/main/resources/templates
}

#将服务名转化为驼峰形式
PARA=${applicationName}
arr=(`echo $PARA | tr '-' ' '`)
result=''
for var in ${arr[@]}
do
     firstLetter=`echo ${var:0:1} | awk '{print toupper($0)}'`
     otherLetter=${var:1}
     result=$result$firstLetter$otherLetter
done
applicationNameStr=${result}
applicationLowerStr=(`echo $result | tr A-Z a-z`)

#选择并替换模板
if test $projectType = $projectTypeWeb ;then
 createWeb
elif test $projectType = $projectTypeCenter; then
  createCenter
  inputPort=8081
else
  echo "请输入正确的项目类型:web或者center"
  exit
fi
if [[ -n "$3" ]];then
  inputPort=$3
fi

#定义参数
TARGET_PLACE=../${applicationName}
PROJECT_GROUP_ID=com.sf.sds
PROJECT_ARTIFACT_ID=${applicationName}
PROJECT_VERSION=1.0-SNAPSHOT
PROJECT_SERVER_PORT=${inputPort}
DATASOURCE_DRIVER=com.mysql.jdbc.Driver
DATASOURCE_IP=10.188.36.4
DATASOURCE_PORT=8001
DATASOURCE_DATABASE_NAME=fs_scene
DATASOURCE_USERNAME=tom
DATASOURCE_PASSWORD=123456


#判断要生成的文件是否已经存在，存在直接退出
if [ -d "$TARGET_PLACE" ]; then
  echo "该位置已经存在文件，请重新输入生成位置"
  exit
fi

#生成模板
gradle cleanArchetype generate -i \
    -Dtarget=generated \
    -Dgroup=${PROJECT_GROUP_ID} \
    -Dname=${PROJECT_ARTIFACT_ID} \
    -DnameStr=${applicationNameStr} \
    -DnameLowerStr=${applicationLowerStr} \
    -Dversion=${PROJECT_VERSION} \
    -DserverPort=${PROJECT_SERVER_PORT} \
    -DdataSourceDriver=${DATASOURCE_DRIVER} \
    -DdataSourceIp=${DATASOURCE_IP} \
    -DdataSourcePort=${DATASOURCE_PORT} \
    -DdataSourceDataBaseName=${DATASOURCE_DATABASE_NAME} \
    -DdataSourceUsername=${DATASOURCE_USERNAME} \
    -DdataSourcePassword=${DATASOURCE_PASSWORD} \

mv generated ${TARGET_PLACE}

#保存easy-code文件
for d in /Users/"$(whoami)"/Library/Application\ Support/JetBrains/IntelliJIdea*/options/; do
  echo $d
  cp -R easy-code-setting.xml "$d"
done

#启动idea
cd ${TARGET_PLACE}
idea .





