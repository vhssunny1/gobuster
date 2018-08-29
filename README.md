Offical site of gobuster - https://github.com/OJ/gobuster

I made simple docker image which we can use and remove after the use.

Syntax and usage - please refer to  https://github.com/OJ/gobuster

sample 1 - ./gobuster -u https://mysite.com/path/to/folder -c 'session=123456' -t 50 -w common-files.txt -x .php,.html
sample 2 - ./gobuster -u https://buffered.io -w ~/wordlists/shortlist.txt
Verbose output - ./gobuster -u https://buffered.io -w ~/wordlists/shortlist.txt -v

