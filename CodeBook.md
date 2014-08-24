
## CODE BOOK FOR TIDY DATA


The tidy data is created by manipulating data from the Human Activity Recognition Using Smartphones Dataset.

### Source of Data

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


### Explanation of data

the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

### Steps taken to form tidy dataset
In this tidy data set I have merged the test and training data sets. Then I selected the data columns containing mean and standard deviation of measurements. I added appropriate descriptive variable (column) names. Then I took the mean of each variable by subject and activity. The end result is a tidy data set where each row is for a given subject and a given activity. So there are 6 rows per subject (corresponding to the six activities). Since there are 30 subjects in total, the tidy data set has 180 rows. 


#### Explanation of Data Variables

~~~
The variables are named like this:

sub_id: id code that uniquely identifies each subject
type: numeric
Min: 1
Max: 30

activity: 6 labels for 6 types of activities
type: factor
Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


t -- prefix t stands for time and shows time domain signals which were captured at constant rate of 50 Hz.
tbodyaccxyz -- body acceleration signals
tgravityaccxyz -- gravitational acceleration signals
tbodyaccjerkxyz -- body's linear acceleration jerk signals
tbodygyrojerkxyz -- angular velocity jerk signals 
tbodyaccmag -- Euclidean norm of acceleration signals
tgravityaccmag -- Euclidean norm of gravitational acceleration signals
tbodyaccjerkmag -- Euclidean norm of linear acceleration jerk signals
tbodygyromag -- Euclidean norm of angular velocity signals
tbodygyrojerkmag -- Euclidean norm of anguar velocity signals
f -- frequency domain signals
fbodyaccxyz
fbodyaccjerkxyz
fbodygyroxyz
fbodyaccjerkmag
fbodygyromag
fbodygyrojerkmag 

x,y,z stand for 3-axial signals in the X, Y and Z directions
mean -- mean
std -- standard deviation
~~~

#### Variable names and Descritions

