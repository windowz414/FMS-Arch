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
# Oh, did I forget to tell that Yay tells you to avoid running it as
# root so I use su to avoid it? Yes it does and yes I use su to avoid
# it. That's why I export "whowasi" in the first place.
echo "\"Yay\" detected! Installing as a regular user! Avoid running"
echo "it as root!"
echo ""
if [ "$whowasi" != "root" ]; then
    yay -S --noconfirm spotify spicetify-cli
    # Check if the process exited without errors. Then proceed if it did.
    if [ "$?" == "0" ]; then
        echo ""
        echo "Installation appears to have went fine. Moving on..."
        echo "including .fms-arch/adjustperms.sh"
        sudo "export whowasi=${whowasi} && export FMS_ARCH_TOP=${FMS_ARCH_TOP} && bash ${FMS_ARCH_TOP}/adjustperms.sh"
    else
        echo ""
        echo "\"Yay\" exited with an error code different than 0."
        echo ""
        echo "Please resolve the errors if any, and try to install again"
        echo "by running 'yay -S spotify spicetify-cli'."
        echo ""
        echo "Installation aborted."
    fi
else
    echo "Were you root all along? Stop it! Run this script as a"
    echo "regular user!"
    echo ""
    echo "Installation aborted."
fi
