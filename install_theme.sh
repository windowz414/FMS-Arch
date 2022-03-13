#
# Copyright (C) 2022 Beru Shinsetsu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Clone theme from GitHub and do required file actions
echo "Going into Spicetify-CLI themes folder and cloning theme..."
echo ""
cd "$(dirname "$(spicetify -c)")/Themes"
git clone https://github.com/williamckha/spicetify-fluent Fluent
echo ""
echo "Making folder for extensions and copying Fluent extension into"
echo "there..."
echo ""
mkdir -p ../Extensions
cp Fluent/fluent.js ../Extensions/.

echo "including .fms-arch/config_theme.sh"
source ${FMS_ARCH_TOP}/config_theme.sh
