# Copyright (c) 2020, Cody Opel <codyopel@gmail.com>
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

# Helper functions for elvish regex builtin.


use re


fn obj [obj]{
  put $obj[groups][-1:][0][text]
}

fn find [regex string]{
  try {
    put (obj (re:find $regex $string))
  } except _ {
    put ""
  }
}