~~~
Variable Name        desc
sub_id            Subject Id
activity	  Activity label
tbodyaccmeanx	  The mean by subject and activity of: mean of bodyacc signal in time domain in the x-axis
tbodyaccmeany  	The mean by subject and activity of: mean of bodyacc signal in time domain in the y-axis
tbodyaccmeanz	The mean by subject and activity of: mean of bodyacc signal in time domain in the z-axis
tbodyaccstdx	The mean by subject and activity of: std. dev of bodyacc signal in time domain in the x-axis
tbodyaccstdy	The mean by subject and activity of: std. dev of bodyacc signal in time domain in the y-axis
tbodyaccstdz	The mean by subject and activity of: std. dev of bodyacc signal in time domain in the z-axis
tgravityaccmeanx	The mean by subject and activity of: mean of gravityacc signal in time domain in the x-axis
tgravityaccmeany	The mean by subject and activity of: mean of gravityacc signal in time domain in the y-axis
tgravityaccmeanz	The mean by subject and activity of: mean of gravityacc signal in time domain in the z-axis
tgravityaccstdx	The mean by subject and activity of: std. dev of gravityacc signal in time domain in the x-axis
tgravityaccstdy	The mean by subject and activity of: std. dev of gravityacc signal in time domain in the y-axis
tgravityaccstdz	The mean by subject and activity of: std. dev of gravityacc signal in time domain in the z-axis
tbodyaccjerkmeanx	The mean by subject and activity of: mean of bodyaccjerk signal in time domain in the x-axis
tbodyaccjerkmeany	The mean by subject and activity of: mean of bodyaccjerk signal in time domain in the y-axis
tbodyaccjerkmeanz	The mean by subject and activity of: mean of bodyaccjerk signal in time domain in the z-axis
tbodyaccjerkstdx	The mean by subject and activity of: std. dev of bodyaccjerk signal in time domain in the x-axis
tbodyaccjerkstdy	The mean by subject and activity of: std. dev of bodyaccjerk signal in time domain in the y-axis
tbodyaccjerkstdz	The mean by subject and activity of: std. dev of bodyaccjerk signal in time domain in the z-axis
tbodygyromeanx	The mean by subject and activity of: mean of bodygyro signal in time domain in the x-axis
tbodygyromeany	The mean by subject and activity of: mean of bodygyro signal in time domain in the y-axis
tbodygyromeanz	The mean by subject and activity of: mean of bodygyro signal in time domain in the z-axis
tbodygyrostdx	The mean by subject and activity of: std. dev of bodygyro signal in time domain in the x-axis
tbodygyrostdy	The mean by subject and activity of: std. dev of bodygyro signal in time domain in the y-axis
tbodygyrostdz	The mean by subject and activity of: std. dev of bodygyro signal in time domain in the z-axis
tbodygyrojerkmeanx	The mean by subject and activity of: mean of bodygyrojerk signal in time domain in the x-axis
tbodygyrojerkmeany	The mean by subject and activity of: mean of bodygyrojerk signal in time domain in the y-axis
tbodygyrojerkmeanz	The mean by subject and activity of: mean of bodygyrojerk signal in time domain in the z-axis
tbodygyrojerkstdx	The mean by subject and activity of: std. dev of bodygyrojerk signal in time domain in the x-axis
tbodygyrojerkstdy	The mean by subject and activity of: std. dev of bodygyrojerk signal in time domain in the y-axis
tbodygyrojerkstdz	The mean by subject and activity of: std. dev of bodygyrojerk signal in time domain in the z-axis
tbodyaccmagmean	The mean by subject and activity of: mean of bodyaccmag signal in time domain in the 
tbodyaccmagstd	The mean by subject and activity of: std. dev of bodyaccmag signal in time domain in the 
tgravityaccmagmean	The mean by subject and activity of: mean of gravityaccmag signal in time domain in the 
tgravityaccmagstd	The mean by subject and activity of: std. dev of gravityaccmag signal in time domain in the 
tbodyaccjerkmagmean	The mean by subject and activity of: mean of bodyaccjerkmag signal in time domain in the 
tbodyaccjerkmagstd	The mean by subject and activity of: std. dev of bodyaccjerkmag signal in time domain in the 
tbodygyromagmean	The mean by subject and activity of: mean of bodygyromag signal in time domain in the 
tbodygyromagstd	The mean by subject and activity of: std. dev of bodygyromag signal in time domain in the 
tbodygyrojerkmagmean	The mean by subject and activity of: mean of bodygyrojerkmag signal in time domain in the 
tbodygyrojerkmagstd	The mean by subject and activity of: std. dev of bodygyrojerkmag signal in time domain in the 
fbodyaccmeanx	The mean by subject and activity of: mean of bodyacc signal in frequency domain in the x-axis
fbodyaccmeany	The mean by subject and activity of: mean of bodyacc signal in frequency domain in the y-axis
fbodyaccmeanz	The mean by subject and activity of: mean of bodyacc signal in frequency domain in the z-axis
fbodyaccstdx	The mean by subject and activity of: std. dev of bodyacc signal in frequency domain in the x-axis
fbodyaccstdy	The mean by subject and activity of: std. dev of bodyacc signal in frequency domain in the y-axis
fbodyaccstdz	The mean by subject and activity of: std. dev of bodyacc signal in frequency domain in the z-axis
fbodyaccmeanfreqx	The mean by subject and activity of: mean of bodyacc signal in frequency domain in the x-axis
fbodyaccmeanfreqy	The mean by subject and activity of: mean of bodyacc signal in frequency domain in the y-axis
fbodyaccmeanfreqz	The mean by subject and activity of: mean of bodyacc signal in frequency domain in the z-axis
fbodyaccjerkmeanx	The mean by subject and activity of: mean of bodyaccjerk signal in frequency domain in the x-axis
fbodyaccjerkmeany	The mean by subject and activity of: mean of bodyaccjerk signal in frequency domain in the y-axis
fbodyaccjerkmeanz	The mean by subject and activity of: mean of bodyaccjerk signal in frequency domain in the z-axis
fbodyaccjerkstdx	The mean by subject and activity of: std. dev of bodyaccjerk signal in frequency domain in the x-axis
fbodyaccjerkstdy	The mean by subject and activity of: std. dev of bodyaccjerk signal in frequency domain in the y-axis
fbodyaccjerkstdz	The mean by subject and activity of: std. dev of bodyaccjerk signal in frequency domain in the z-axis
fbodyaccjerkmeanfreqx	The mean by subject and activity of: mean of bodyaccjerk signal in frequency domain in the x-axis
fbodyaccjerkmeanfreqy	The mean by subject and activity of: mean of bodyaccjerk signal in frequency domain in the y-axis
fbodyaccjerkmeanfreqz	The mean by subject and activity of: mean of bodyaccjerk signal in frequency domain in the z-axis
fbodygyromeanx	The mean by subject and activity of: mean of bodygyro signal in frequency domain in the x-axis
fbodygyromeany	The mean by subject and activity of: mean of bodygyro signal in frequency domain in the y-axis
fbodygyromeanz	The mean by subject and activity of: mean of bodygyro signal in frequency domain in the z-axis
fbodygyrostdx	The mean by subject and activity of: std. dev of bodygyro signal in frequency domain in the x-axis
fbodygyrostdy	The mean by subject and activity of: std. dev of bodygyro signal in frequency domain in the y-axis
fbodygyrostdz	The mean by subject and activity of: std. dev of bodygyro signal in frequency domain in the z-axis
fbodygyromeanfreqx	The mean by subject and activity of: mean of bodygyro signal in frequency domain in the x-axis
fbodygyromeanfreqy	The mean by subject and activity of: mean of bodygyro signal in frequency domain in the y-axis
fbodygyromeanfreqz	The mean by subject and activity of: mean of bodygyro signal in frequency domain in the z-axis
fbodyaccmagmean	The mean by subject and activity of: mean of bodyaccmag signal in frequency domain in the 
fbodyaccmagstd	The mean by subject and activity of: std. dev of bodyaccmag signal in frequency domain 
fbodyaccmagmeanfreq	The mean by subject and activity of: mean of bodyaccmag signal in frequency domain
fbodybodyaccjerkmagmean	The mean by subject and activity of: mean of bodybodyaccjerkmag signal in frequency domain
fbodybodyaccjerkmagstd	The mean by subject and activity of: std. dev of bodybodyaccjerkmag signal in frequency domain
fbodybodyaccjerkmagmeanfreq	The mean by subject and activity of: mean of bodybodyaccjerkmag signal in frequency domain
fbodybodygyromagmean	The mean by subject and activity of: mean of bodybodygyromag signal in frequency domain 
fbodybodygyromagstd	The mean by subject and activity of: std. dev of bodybodygyromag signal in frequency domain  
fbodybodygyromagmeanfreq	The mean by subject and activity of: mean of bodybodygyromag signal in frequency domain 
fbodybodygyrojerkmagmean	The mean by subject and activity of: mean of bodybodygyrojerkmag signal in frequency domain
fbodybodygyrojerkmagstd	The mean by subject and activity of: std. dev of bodybodygyrojerkmag signal in frequency domain
fbodybodygyrojerkmagmeanfreq	The mean by subject and activity of: mean of bodybodygyrojerkmag signal in frequency domain
angletbodyaccmeangravity	The mean by subject and activity of: mean of angular bodyacc signal in  in the y-axis
angletbodyaccjerkmeangravitymean	The mean by subject and activity of: mean of angular bodyaccjerk signal
angletbodygyromeangravitymean	The mean by subject and activity of: mean of angular bodygyro signal 
angletbodygyrojerkmeangravitymean	The mean by subject and activity of: mean of angular bodygyrojerk signal 
anglexgravitymean	The mean by subject and activity of: mean of angular gravity signal in  in the x-axis
angleygravitymean	The mean by subject and activity of: mean of angular gravity signal in  in the y-axis
anglezgravitymean	The mean by subject and activity of: mean ofangular gravity signal in  in the z-axis

