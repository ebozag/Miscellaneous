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
