#!/usr/bin/env perl

use strict;
use warnings;
use experimental 'smartmatch';

# Task 1: Missing Numbers
# Submitted by: Mohammad S Anwar
# 
# You are given an array of unique numbers.
# Write a script to find out all missing numbers in the range 0..$n where $n is the array size.
# 
# Example 1
# Input: @array = (0,1,3)
# Output: 2
# 
# The array size i.e. total element count is 3, so the range is 0..3.
# The missing number is 2 in the given array.
# 
# Example 2
# Input: @array = (0,1)
# Output: 2
# 
# The array size is 2, therefore the range is 0..2.
# The missing number is 2.


my @missing =  map { $_ ~~ \@ARGV ? () : $_ }
                   (0..scalar @ARGV);
printf "The missing %s %s\n", 
    (scalar @missing > 1) ? 'numbers are:'
                          : 'number is',
    (join ', ', @missing);
