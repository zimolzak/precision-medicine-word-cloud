Precision Medicine Word Cloud
========================

![image of final word cloud](https://dl.dropboxusercontent.com/u/38640281/github_img/precision_wordcloud.png)

Background
----
There are some experts online now (Feb 2015) giving definitions of
precision medicine. They are in the NEJM Open Forum hosted by Medstro.
https://medstro.com/posts/1701

I want to make a word cloud of their definitions. I want to exclude
the obvious words "precision" and "medicine". I found a word cloud
tool with nice layout, but it doesn't understand that it should lump
plural forms or other inflected forms in with their singular forms.

Usage
----

0. Copy and paste the experts' definitions into a file. I called it
`precision defs.txt`.

1. `./end_s.pl precision\ defs.txt | sort | uniq > s_words.txt`

2. Manually curate `s_words.txt` and save it in a new file
`curated_s_words.txt`

3. `./lumper.pl precision\ defs.txt > output.txt`

4. Paste `output.txt` into http://www.jasondavies.com/wordcloud
