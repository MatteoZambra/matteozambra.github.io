---
title: "MicroEconoPycs"
classes: wide
layout: single
permalink: /side-projects/mga/
author_profile: true
---



A tool for domestic finances analysis

> [Github repo](https://github.com/MatteoZambra/mga)
> 
> 📝 Minor improvements planified.

## The idea
In the past, I had the problem of evaluating the average stock of my french bank account. I could not find any information on this value. The bank gave the possibility to download a spreasheet of the account operations in a given time range. This source file contained all the information to build a data analysis system to evaluate the average stock.

In parallel, I was following an online course on Finance and Investments. The natural extention of my tool was to include visualization capabilities to see the account expense volumes, what expense item was dominant, what would be the part of capital allocatable for investment, and to see the overall yearly dynamics of the account capital. These are the basics of any investment.

## Functionalities
The Github repo contains a `demo.ipynb` Jupyter notebook that illustrates the main functionalities.

As of the stable version, the functionalities may be summarized as follows.

| Status | Functionality |
| --- | --- | 
| ✅ | Analyze a data source (a spreadsheet) of a year's input and output account monetary fluxes. Summarize the expenses categories (given by the user) and quantify the volume of each category. This gives information about the year's spending habits. | 
| ✅ | Reconstruct the year's account dynamics. Report: the average and final stock values, the average daily gain, as the net quantity saved after expenses.
| ✅ | Simulate $k$-years ahead account dynamics as a function of a given year's spending habits. |

## Development
Initially, it was a single Python script. As I am strengthening my software engineering mastery, I refactored the legacy code, packed it in an extensible code base. 

Additionally, I added a the possibility to perform simulations of likely future scenarios based on observed spending patterns. This extends the analysis beyond the observed year and helps in estimating the capital growth in a given time horizon.

Points of improvement are listed in the repository documentation.
