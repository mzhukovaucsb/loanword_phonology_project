# Loanword Phonology Project
Fall 2021. Individual Study. Research goal: to determine what influences the choice of verb suffix in the process of borrowing verbs from English into Russian. 

In Russian, when a verb is borrowed from English, a verb suffix is added: for example, the loan verb for "to google" is “гуглить," where “и" and “ть" are word-forming verb suffixes. 

I looked at whether it is true that in the process of verb borrowing, the word-formation suffix will depend on whether there are frequent verbs in Russian, whose pronunciation will be very similar, and the new verb will be formed by analogy.

I used a list of the 1000 most frequent verbs in the Russian language (http://dict.ruslang.ru/freq.php?act=show&dic=freq_v&title=%D7%E0%F1%F2%EE%F2%ED%FB%E9%20%F1%EF%E8%F1%EE%EA%20%E3%EB%E0%E3%EE%EB%EE%E2), counted for each verb on the list the minimum distance with a borrowed verb, and visualized the data. 

I looked at 10 frequently used Russian verbs belonging to the Internet vocabulary, which are formed from the English: to google (гуглить), to tweet (твитить, твитнуть), to ban (банить), to spam (спамить), to swipe (свайпать, свайпнуть), to like (лайкать, лайкнуть), and to post (постить).

To determine the minimum distance between words, I used the standard Levenstein distance and also a package fonetika, which is designed for the Russian language (https://pypi.org/project/fonetika/ Package has both implemented phoneme transformation into letter-number sequence and distance engine for comparison of phonetic sequences based on Levenstein and Hamming distances). 

