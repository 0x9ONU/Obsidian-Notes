Date: 16th June 2023
Date Modified: 16th June 2023
File Folder: Machine Learning
#MachineLearning

# Machine Learning Process

Can be broken down into **three** major categories:

**Data Pre-Processing**:
- Import the data
- Clean the data
- Split into training & test sets
- Feature Scaling

**Modelling**
- Build the model
- Train the model
- Make predictions

**Evaluation**
- Calculate performance metrics
- Module Evaluation

# What is Data Pre-Processing?

The process of preparing data for analysis
- cleaning, transforming, and converting the data into a suitable format

```ad-important
title: Goal
To improve the quality of the data and make it easier to analyze, leading to more accurate results
- Helps to ensure that the data is of high quality and ready for further analysis
```

```ad-example
Common tasks include:
- Filling in missing values
- Removing outliers
- Normalizing the data
- Converting the data into a format taht can be easily analyzed by computers and algorithms
```

## Importance

If the data used to train the model is of poor quality, the model will be improperly trained and not be useful for the analysis.

```ad-note
Data of good quality that has been pre-processed is *more powerful than* the best algorithm possible
- Bad data trains bad models
```

## Data Preprocessing Seteps
- Getting Dataset
- Import Libraries
- Import Datasets
- Finding Missing Values (if any)
- Encoding Categorical Data
- Splitting Dataset into Training & Test Set
- Feature Scaling

# Training Set & Test Set

Two separate datasets in machine learning

**Training Set** - Used to train the model to make predictions

**Test Set** - Used to evaluate the accuracy and performance of the trained model on new data.

```ad-important
This is done to prevent **overfitting**:
- When a model is too closely fitted tot he training data and does not generalize well to new data
```

## Example


