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

# Use Spicetify-CLI to configure and apply the theme.
echo "Almost there. Now doing some configurations, and Spotify will"
echo "relaunch."
echo ""
echo "Configuring extensions to Fluent..."
echo ""
spicetify config extensions fluent.js
echo ""
echo "Configuring current theme to Fluent Dark..."
echo ""
spicetify config current_theme Fluent color_scheme dark
echo ""
echo "Spice-ing some stuff - Enabling CSS injection, color"
echo "replacement and asset overwriting..."
echo ""
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
echo ""
echo "Backing up current style first so you don't lose it... ;3"
echo ""
spicetify backup apply
echo ""
echo "Time to apply!"
echo ""
spicetify apply
echo ""
if [ "$?" == "0" ]; then
    echo "Installation complete! Spotify should relaunch!"
    echo ""
    echo "\"Look at my hands. I'm shaking. All my body is shaking.\""
    echo "\"It was only a dream, mommy.\""
    echo "\"It was there. I couldn't move my head but I was watching him"
    echo "in the mirror. I KNEW he was looking at me, with TWO INVISIBLE"
    echo "EYES! TWO INVISIBLE MONSTROUS EYES!\""
    echo "~ \"13\" by Astronaut"
else
    echo "Applying theme failed. You apparently need to follow"
    echo "Spicetify-CLI wiki yourself... :/"
fi
