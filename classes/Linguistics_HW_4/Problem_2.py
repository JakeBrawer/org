from nltk.corpus import masc_tagged

sents = nltk.corpus.masc_tagged.tagged_sents(categories='travel-guides')
ne_sents = [nltk.ne.chunk(sent) for sent in sents]

for sent in sent[:10]:
    print(nltk.ne_chunk(sent))