#! /bin/bash
cd 'views/objects'
#change the group display name
sed -i 's/GB - /AR /g' *
sed -i 's/All Rounders /AR /g' *
