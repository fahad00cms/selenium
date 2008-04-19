# Copyright 2006 ThoughtWorks, Inc
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

# -----------------
# Original code by Aslak Hellesoy and Darren Hobbs
# This file has been automatically generated via XSL
# -----------------

module Selenium

  class Driver
    include SeleneseClient
  
    def initialize(server_host, server_port, browserStartCommand, browserURL, timeout=30000)
      @server_host = server_host
      @server_port = server_port
      @browserStartCommand = browserStartCommand
      @browserURL = browserURL
      @timeout = timeout
    end
      
    def to_s
      "Selenium Driver"
    end

    def start()
      result = get_string("getNewBrowserSession", [@browserStartCommand, @browserURL])
      @session_id = result
    end
      
    def stop()
      do_command("testComplete", [])
      @session_id = nil
    end

  end
end