~~~




### Summary Statistics of Variables

~~~
sub_id                            
 Min.   : 1.0         
 1st Qu.: 8.0         
 Median :15.5          
 Mean   :15.5          
 3rd Qu.:23.0          
 Max.   :30.0       

activity
WALKING           :30
WALKING_UPSTAIRS  :30
WALKING_DOWNSTAIRS:30
SITTING           :30
STANDING          :30
LAYING            :30 

tbodyaccmeanx
Min.   :0.2216 
1st Qu.:0.2712
Median :0.2770 
Mean   :0.2743
3rd Qu.:0.2800
Max.   :0.3015 

tbodyaccmeany 
Min.   :-0.040514
1st Qu.:-0.020022 
Median :-0.017262
Mean   :-0.017876
3rd Qu.:-0.014936
Max.   :-0.001308


 tbodyaccmeanz       tbodyaccstdx      tbodyaccstdy       tbodyaccstdz    
 Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877  
 1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498  
 Median :-0.10819   Median :-0.7526   Median :-0.50897   Median :-0.6518  
 Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756  
 3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306  
 Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090  

tgravityaccmeanx  tgravityaccmeany   tgravityaccmeanz   tgravityaccstdx  
 Min.   :-0.6800   Min.   :-0.47989   Min.   :-0.49509   Min.   :-0.9968  
 1st Qu.: 0.8376   1st Qu.:-0.23319   1st Qu.:-0.11726   1st Qu.:-0.9825  
 Median : 0.9208   Median :-0.12782   Median : 0.02384   Median :-0.9695  
 Mean   : 0.6975   Mean   :-0.01621   Mean   : 0.07413   Mean   :-0.9638  
 3rd Qu.: 0.9425   3rd Qu.: 0.08773   3rd Qu.: 0.14946   3rd Qu.:-0.9509  
 Max.   : 0.9745   Max.   : 0.95659   Max.   : 0.95787   Max.   :-0.8296  

