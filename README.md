## Synopsis
Twitter bot script of twitter bot [@tgif_sister](https://twitter.com/tgif_sister)
<br>
For Friday of can not wait people , I will say that Let's play to further weekend tell me the day of the week.
<br>
<br>
Please try to reference in the cooperation of twitter and perl.

## Instration

#### infomation
version: 0.1 (2015/05/06) <br>
perl version: 5.18.0<br>

#### Need Package
* Net::Twitter
* Getopt::Long
* LWP::UserAgent
* FindBin
* JSON
* Encode

#### Introduction
`
$ git clone
$ vi etc/config.pl
`
Please write the API keys of Twitter Application.

## Function
#### random_twitter_week [day]
`
# 1:mon 2:tue 3:wed 4:thurs 5:fri 6:sat 7:sun
perl bin/run.pl random_twitter_week 3
`
Randam twitter week to select a word to search for the category that has been set from wikipedia.<br>
Chosen words by image search you tweet to fit the sentence for the day of the week to get the url.<br>

## Contact
Twitter: [@nisei275](https://twitter.com/nisei275)
