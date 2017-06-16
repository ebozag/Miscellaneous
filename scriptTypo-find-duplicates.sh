while read f; do
    perl -ne 'print "$ARGV: $.: $_" if /\b(\w+)\W+\1/' "$f"
done</home/eboza/lista.rst