tgravityaccstdy   tgravityaccstdz   tbodyaccjerkmeanx tbodyaccjerkmeany   
 Min.   :-0.9942   Min.   :-0.9910   Min.   :0.04269   Min.   :-0.0386872  
 1st Qu.:-0.9711   1st Qu.:-0.9605   1st Qu.:0.07396   1st Qu.: 0.0004664  
 Median :-0.9590   Median :-0.9450   Median :0.07640   Median : 0.0094698  
 Mean   :-0.9524   Mean   :-0.9364   Mean   :0.07947   Mean   : 0.0075652  
 3rd Qu.:-0.9370   3rd Qu.:-0.9180   3rd Qu.:0.08330   3rd Qu.: 0.0134008  
 Max.   :-0.6436   Max.   :-0.6102   Max.   :0.13019   Max.   : 0.0568186  

tbodyaccjerkmeanz   tbodyaccjerkstdx  tbodyaccjerkstdy  tbodyaccjerkstdz  
 Min.   :-0.067458   Min.   :-0.9946   Min.   :-0.9895   Min.   :-0.99329  
 1st Qu.:-0.010601   1st Qu.:-0.9832   1st Qu.:-0.9724   1st Qu.:-0.98266  
 Median :-0.003861   Median :-0.8104   Median :-0.7756   Median :-0.88366  
 Mean   :-0.004953   Mean   :-0.5949   Mean   :-0.5654   Mean   :-0.73596  
 3rd Qu.: 0.001958   3rd Qu.:-0.2233   3rd Qu.:-0.1483   3rd Qu.:-0.51212  
 Max.   : 0.038053   Max.   : 0.5443   Max.   : 0.3553   Max.   : 0.03102  

tbodygyromeanx     tbodygyromeany     tbodygyromeanz     tbodygyrostdx    
 Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.9943  
 1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.9735  
 Median :-0.02871   Median :-0.07318   Median : 0.08512   Median :-0.7890  
 Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.6916  
 3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.4414  
 Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910   Max.   : 0.2677  

