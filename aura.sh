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

# Get both Spotify and Spicetify-CLI from AUR, as official Arch
# repositories don't have them.
echo ""
echo "Installing Spotify and Spicetify-CLI. DON'T CHOOSE GIT VERSION"
echo "OF SPICETIFY TO SAVE SYSTEM RESOURCES!"
echo ""
aura -A spotify spicetify-cli

# Check if the process exited without errors. Then proceed if it did.
if [ "$?" == "0" ]; then
    echo ""
    echo "Installation appears to have went fine. Moving on..."
    echo "including .fms-arch/adjustperms.sh"
    bash ${FMS_ARCH_TOP}/adjustperms.sh
else
    echo ""
    echo "Aura exited with an error code different than 0."
    echo ""
    echo "Please resolve the errors if any, and try to install again"
    echo "by running 'aura -A spotify spicetify-cli'."
    echo ""
    echo "Installation aborted."
fi
