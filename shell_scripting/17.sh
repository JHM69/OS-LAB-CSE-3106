#!/bin/bash
echo "Enter a sentence: "
read sentence
vowels=$(echo "$sentence" | tr -cd 'aeiouAEIOU' | wc -c)
consonants=$(echo "$sentence" | tr -cd 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ' | wc -c)
echo "Number of vowels: $vowels"
echo "Number of consonants: $consonants"