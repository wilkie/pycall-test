# PyCall test

Run:

```
./install.sh
```

Make sure you have an activated environment!
It should say `(pybin)` somewhere in your prompt. You can activate via:

```
source ./pybin/bin/activate
```

Have your OpenAI key set in your environment: (fill in the part in quotes with your full key)

```
export OPENAI_API_KEY="sk-..."
```

And then run the test ruby code with:

```
bundle exec ruby main.rb
```

And you should see:

```
[[1 2 3]
 [4 5 6]]
[5 6]
[[1 4]
 [2 5]
 [3 6]]
[[14 32]
 [32 77]]
[[1 2]
 [3 4]
 [5 6]]
davinci, gpt-4, gpt-3.5-turbo-16k-0613, text-davinci-001, text-search-curie-query-001, gpt-3.5-turbo, gpt-4-32k, gpt-4-32k-0613, babbage, text-babbage-001, gpt-4-0613, gpt-3.5-turbo-16k, curie-instruct-beta, davinci-similarity, code-davi
nci-edit-001, text-similarity-curie-001, ada-code-search-text, gpt-3.5-turbo-0613, text-search-ada-query-001, babbage-search-query, ada-similarity, text-curie-001, text-search-ada-doc-001, text-search-babbage-query-001, code-search-ada-c
ode-001, curie-search-document, davinci-002, text-search-davinci-query-001, text-search-curie-doc-001, babbage-search-document, babbage-002, gpt-4-32k-0314, babbage-code-search-text, text-embedding-ada-002, davinci-instruct-beta, davinci
-search-query, text-similarity-babbage-001, text-davinci-002, code-search-babbage-text-001, text-davinci-003, text-search-davinci-doc-001, code-search-ada-text-001, gpt-4-0314, ada-search-query, text-similarity-ada-001, ada-code-search-c
ode, whisper-1, text-davinci-edit-001, davinci-search-document, curie-search-query, babbage-similarity, ada, ada-search-document, text-ada-001, text-similarity-davinci-001, curie-similarity, babbage-code-search-code, code-search-babbage-
code-001, text-search-babbage-doc-001, gpt-3.5-turbo-0301, curie,
Hello!
Nice to meet you! How can I assist you today?
```

Which is it printing out some numpy examples, the model list from the OpenAI pythong library, and then the response from Chat-GPT 3.5 for "Hello world." which might differ.
