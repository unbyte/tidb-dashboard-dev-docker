source /root/.bash_profile

# go module
go env -w GO111MODULE=on

# yarn
npm i -g yarn

if [ $1 = "cn" ]; then
    # set go proxy
    go env -w GOPROXY=https://goproxy.cn,direct

    # yarn registry
    yarn config set registry https://registry.npm.taobao.org/
fi
