
Cite the code using: [![DOI](https://zenodo.org/badge/500753141.svg)](https://zenodo.org/badge/latestdoi/500753141)
Project Name: Offline text-independent writer identification using a codebook with structural features
------------------------------------------------------------------------------------------
Link to the repository: 
https://doi.org/10.5281/zenodo.6619233
------------------------------------------------------------------------------------------
Raw datasets are fully accessible and freely available for reseraches purposes.
==IAM Dataset can be easily downloaded from the following link:
	https://fki.tic.heia-fr.ch/databases/download-the-iam-handwriting-database
---------------------------------------------------
==Khatt dataset is available and can be downloaded using this link:
	http://khatt.ideas2serve.net/KHATTDownload.php
-------------------------------------------------------------------------------------------
due to the size restrictions, we prepare sample data files for 100 writers from IAM dataset and 100 writers from KHATT dataset, we prepare these file to provide simple way to run the system.
running the system on the complete set of writers, one need to do the following: 
	1. download the dataset from the link above. both datasets are public, fully available for non-commercial purposes. 
	2. implement the segmentation and preprocessing. 
	3. discard all small connected component (noise and dots, etc) smaller than 60 points length of its contour. To do so, use this script 'discard_small_conn_components.m'.         
	4. run the script 'Test_Imgs_As_Mat.m'  to save the connected components images of all writer as done with the sample data files.
                5. at this point, one can run the system on the whole set of scribes of the dataset.
== Here are sample data files for 100 writers from IAM dataset: 
	Training_IAM_Writers.mat
	Testing_IAM_Writers.mat
== Here are sample data files for 100 writers from KHATT dataset: 
	Training_KHATT_Writers.mat
	Testing_KHATT_Writers.mat
-------------------------------------------------------------------------------------------
The source code files should be used as follows:

Writer_IdentiFication_System M script is used as the main module of the system. through this script, you can specify which target dataset, how many scribes are involved in the expirement, which feature you need to apply
*** Dependencies 
--> WI_Using_CPCA_Feature M script, 
--> WI_Using_CON3_Feature M script, 
---------------------------------------------------
WI_Using_CPCA_Feature M script is the main script of implementing writer identification using CPCA feature. this script need to use the correct parameters settings to give accurate results. the script is annotated very well within its code.
*** Dependencies 
--> WI_System_Main_CPCA M script, 
---------------------------------------------------
WI_System_Main_CPCA M script is used to get the CPCA features, generate the codebook, calculate the histograms and finally implement the classification. each part of this script is annotated to describe its purpose.
*** Dependencies 
--> Generate_CPCA_Feature M script,
--> Calculate_Occurrence_Histogram M script,
--> Calculate_Matrices_Similarities M script,
--> Calculate_Performance M script,
---------------------------------------------------
Generate_CPCA_Feature M script is used to get the CPCA features
*** Dependencies 
--> HW_Contour_Curve_Segmentation M script,
---------------------------------------------------
WI_Using_CON3_Feature M script is the main script of implementing writer identification using CON3 feature. this script need to use the correct parameters settings to give accurate results. the script is annotated very well within its code.
*** Dependencies 
-->WI_System_Main_CON3 M script,
---------------------------------------------------
WI_System_Main_CON3 M script  is used to get the CON3 features, generate the codebook, calculate the histograms and finally implement the classification. each part of this script is annotated to describe its purpose.
*** Dependencies 
-->Generate_CON3_Feature M script,
-->Calculate_Occurrence_Histogram M script,
-->Calculate_Matrices_Similarities M script,
-->Calculate_Performance M script,
---------------------------------------------------
Generate_CON3_Feature M script is used to get the CON3 features
*** Dependencies 
-->Calculate_Concavity_Convexity M script,
-->Contour_Curve_Segmentation_CON2_NEW M script,
---------------------------------------------------
Calculate_Occurrence_Histogram M script, was used to build a histogram for each reference and questioned document.
Calculate_Matrices_Similarities and Calculate_Performance M scripts were used in the classification process.
Distance_Quantaization_CON2_E M script, to get the quantization of the perpendicular distance
Angles_Quantaization M script, to get the quantization of the angles
distChiSq M script was used to calculate Chi square distance
Calculate_Distance was used to calculate Euclidean distance



 



