# luca-challenge

LUCA challenge for responsible use of AI

## what

Search engines allow us to quickly find information on the Internet. They do so by indexing and ranking websites, which inherently introduces biases in the search results. Moreover, search engines customize search results based on the profile of the user (e.g. location or recorded on-line activity), which introduces additional biases on the information that users find online. Google, as one of the world’s largest search engines and news aggregators, has a tremendous power over what information people are exposed to. When it comes to political information, it is crucial to investigate the possible biases and self-reinforcing processes that Google in-troduces with their algorithms.

## data sources

We quantify the intensity of personalization in Google Search and Google News results during the the German federal elections in 2017, and model how personalization can increase political polarization.

Google search query data were obtained from the [Datenspende BTW17 project](https://datenspende.algorithmwatch.org/). These data contain the first page of both Google Search and Google News results for specific search queries, as donated by over 4000 volunteers, for every day during the two months leading up to the German federal elections (July 19th – September 23rd).

## how to reproduce the results

We provide a docker image for convenience.

```bash
git clone git@github.com:palmerabollo/luca-challenge.git
cd luca-challenge
docker build -t luca .
docker run --rm -p 8888:8888 -v $(pwd):/notebook luca
```

It will show you a token. Open http://localhost:8888, enter the token, and play any of the available notebooks:
- format_data.ipynb: prepares data to be analyzed (not mandatory)
- study_data.ipynb: analyzes data

Note: 32GB RAM recommended.