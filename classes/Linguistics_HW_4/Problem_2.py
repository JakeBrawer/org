import nltk
from nltk.corpus import masc_tagged
from nltk.corpus import ConllChunkCorpusReader
import re
root = "/usr/local/share/nltkdata/corpora/masc_conll/"
goldcorpus = ConllChunkCorpusReader('./gold_standards',r".*.conll",
                                    chunk_types=("DATE","PERSON","ORGANIZATION","LOCATION"))

sents = nltk.corpus.masc_tagged.tagged_sents(categories='travel-guides')
ne_sents = [nltk.ne_chunk(sent) for sent in sents]


golden_entities = []
for sent in goldcorpus.chunked_sents():
        sent = nltk.chunk.tree2conllstr(sent)
        sent = sent.split('\n')
        for word in sent:
            word = word.split(' ')
            if word[2] != 'O':
                golden_entities.append(word[0].encode('utf-8'))


nltk_entities = []
for sent in ne_sents:
        sent = nltk.chunk.tree2conllstr(sent)
        sent = sent.split('\n')
        for word in sent:
            word = word.split(' ')
            if word[2] != 'O':
               nltk_entities.append(word[0].encode('utf-8'))

def calc_precision_and_recall(gold, nltk):
    intersection = []
    for i  in range(len(nltk)):
        if i > 2:
            if nltk[i] in gold[i-2:i+2]:
                intersection.append(nltk[i])
        else:
            if nltk[i] in gold[0:4]:
                intersection.append(nltk[i])
    precision = len(intersection)/float(len(gold)) * 100
    recall = len(intersection)/float(len(nltk)) * 100
    print('Percision: %s    Recall: %s' % (precision, recall))
calc_precision_and_recall(golden_entities, nltk_entities)
