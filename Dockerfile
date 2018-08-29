FROM golang:alpine
MAINTAINER Hari <vhssunny1@gmail.com>

RUN apk add --no-cache git ca-certificates
RUN git clone https://github.com/OJ/gobuster.git
WORKDIR /go/gobuster
RUN go get ; exit 0 #just to ignore issues with go get or build
RUN go build ; exit 0
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o gobuster
RUN chmod +x gobuster
RUN wget https://localdomain.pw/Content-Bruteforcing-Wordlist/dirsearch-wordlist.txt
ENTRYPOINT ["./gobuster"]

#path of dirsearch-wordlist - "/go/gobuster/dirsearch-wordlist.txt"
#scan syntax "-u https://targetsite -w ~/wordlists/shortlist.txt"
#sample run - docker run --rm vhssunny1/gobuster -u https://targetsite -w /go/gobuster/dirsearch-wordlist.txt
