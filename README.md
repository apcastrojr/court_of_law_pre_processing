# court_of_law_pre_processing
The pre-processing for terms in Court of Law text documents.
Under GNU General Public License v 3.0.

For not finding specific libraries in Python or Ruby in Portuguese language that implement stopwords, cleaning and stemming for texts judged by the court of justice, the ruby class was built with the methods to meet this need. This class is made available for the purpose of sharing them with other researchers or entities that need these functions.

Stemming reduce inflected or derived words to their base.

Stopwords removes all articles, prepositions, conjunctions without meanings, words that have no semantic meaning to the text, include in this preprocessing common words in the area of Law that are not important for the context.

Is comum in all Judgments documents include special characters, like: ampersand, double quotes, left and right single quotation, ordinal indicator, section sign, vertical bar, collon, brace, bracket, hyphen and others. These special characters have been removed from all documents (cleaning).

In normalization, all words are placed in lowercase, some accents are removed, characters like ç are placed as the letter c.



How to use:

1-Instantiate the CourtOfLawPreProcessing class:
obj_pre = CourtOfLawPreProcessing.new


2-Calls the method passing the text as a parameter:
obj_pre.begin("...judge text document...")

