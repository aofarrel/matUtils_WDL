# Extract
`matUtils extract` is generally used to either extract a subtree from an existing UShER-formatted protobuff (.pb) phylogenetic tree, or to convert the .pb into another phylogenetic tree format (or some combination of both). These WDL workflows cover some of the most common uses of `matUtils extract`.

## convert to nextstrain JSON
Converts an UShER-formatted pb into at either:
* One Nextstrain-formatted JSON  (`subtrees` is `false`, default)
* A bunch of Nextstrain-formatted JSONs (`subtrees` is `true`)
This type of JSON tree is compatiable with Auspice. Additionally, this format supports embeded metadata (such as sample collection date, etc) so this workflow can optionally take in an array of metadata files, which will be made visible if the tree is viewed in Auspice. If metadata files are included, they must be either a TSV or CSV where the first line is a header, and the first column lists sample IDs.

## convert to newick (NWK)
Converts an UShER-formatted pb into a plaintext file containing a newick (nwk) string representation of the tree. Nwk is a very barebones format compatiable with many (most?) tree visualization software.

## extract subtree
Extract a subtree from an UShER-formatted pb. The `samples_in_subtree` file must have the name of each sample that is to go into the subtree, one sample per line.

