# ------------------------------------------------------------------------
#
# Copyright 2020 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
#
# ------------------------------------------------------------------------
#! bin/bash

timestamp=""
timeStamp() {
	timestamp=`date '+%Y-%m-%d %H:%M:%S' | sed 's/\(:[0-9][0-9][0-9]\)[0-9]*$/\1/' `
}

timeStamp
echo "[${timestamp}] INFO - Running am4-docker-dist"
timeStamp
echo "[${timestamp}] INFO - Please note that this distribution is only recommended for development and testing purpose only"
timeStamp

if [ "$1" = "--full" ]  || [ "$1" = "-full" ] ||   [ "$1" = "full" ] ; then
	timeStamp
	echo "[${timestamp}] INFO - Starting am4-docker-dist in full mode with APIM, Integration GW and Streaming Provider"
	docker-compose -f docker-compose-apim-with-si.yaml up --build
elif [ "$1" = "--basic" ]  || [ "$1" = "-basic" ] ||   [ "$1" = "basic" ] ; then
	timeStamp
	echo "[${timestamp}] INFO - Starting am4-docker-dist in basic mode with APIM and Integration GW"
	docker-compose -f docker-compose-basic-apim.yaml up --build
fi
