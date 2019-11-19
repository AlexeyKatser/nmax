# Nmax

[![Build Status](https://travis-ci.org/alexeykatser/ak-nmax.svg?branch=master)](https://travis-ci.org/alexeykatser/ak-nmax)

## Описание
Скрипт nmax, который делает следующее:
• читает из входящего потока текстовые данные;
• по завершении ввода выводит n самых больших целых чисел, встретившихся в полученных текстовых данных.
Дополнительные указания:
• числом считается любая непрерывная последовательность цифр в тексте;
• известно, что чисел длиннее 1000 цифр во входных данных нет;
• число n должно быть единственным параметром скрипта;

## Пример запуска:
cat sample_data_40GB.txt | nmax 10000

## Установка
$gem install ak-nmax