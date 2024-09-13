Gamma Test Statistic 
Usage: MainGT [OPTIONS] -i [Input file name]
Available Options:

--help                        show this help.
-i    [string]                Input file name (required).
-oall [string]                Output file name where are stored all the computed points for the Gamma Test 
                              statistic (optional. Default value DataAllDG.dat).
-oreg [string]                Output file name where are stored all the points which are used for the computation 
                              of the regression line (optional. Default value DataDG.dat).
-ores [string]                Ouput file name where are stored the equation of the regression line (optional.
                              Default value DataRes.dat).
-omtest [string]              Output file name where are stored the results of the m-test (optional. Default
                              value DataMTest.dat).
-n [int value]                Number of neighborhood to be considered for the computation of the Gamma Test
                              (default value 20).
-p [float value]              Proportion of points to be saved into the file specified through the -oall option
                              (default value 1.0). This value must reside in the 0 - 1 interval.
-s_output_nb   [int value]    Select nb points w.r.t the output if -s_output_min has a 1 parameter then it selects
                              the nb minima values w.r.t the output.
-s_output_min  [bool value]   Defines if we select the minima or maxima value w.r.t the output (default value 1.
                              Minima values are selected
-s_greedy      [int value]    Select nb points using a greedy method w.r.t the input parameters.
-s_greedy_fast [int value]    Select nb points using a fast greedy method w.r.t the input parameters.
-s_norm                       Normalize input and output data.
-s_rand        [int value]    Select nb points at random without duplicated points.
-s_randseed    [int value]    Set the rand seed value.
-s_distrib_nb  [int value]    Select nb points at random using the inputs parameter values as a probability distribution.
-s_distrib_histo [int value]  Use a histogram with nb bar to compute the probability distribution (default value 100).
-s_select      [int value]    Select one point each nb steps.
-s_input_select_exhaust       Perform the selection of inputs via the Gamma Test (may be long to compute).
-s_input_select_greedy_forward  Perform the selection of inputs via the Gamma Test using a greedy method.
                                The input selection process starts with no inputs and add one input
                                after the other.
-s_input_select_greedy_backward Perform the selection of inputs via the Gamma Test using a greedy method.
                                The input selection process starts with all inputs and remove one input
                                after the other.
-s_mtest_min [int value]      
-s_mtest_max [int value]      Perform the M-test between min and max. If just min or max set then min=max.
-no_gamma_test                Skip the computation of the gamma test (if you just want to perform input selection.
-use_version_2                Use the moving average for the computation of the Gamma Test.
-use_unique_point [int value] Use the neighborhood of a single point to compute the Gamma Test.
-starting_n [int value]       Start computing the Gamma Test after the nth neighbor.
-input_mask    [string]       InputMask[i] = 0 - the input is always not selected.
                              InputMask[i] = 1 - the input is always selected.
                              InputMask[i] = X - the input is tested by the method.
-s_estimator                  Compute the estimated value of y for each y using gamma test.
-s_bucket_size [int]          Set the bucket size of the KD-tree.
-s_sensitivity                Perform sensitivity test on the data set.
-s_start_point [int]          First point to read in the data file.
-s_end_point   [int]          Last point to read in the data file.


