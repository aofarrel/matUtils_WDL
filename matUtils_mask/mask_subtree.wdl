version 1.0
import "../matutils_WDL_library.wdl" as matWDLlib

workflow Mask_Subtree_by_Position {
    input {
        File pb_tree
        File mask_tsv
        File highly_clonal_samples
    }
    
    String basename = basename(pb_tree, ".pb")
    
    call matWDLlib.extract as extract {
        input:
            input_mat = pb_tree,
            samples = highly_clonal_samples
    }

    call matWDLlib.mask as mask {
        input:
            input_mat = extract.subtree,
            mask_tsv = mask_tsv
    }

    output {
        File unmasked_subtree = extract.subtree
        File masked_tree = mask.masked_tree
    }
}