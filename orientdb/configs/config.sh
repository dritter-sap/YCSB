#!/bin/bash
#
# Copyright (c) 2012 - 2020 YCSB contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you
# may not use this file except in compliance with the License. You
# may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied. See the License for the specific language governing
# permissions and limitations under the License. See accompanying
# LICENSE file.
if [ -z "$workloads" ]; then
   declare -a workloads=(
      "workloada"
      "workloadb"
      "workloadc"
      "workloadd"
      "workloade"
      "workloadf"
   )
fi

if [ -z "${workloads_ts}" ]; then
   declare -a workloads_ts=(
      "tsworkloada"
   )
fi

if [ -z "${drivers_test}" ]; then

   declare -a drivers_test=(
      "orientdb"
   )
fi

if [[ -z ${THREADS_YCSB} ]]; then
    export THREADS_YCSB=1
fi

# ==================================================== #