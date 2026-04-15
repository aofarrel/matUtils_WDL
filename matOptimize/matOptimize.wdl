version 1.0

import "../matutils_WDL_library.wdl" as matWDLlib

workflow matOptimize {
	input {
		File input_mat
		Int max_hours = 1
		Float min_improvement = 0.00000001
		Int? max_iterations
	}

	call matWDLlib.matOptimize as matOptimizer {
		input:
			input_mat = input_mat,
			min_improvement = min_improvement,
			max_hours = max_hours,
			max_iterations = max_iterations
	}

	output {
		File optimized_tree = matOptimizer.optimized_tree
	}
}