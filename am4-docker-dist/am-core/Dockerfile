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

# set base Docker image to WSO2 API Manager Docker image with latest WSO2 Updates
FROM docker.wso2.com/wso2am:3.2.0

COPY --chown=wso2carbon:wso2 conf/deployment.toml ${WSO2_SERVER_HOME}/repository/conf/
COPY --chown=wso2carbon:wso2 lib ${WSO2_SERVER_HOME}/repository/components/lib/
