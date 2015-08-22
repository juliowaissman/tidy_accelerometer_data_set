# Getting and Cleaning Data Course Project

## A tidy dataset from the data collected from the Samsung Galaxy S smartphone

### 1. Download the zip file with the raw data

In order to obtain the raw data, a script called `download_zipfile.R` was developed. 
In order to use the `run_analysis.R` you need to run this script frist like

```
> source('download_zipfile.R')
```

The was added in the `.gitingnore` file in order to keep this repository only with code
and avoid to load GitHub with data available in other places.

The data is un compressed in the directory `UCI HAR Dataset`, also
included in the `.gitingnore` file. It's important to notice that:

- `UCI HAR Dataset/README.txt` include the general organization of the
datasets.

- `UCI HAR Dataset/features_info.txt` is like a codebook header with
the general organization of the data.

- `UCI HAR Dataset/features_info.txt` is the codebook itself.

- `UCI HAR Dataset/activity_labels.txt` is only to convert a numerical
variable to factor (the activity variable).

- The data is split in two directories `test`and `train`.

- At this point, it's seems that the data in the directories `UCI HAR Dataset/test/Inertial
  Signals/` and `UCI HAR Dataset/train/Inertial Signals/` are not used
  for this project.


### 2. Tidying the data


### 3. A Codebook for the tidy data


### 4. Final words

My english is really nasty, my apologyzes to anyone to try to read my prose. In spanish or in
french i can do better :-).

A really nice course, by the way.

