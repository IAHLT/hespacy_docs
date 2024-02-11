# Hebrew Pipeline

This is the documentation for IAHLT Hebrew pipeline.

## Installation

To install the pipeline with the given wheel file, run the following command:

```bash
pip install hespacy-0.0.1-py3-none-any.whl -q
```
Note: A version of the wheel might be different, so please replace it with the correct name.

## Access

For access to the pipeline, please log in, using the following command in your terminal:
```bash
huggingface-cli login
```
And paste the API key provided by the IAHLT team.

## Usage

Given the pipeline is installed, you can use it as follows:

```python
from hespacy import Hebrew

nlp = Hebrew()

sentence = "אני מבקש לפרוע את השיק שקיבלתי מהלקוח"
doc = nlp(sentence)

for token in doc:
    print(token.text, token.lemma_, token.pos_, token.tag_, token.dep_,
          token.shape_, token.is_alpha, token.is_stop)

# print the named entities in the text
for ent in doc.ents:
    print(ent.text, ent.label_)
```

Because the pipeline is based on spaCy, you can check the [spaCy documentation](https://spacy.io/) for more information on how to use the pipeline.