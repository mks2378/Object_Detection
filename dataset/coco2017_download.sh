#!/bin/bash

Copy the following script command.
start='date + %s'

echo "Prepare to download train2017 image zip file..."
wget -c http://images.cocodataset.org/zips/train2017.zip
unzip train2017.zip
rm -f train2017.zip

echo "Prepare to download val2017 image zip file..."
wget -c http://images.cocodataset.org/zips/val2017.zip
unzip val2017.zip
rm -f val2017.zip

echo "Prepare to download test2017 image zip file..."
wget -c http://images.cocodataset.org/zips/test2017.zip
unzip test2017.zip
rm -f test2017.zip

echo "Prepare to download train-val2017 anotation zip file..."
wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip
unzip annotations_trainval2017.zip
rm -f annotations_trainval2017.zip

echo "Prepare to download image_info_test.2017.zip file..."
wget -c http://images.cocodataset.org/annotations/image_info_test2017.zip
unzip image_info_test2017.zip
rm -f image_info_test2017.zip

end='date + %s'
runtime=$((end - start))

echo "Download completed in " $runtime  " second"

# reference
# https://www.programmersought.com/article/98211395063/
# https://gist.github.com/mkocabas/a6177fc00315403d31572e17700d7fd9