tbodygyrostdy     tbodygyrostdz     tbodygyrojerkmeanx tbodygyrojerkmeany
 Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721   Min.   :-0.07681  
 1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322   1st Qu.:-0.04552  
 Median :-0.8017   Median :-0.8010   Median :-0.09868   Median :-0.04112  
 Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606   Mean   :-0.04269  
 3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110   3rd Qu.:-0.03842  
 Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209   Max.   :-0.01320  

tbodygyrojerkmeanz  tbodygyrojerkstdx tbodygyrojerkstdy tbodygyrojerkstdz
 Min.   :-0.092500   Min.   :-0.9965   Min.   :-0.9971   Min.   :-0.9954  
 1st Qu.:-0.061725   1st Qu.:-0.9800   1st Qu.:-0.9832   1st Qu.:-0.9848  
 Median :-0.053430   Median :-0.8396   Median :-0.8942   Median :-0.8610  
 Mean   :-0.054802   Mean   :-0.7036   Mean   :-0.7636   Mean   :-0.7096  
 3rd Qu.:-0.048985   3rd Qu.:-0.4629   3rd Qu.:-0.5861   3rd Qu.:-0.4741  
 Max.   :-0.006941   Max.   : 0.1791   Max.   : 0.2959   Max.   : 0.1932  

tbodyaccmagmean   tbodyaccmagstd    tgravityaccmagmean tgravityaccmagstd
 Min.   :-0.9865   Min.   :-0.9865   Min.   :-0.9865    Min.   :-0.9865  
 1st Qu.:-0.9573   1st Qu.:-0.9430   1st Qu.:-0.9573    1st Qu.:-0.9430  
 Median :-0.4829   Median :-0.6074   Median :-0.4829    Median :-0.6074  
 Mean   :-0.4973   Mean   :-0.5439   Mean   :-0.4973    Mean   :-0.5439  
 3rd Qu.:-0.0919   3rd Qu.:-0.2090   3rd Qu.:-0.0919    3rd Qu.:-0.2090  
 Max.   : 0.6446   Max.   : 0.4284   Max.   : 0.6446    Max.   : 0.4284  

tbodyaccjerkmagmean tbodyaccjerkmagstd tbodygyromagmean  tbodygyromagstd  
 Min.   :-0.9928     Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9814  
 1st Qu.:-0.9807     1st Qu.:-0.9765    1st Qu.:-0.9461   1st Qu.:-0.9476  
 Median :-0.8168     Median :-0.8014    Median :-0.6551   Median :-0.7420  
 Mean   :-0.6079     Mean   :-0.5842    Mean   :-0.5652   Mean   :-0.6304  
 3rd Qu.:-0.2456     3rd Qu.:-0.2173    3rd Qu.:-0.2159   3rd Qu.:-0.3602  
 Max.   : 0.4345     Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.3000  

tbodygyrojerkmagmean tbodygyrojerkmagstd fbodyaccmeanx     fbodyaccmeany     
 Min.   :-0.99732     Min.   :-0.9977     Min.   :-0.9952   Min.   :-0.98903  
 1st Qu.:-0.98515     1st Qu.:-0.9805     1st Qu.:-0.9787   1st Qu.:-0.95361  
 Median :-0.86479     Median :-0.8809     Median :-0.7691   Median :-0.59498  
 Mean   :-0.73637     Mean   :-0.7550     Mean   :-0.5758   Mean   :-0.48873  
 3rd Qu.:-0.51186     3rd Qu.:-0.5767     3rd Qu.:-0.2174   3rd Qu.:-0.06341  
 Max.   : 0.08758     Max.   : 0.2502     Max.   : 0.5370   Max.   : 0.52419  

fbodyaccmeanz      fbodyaccstdx      fbodyaccstdy       fbodyaccstdz    
 Min.   :-0.9895   Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872  
 1st Qu.:-0.9619   1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459  
 Median :-0.7236   Median :-0.7470   Median :-0.51338   Median :-0.6441  
 Mean   :-0.6297   Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824  
 3rd Qu.:-0.3183   3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655  
 Max.   : 0.2807   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871  

