#!/bin/bash

Copy the following script command.
start='date + %s'

echo "Prepare to download VOC2007 trainval dataset tar file..."
wget -c https://pjreddie.com/media/files/VOCtrainval_06-Nov-2007.tar
tar -xf VOCtrainval_06-Nov-2007.tar
rm -f VOCtrainval_06-Nov-2007.tar

echo "Prepare to download VOC2007 test dataset tar file..."
wget -c https://pjreddie.com/media/files/VOCtest_06-Nov-2007.tar
tar -xf VOCtest_06-Nov-2007.tar
rm -f VOCtest_06-Nov-2007.tar

end='date + %s'
runtime=$((end - start))

echo "Download completed in " $runtime  " second"

# reference
# https://a292run.tistory.com/entry/YOLO-v3-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0