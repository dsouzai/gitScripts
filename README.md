This repo is a personal repo that I'm using to house all my git scripts. I figure this way, if anything happens to my computer, it should be trivial to get my git setup going again.


```
The plan is to have two read-only branches, 'master' and 'clean' (in OMR there is only 'master'). In all repos, 'master' tracks 'upstream/master'. In tr.open, 'clean' tracks 'upstream/green' whereas in j9vm, 'clean' tracks 'upstream/integration'.

Branching off 'clean' should mean a lower chance of build failures.

---------------------- master
    \
     ----------------- clean
          \
           ----------- <branch name>

The current source layout is:

parentDir
   tr.open
   j9vm
   omr

gitSyncRepos.sh goes to each of those folders and updates each repo.

```


\- Irwin D'Souza (dsouzai@ca.ibm.com)
