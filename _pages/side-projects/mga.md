---
title: "MicroEconoPycs"
classes: wide
layout: single
permalink: /side-projects/mga/
author_profile: true
---



A tool for domestic finances analysis

> [Github repo](https://github.com/MatteoZambra/mga)

## The idea
In the past, I had the problem of evaluating the average stock of my french bank account. I could not find any information on this value. The bank gave the possibility to download a spreasheet of the account operations in a given time range. This source file contained all the information to build a data analysis system to evaluate the average stock.

In parallel, I was following an online course on Finance and Investments. The natural extention of my tool was to include visualization capabilities to see the account expense volumes, what expense item was dominant, what would be the part of capital allocatable for investment, and to see the overall yearly dynamics of the account capital. These are the basics of any investment.

## Developments
Initially, it was a single python script. As I am strengthening my software engineering mastery, I decided to refactor the legacy code, pack it in an extensible code base. 

Additionally, I added a the possibility to perform simulations of likely future scenarios based on observed spending patterns. This extends the analysis beyond the observed year and helps in estimating the capital growth in a given time horizon.

Points of improvement are listed in the repository documentation.
