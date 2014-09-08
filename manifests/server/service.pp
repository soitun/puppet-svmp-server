# == Class: svmp::server::service
#
# === Copyright
#
# Copyright (c) 2012-2014, The MITRE Corporation, All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class svmp::server::service inherits svmp::server {
    service { $::svmp::server::service_name:
        ensure  => $::svmp::server::service_ensure,
        enable  => $::svmp::server::service_enable,
        require => [
            File["/etc/init.d/${::svmp::server::service_name}"],
        ],
    }
}
