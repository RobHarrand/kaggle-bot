This repo contains files used to automatically create Kaggle kernels containing basic machine learning code.

The files are,

- **kaggle-kernel-bot.sh** This bash script asks the user for a dataset address, initialises the new kernel metadata (json file), and edits the metadata to contain the dataset address. It also makes the title and slug unique by adding a timestamp
- **bot.ipynb** This is an R Jupyter Notebook that creates the new kernel. It finds a CSV file, tries to figure out which column is the target variable, removes certain columns, imputes certain values, then applies 3 machine learning models and displays a ROC plot
- **bot_markdown.Rmd** The original R markdown file that does the above. I used a program called **notedown** to convert between the R markdown file and the R Jupyter Notebook file
