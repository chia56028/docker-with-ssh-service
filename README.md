# docker-with-ssh-service
## Set Environment
### 移除舊版本
```
sudo apt-get remove docker docker-engine docker.io containerd runc
```
### 更新
```
sudo apt-get update
```
### 新增 Docker 的 GPG 密鑰
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
- 核對 fingerprint：9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88，我們可以搜尋最後八碼
```
sudo apt-key fingerprint 0EBFCD88
```

### 設定倉庫版本
```
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

### 安裝 docker
```
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
```

- 列出版本
```
apt-cache madison docker-ce
```
- 安裝特定版本
```
sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
# example
sudo apt-get install docker-ce=5:18.09.0~3-0~ubuntu-bionic docker-ce-cli=5:18.09.0~3-0~ubuntu-bionic containerd.io
```
- 驗證是否安裝成功
```
sudo docker run hello-world
```

## Build image
```
sudo docker build -t <imageName> .
```

## Create container
```
source create_docker.sh
```

## Check ports
```
sudo apt-get install net-tools
sudo netstat -tulpn | grep LISTEN
```