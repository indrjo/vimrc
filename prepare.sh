#!/usr/bin/env sh

# Copy the vim configuration file of this repo and paste it into your home.
cp ./vimrc ~/.vimrc

# Download all the necessary stuff, copy them into .vim so that you can 
# apply the everforest colorscheme.
cd ~

[ -d ./.vim ] || mkdir ./.vim

git clone https://github.com/indrjo/everforest

for dir in autoload colors doc; do
  cp -rv ./everforest/$dir ./.vim
done

# Finally, you can get rid of the ~/everforest.
rm -rfv ./everforest