fbodyaccmeanfreqx  fbodyaccmeanfreqy   fbodyaccmeanfreqz  fbodyaccjerkmeanx
 Min.   :-0.63591   Min.   :-0.379518   Min.   :-0.52011   Min.   :-0.9946  
 1st Qu.:-0.39165   1st Qu.:-0.081314   1st Qu.:-0.03629   1st Qu.:-0.9828  
 Median :-0.25731   Median : 0.007855   Median : 0.06582   Median :-0.8126  
 Mean   :-0.23227   Mean   : 0.011529   Mean   : 0.04372   Mean   :-0.6139  
 3rd Qu.:-0.06105   3rd Qu.: 0.086281   3rd Qu.: 0.17542   3rd Qu.:-0.2820  
 Max.   : 0.15912   Max.   : 0.466528   Max.   : 0.40253   Max.   : 0.4743  
 
fbodyaccjerkmeany fbodyaccjerkmeanz fbodyaccjerkstdx  fbodyaccjerkstdy 
 Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.9951   Min.   :-0.9905  
 1st Qu.:-0.9725   1st Qu.:-0.9796   1st Qu.:-0.9847   1st Qu.:-0.9737  
 Median :-0.7817   Median :-0.8707   Median :-0.8254   Median :-0.7852  
 Mean   :-0.5882   Mean   :-0.7144   Mean   :-0.6121   Mean   :-0.5707  
 3rd Qu.:-0.1963   3rd Qu.:-0.4697   3rd Qu.:-0.2475   3rd Qu.:-0.1685  
 Max.   : 0.2767   Max.   : 0.1578   Max.   : 0.4768   Max.   : 0.3498  
 
fbodyaccjerkstdz    fbodyaccjerkmeanfreqx fbodyaccjerkmeanfreqy
 Min.   :-0.993108   Min.   :-0.57604      Min.   :-0.60197     
 1st Qu.:-0.983747   1st Qu.:-0.28966      1st Qu.:-0.39751     
 Median :-0.895121   Median :-0.06091      Median :-0.23209     
 Mean   :-0.756489   Mean   :-0.06910      Mean   :-0.22810     
 3rd Qu.:-0.543787   3rd Qu.: 0.17660      3rd Qu.:-0.04721     
 Max.   :-0.006236   Max.   : 0.33145      Max.   : 0.19568     
 
fbodyaccjerkmeanfreqz fbodygyromeanx    fbodygyromeany    fbodygyromeanz   
 Min.   :-0.62756      Min.   :-0.9931   Min.   :-0.9940   Min.   :-0.9860  
 1st Qu.:-0.30867      1st Qu.:-0.9697   1st Qu.:-0.9700   1st Qu.:-0.9624  
 Median :-0.09187      Median :-0.7300   Median :-0.8141   Median :-0.7909  
 Mean   :-0.13760      Mean   :-0.6367   Mean   :-0.6767   Mean   :-0.6044  
 3rd Qu.: 0.03858      3rd Qu.:-0.3387   3rd Qu.:-0.4458   3rd Qu.:-0.2635  
 Max.   : 0.23011      Max.   : 0.4750   Max.   : 0.3288   Max.   : 0.4924  

fbodygyrostdx     fbodygyrostdy     fbodygyrostdz     fbodygyromeanfreqx 
 Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.395770  
 1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.213363  
 Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.115527  
 Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.104551  
 3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.: 0.002655  
 Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.249209  

fbodygyromeanfreqy fbodygyromeanfreqz fbodyaccmagmean   fbodyaccmagstd   
 Min.   :-0.66681   Min.   :-0.50749   Min.   :-0.9868   Min.   :-0.9876  
 1st Qu.:-0.29433   1st Qu.:-0.15481   1st Qu.:-0.9560   1st Qu.:-0.9452  
 Median :-0.15794   Median :-0.05081   Median :-0.6703   Median :-0.6513  
 Mean   :-0.16741   Mean   :-0.05718   Mean   :-0.5365   Mean   :-0.6210  
 3rd Qu.:-0.04269   3rd Qu.: 0.04152   3rd Qu.:-0.1622   3rd Qu.:-0.3654  
 Max.   : 0.27314   Max.   : 0.37707   Max.   : 0.5866   Max.   : 0.1787  

