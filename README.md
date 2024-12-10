## OpenALPR Environment
```shell
docker build . -t openalpr-env
docker run -it -v $(pwd):/app -w /app openalpr-env
```

### alpr_jp
```shell
ruby collect_images.rb
ruby train.rb
ruby update_model.rb
```

## build
```shell
cd opnealpr; mkdir build; cd build
apt-get install liblog4cplus-dev # 必要なライブラリは追加でインストール
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc -DTesseract_INCLUDE_CCMAIN_DIR=/usr/include/tesseract -DTesseract_INCLUDE_CCUTIL_DIR=/usr/include/tesseract ..
```

## execute
```shell
alpr -c jp <pic>
```