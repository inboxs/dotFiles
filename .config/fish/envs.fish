#######GoPATH
set -x GOPATH $HOME/GoP
set -x PATH $PATH $GOPATH/bin

set -gx GO111MODULE on
set -x GOPROXY https://goproxy.io