fbodyaccmagmeanfreq fbodybodyaccjerkmagmean fbodybodyaccjerkmagstd
 Min.   :-0.31234    Min.   :-0.9940         Min.   :-0.9944       
 1st Qu.:-0.01475    1st Qu.:-0.9770         1st Qu.:-0.9752       
 Median : 0.08132    Median :-0.7940         Median :-0.8126       
 Mean   : 0.07613    Mean   :-0.5756         Mean   :-0.5992       
 3rd Qu.: 0.17436    3rd Qu.:-0.1872         3rd Qu.:-0.2668       
 Max.   : 0.43585    Max.   : 0.5384         Max.   : 0.3163       

fbodybodyaccjerkmagmeanfreq fbodybodygyromagmean fbodybodygyromagstd
 Min.   :-0.12521            Min.   :-0.9865      Min.   :-0.9815    
 1st Qu.: 0.04527            1st Qu.:-0.9616      1st Qu.:-0.9488    
 Median : 0.17198            Median :-0.7657      Median :-0.7727    
 Mean   : 0.16255            Mean   :-0.6671      Mean   :-0.6723    
 3rd Qu.: 0.27593            3rd Qu.:-0.4087      3rd Qu.:-0.4277    
 Max.   : 0.48809            Max.   : 0.2040      Max.   : 0.2367    

fbodybodygyromagmeanfreq fbodybodygyrojerkmagmean fbodybodygyrojerkmagstd
 Min.   :-0.45664         Min.   :-0.9976          Min.   :-0.9976        
 1st Qu.:-0.16951         1st Qu.:-0.9813          1st Qu.:-0.9802        
 Median :-0.05352         Median :-0.8779          Median :-0.8941        
 Mean   :-0.03603         Mean   :-0.7564          Mean   :-0.7715        
 3rd Qu.: 0.08228         3rd Qu.:-0.5831          3rd Qu.:-0.6081        
 Max.   : 0.40952         Max.   : 0.1466          Max.   : 0.2878        

fbodybodygyrojerkmagmeanfreq angletbodyaccmeangravity
 Min.   :-0.18292             Min.   :-0.163043       
 1st Qu.: 0.05423             1st Qu.:-0.011012       
 Median : 0.11156             Median : 0.007878       
 Mean   : 0.12592             Mean   : 0.006556       
 3rd Qu.: 0.20805             3rd Qu.: 0.024393       
 Max.   : 0.42630             Max.   : 0.129154       

angletbodyaccjerkmeangravitymean angletbodygyromeangravitymean
 Min.   :-0.1205540               Min.   :-0.38931             
 1st Qu.:-0.0211694               1st Qu.:-0.01977             
 Median : 0.0031358               Median : 0.02087             
 Mean   : 0.0006439               Mean   : 0.02193             
 3rd Qu.: 0.0220881               3rd Qu.: 0.06460             
 Max.   : 0.2032600               Max.   : 0.44410             

angletbodygyrojerkmeangravitymean anglexgravitymean angleygravitymean 
 Min.   :-0.22367                  Min.   :-0.9471   Min.   :-0.87457  
 1st Qu.:-0.05613                  1st Qu.:-0.7907   1st Qu.: 0.02191  
 Median :-0.01602                  Median :-0.7377   Median : 0.17136  
 Mean   :-0.01137                  Mean   :-0.5243   Mean   : 0.07865  
 3rd Qu.: 0.03200                  3rd Qu.:-0.5823   3rd Qu.: 0.24343  
 Max.   : 0.18238                  Max.   : 0.7378   Max.   : 0.42476  

anglezgravitymean  
 Min.   :-0.873649  
 1st Qu.:-0.083912  
 Median : 0.005079  
 Mean   :-0.040436  
 3rd Qu.: 0.106190  
 Max.   : 0.390444  
~~~
