# Script to run the test case. Maximum amount of data is (120 x 120) x 20000 for 8 gb ram system

./testv05 -m 120 -n 120 -RE 0.2 -nTrials 20 -uncertainty 1e-6 -UN 0.0 -US 0.0 -UE 0.0 -UW 0.0 -ksp_rtol 1e-50 -ksp_atol 1e-5 -pc_type mg -ksp_type fgmres -ksp_gmres_restart 500 -ksp_max_it 200 -ksp_gmres_modifiedgramschmidt
