# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM golang:1.10
WORKDIR /go/src/app
COPY . .
RUN go install -v
CMD ["app"]
#COPY jenkins-slave /usr/local/bin/jenkins-slave
#ENTRYPOINT ["jenkins-slave"]
#FROM jenkins/slave:3.23-1-alpine
#MAINTAINER Oleg Nenashev <o.v.nenashev@gmail.com>
#LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.23"

#COPY jenkins-slave /usr/local/bin/jenkins-slave

#ENTRYPOINT ["jenkins-slave"]
