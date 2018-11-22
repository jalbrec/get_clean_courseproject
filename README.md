## This README explains how the script "run_analysis.R" works. 


1) The working directory must contain:
	
	a. The downloaded and unzipped "UCI HAR Dataset" folder (this folder is obtained by downloading and unzipping the samsung data in the assignment). 
	
	b. My script file of run_analysis.R

2) Source the script file with the code: source("run_analysis.R")

3) The code executes 3 data frames and 1 output file: "final", "final_long", "final_wide" and "GaCA_finalwide.txt".
	
	a. "final_long" and "final_wide" are the dataframes in tidy format. I selected wide for my output file.  
	
	b. The output file "GaCA_finalwide.txt" is the tidy dataset in wide form located in the working directory.   
	
	c. "final" is the above file read back into r as a dataframe. 
