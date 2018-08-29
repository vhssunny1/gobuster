#gobuster

Offical site of gobuster - https://github.com/OJ/gobuster

I made simple docker image which we can use and remove after the use.

Syntax and usage - please refer to  https://github.com/OJ/gobuster

sample 1 - ./gobuster -u https://mysite.com/path/to/folder -c 'session=123456' -t 50 -w common-files.txt -x .php,.html
sample 2 - ./gobuster -u https://buffered.io -w ~/wordlists/shortlist.txt
Verbose output - ./gobuster -u https://buffered.io -w ~/wordlists/shortlist.txt -v

Note i have used wordlist from - https://localdomain.pw/Content-Bruteforcing-Wordlist/dirsearch-wordlist.txt and placed in /gobuster folder ,however if you wish to change wordlist , you can use docker voulme (https://docs.docker.com/storage/volumes/) option to run docker.

#scan syntax "-u https://targetsite -w ~/wordlists/shortlist.txt"

usage-
docker run --rm vhssunny1/gobuster -u https://targetsite -w /go/gobuster/dirsearch-wordlist.txt
docker run --rm vhssunny1/gobuster -u https://targetsite -w /go/gobuster/dirsearch-wordlist.txt -q -n -e -o report.txt

Dockerfile - https://github.com/vhssunny1/gobuster
