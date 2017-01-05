# Miscellaneous
Repository of commands, scripts, tools, and tips ... 

#### [PERL] Replace a column in a (space separated) file with its MD5 hash.
```
cat <input_file> | perl -MDigest::MD5 -ne 'print "$1 $2 ".Digest::MD5::md5_hex($3)."\n" if /([^ ]+) ([^ ]+) ([^ ]+)/' > <output_file>
```
#### [BASH] Replace spaces with comma (,) in a file.
```
sed -i 's/ /,/g' <input_file>
```
#### [BASH] Count the occurrences of each line length in a file.
*NF* is the filed count, in this case we are subtracting 2, because every record had 2 extra fields.
```
awk '{print NF-2}' <input_file> | sort | uniq -c
```
