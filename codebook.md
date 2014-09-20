
# codebook.md
## Setup and execution instructions
In order to make a correct implementation, it is necessary to follow these
steps:

1. Download the source of information from files:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Extract the files and include them in the working directory:
> getwd()
[1] "/Users/Paco"

3. Save the file with the code run_analysis.R 

4. Function call to generate the tidy data set
> source("run_analysis.R")
> tidydata<-run_analysis()

## Dataset structure
> names(tidydata)

 [1] "label"                        "subject"                     
 [3] "tBodyAccmeanX"                "tBodyAccmeanY"               
 [5] "tBodyAccmeanZ"                "tBodyAccstdX"                
 [7] "tBodyAccstdY"                 "tBodyAccstdZ"                
 [9] "tGravityAccmeanX"             "tGravityAccmeanY"            
[11] "tGravityAccmeanZ"             "tGravityAccstdX"             
[13] "tGravityAccstdY"              "tGravityAccstdZ"             
[15] "tBodyAccJerkmeanX"            "tBodyAccJerkmeanY"           
[17] "tBodyAccJerkmeanZ"            "tBodyAccJerkstdX"            
[19] "tBodyAccJerkstdY"             "tBodyAccJerkstdZ"            
[21] "tBodyGyromeanX"               "tBodyGyromeanY"              
[23] "tBodyGyromeanZ"               "tBodyGyrostdX"               
[25] "tBodyGyrostdY"                "tBodyGyrostdZ"               
[27] "tBodyGyroJerkmeanX"           "tBodyGyroJerkmeanY"          
[29] "tBodyGyroJerkmeanZ"           "tBodyGyroJerkstdX"           
[31] "tBodyGyroJerkstdY"            "tBodyGyroJerkstdZ"           
[33] "tBodyAccMagmean"              "tBodyAccMagstd"              
[35] "tGravityAccMagmean"           "tGravityAccMagstd"           
[37] "tBodyAccJerkMagmean"          "tBodyAccJerkMagstd"          
[39] "tBodyGyroMagmean"             "tBodyGyroMagstd"             
[41] "tBodyGyroJerkMagmean"         "tBodyGyroJerkMagstd"         
[43] "fBodyAccmeanX"                "fBodyAccmeanY"               
[45] "fBodyAccmeanZ"                "fBodyAccstdX"                
[47] "fBodyAccstdY"                 "fBodyAccstdZ"                
[49] "fBodyAccmeanFreqX"            "fBodyAccmeanFreqY"           
[51] "fBodyAccmeanFreqZ"            "fBodyAccJerkmeanX"           
[53] "fBodyAccJerkmeanY"            "fBodyAccJerkmeanZ"           
[55] "fBodyAccJerkstdX"             "fBodyAccJerkstdY"            
[57] "fBodyAccJerkstdZ"             "fBodyAccJerkmeanFreqX"       
[59] "fBodyAccJerkmeanFreqY"        "fBodyAccJerkmeanFreqZ"       
[61] "fBodyGyromeanX"               "fBodyGyromeanY"              
[63] "fBodyGyromeanZ"               "fBodyGyrostdX"               
[65] "fBodyGyrostdY"                "fBodyGyrostdZ"               
[67] "fBodyGyromeanFreqX"           "fBodyGyromeanFreqY"          
[69] "fBodyGyromeanFreqZ"           "fBodyAccMagmean"             
[71] "fBodyAccMagstd"               "fBodyAccMagmeanFreq"         
[73] "fBodyBodyAccJerkMagmean"      "fBodyBodyAccJerkMagstd"      
[75] "fBodyBodyAccJerkMagmeanFreq"  "fBodyBodyGyroMagmean"        
[77] "fBodyBodyGyroMagstd"          "fBodyBodyGyroMagmeanFreq"    
[79] "fBodyBodyGyroJerkMagmean"     "fBodyBodyGyroJerkMagstd"     
[81] "fBodyBodyGyroJerkMagmeanFreq"

## Summary Data
> summary(tidydata)
                label       subject    tBodyAccmeanX    tBodyAccmeanY      
 WALKING           :30   1      :  6   Min.   :0.2216   Min.   :-0.040514  
 WALKING_UPSTAIRS  :30   3      :  6   1st Qu.:0.2712   1st Qu.:-0.020022  
 WALKING_DOWNSTAIRS:30   5      :  6   Median :0.2770   Median :-0.017262  
 SITTING           :30   6      :  6   Mean   :0.2743   Mean   :-0.017876  
 STANDING          :30   7      :  6   3rd Qu.:0.2800   3rd Qu.:-0.014936  
 LAYING            :30   8      :  6   Max.   :0.3015   Max.   :-0.001308  
                         (Other):144                                       
 tBodyAccmeanZ       tBodyAccstdX      tBodyAccstdY       tBodyAccstdZ     tGravityAccmeanX 
 Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800  
 1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.: 0.8376  
 Median :-0.10819   Median :-0.7526   Median :-0.50897   Median :-0.6518   Median : 0.9208  
 Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756   Mean   : 0.6975  
 3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.: 0.9425  
 Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090   Max.   : 0.9745  
                                                                                            tGravityAccmeanY   tGravityAccmeanZ   tGravityAccstdX   tGravityAccstdY   tGravityAccstdZ  
 Min.   :-0.47989   Min.   :-0.49509   Min.   :-0.9968   Min.   :-0.9942   Min.   :-0.9910  
 1st Qu.:-0.23319   1st Qu.:-0.11726   1st Qu.:-0.9825   1st Qu.:-0.9711   1st Qu.:-0.9605  
 Median :-0.12782   Median : 0.02384   Median :-0.9695   Median :-0.9590   Median :-0.9450  
 Mean   :-0.01621   Mean   : 0.07413   Mean   :-0.9638   Mean   :-0.9524   Mean   :-0.9364  
 3rd Qu.: 0.08773   3rd Qu.: 0.14946   3rd Qu.:-0.9509   3rd Qu.:-0.9370   3rd Qu.:-0.9180  
 Max.   : 0.95659   Max.   : 0.95787   Max.   :-0.8296   Max.   :-0.6436   Max.   :-0.6102  
                                                                                            tBodyAccJerkmeanX tBodyAccJerkmeanY    tBodyAccJerkmeanZ   tBodyAccJerkstdX 
 Min.   :0.04269   Min.   :-0.0386872   Min.   :-0.067458   Min.   :-0.9946  
 1st Qu.:0.07396   1st Qu.: 0.0004664   1st Qu.:-0.010601   1st Qu.:-0.9832  
 Median :0.07640   Median : 0.0094698   Median :-0.003861   Median :-0.8104  
 Mean   :0.07947   Mean   : 0.0075652   Mean   :-0.004953   Mean   :-0.5949  
 3rd Qu.:0.08330   3rd Qu.: 0.0134008   3rd Qu.: 0.001958   3rd Qu.:-0.2233  
 Max.   :0.13019   Max.   : 0.0568186   Max.   : 0.038053   Max.   : 0.5443  
tBodyAccJerkstdY  tBodyAccJerkstdZ   tBodyGyromeanX     tBodyGyromeanY    
 Min.   :-0.9895   Min.   :-0.99329   Min.   :-0.20578   Min.   :-0.20421  
 1st Qu.:-0.9724   1st Qu.:-0.98266   1st Qu.:-0.04712   1st Qu.:-0.08955  
 Median :-0.7756   Median :-0.88366   Median :-0.02871   Median :-0.07318  
 Mean   :-0.5654   Mean   :-0.73596   Mean   :-0.03244   Mean   :-0.07426  
 3rd Qu.:-0.1483   3rd Qu.:-0.51212   3rd Qu.:-0.01676   3rd Qu.:-0.06113  
 Max.   : 0.3553   Max.   : 0.03102   Max.   : 0.19270   Max.   : 0.02747  
tBodyGyromeanZ     tBodyGyrostdX     tBodyGyrostdY     tBodyGyrostdZ     tBodyGyroJerkmeanX
 Min.   :-0.07245   Min.   :-0.9943   Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721  
 1st Qu.: 0.07475   1st Qu.:-0.9735   1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322  
 Median : 0.08512   Median :-0.7890   Median :-0.8017   Median :-0.8010   Median :-0.09868  
 Mean   : 0.08744   Mean   :-0.6916   Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606  
 3rd Qu.: 0.10177   3rd Qu.:-0.4414   3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110  
 Max.   : 0.17910   Max.   : 0.2677   Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209  
                                                                                            tBodyGyroJerkmeanY tBodyGyroJerkmeanZ  tBodyGyroJerkstdX tBodyGyroJerkstdY tBodyGyroJerkstdZ
 Min.   :-0.07681   Min.   :-0.092500   Min.   :-0.9965   Min.   :-0.9971   Min.   :-0.9954  
 1st Qu.:-0.04552   1st Qu.:-0.061725   1st Qu.:-0.9800   1st Qu.:-0.9832   1st Qu.:-0.9848  
 Median :-0.04112   Median :-0.053430   Median :-0.8396   Median :-0.8942   Median :-0.8610  
 Mean   :-0.04269   Mean   :-0.054802   Mean   :-0.7036   Mean   :-0.7636   Mean   :-0.7096  
 3rd Qu.:-0.03842   3rd Qu.:-0.048985   3rd Qu.:-0.4629   3rd Qu.:-0.5861   3rd Qu.:-0.4741  
 Max.   :-0.01320   Max.   :-0.006941   Max.   : 0.1791   Max.   : 0.2959   Max.   : 0.1932  
                                                                                             tBodyAccMagmean   tBodyAccMagstd    tGravityAccMagmean tGravityAccMagstd tBodyAccJerkMagmean
 Min.   :-0.9865   Min.   :-0.9865   Min.   :-0.9865    Min.   :-0.9865   Min.   :-0.9928    
 1st Qu.:-0.9573   1st Qu.:-0.9430   1st Qu.:-0.9573    1st Qu.:-0.9430   1st Qu.:-0.9807    
 Median :-0.4829   Median :-0.6074   Median :-0.4829    Median :-0.6074   Median :-0.8168    
 Mean   :-0.4973   Mean   :-0.5439   Mean   :-0.4973    Mean   :-0.5439   Mean   :-0.6079    
 3rd Qu.:-0.0919   3rd Qu.:-0.2090   3rd Qu.:-0.0919    3rd Qu.:-0.2090   3rd Qu.:-0.2456    
 Max.   : 0.6446   Max.   : 0.4284   Max.   : 0.6446    Max.   : 0.4284   Max.   : 0.4345    
                                                                                             tBodyAccJerkMagstd tBodyGyroMagmean  tBodyGyroMagstd   tBodyGyroJerkMagmean
 Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9814   Min.   :-0.99732    
 1st Qu.:-0.9765    1st Qu.:-0.9461   1st Qu.:-0.9476   1st Qu.:-0.98515    
 Median :-0.8014    Median :-0.6551   Median :-0.7420   Median :-0.86479    
 Mean   :-0.5842    Mean   :-0.5652   Mean   :-0.6304   Mean   :-0.73637    
 3rd Qu.:-0.2173    3rd Qu.:-0.2159   3rd Qu.:-0.3602   3rd Qu.:-0.51186    
 Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.3000   Max.   : 0.08758    
tBodyGyroJerkMagstd fBodyAccmeanX     fBodyAccmeanY      fBodyAccmeanZ      fBodyAccstX    
 Min.   :-0.9977     Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895   Min.   :-0.9966  
 1st Qu.:-0.9805     1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619   1st Qu.:-0.9820  
 Median :-0.8809     Median :-0.7691   Median :-0.59498   Median :-0.7236   Median :-0.7470  
 Mean   :-0.7550     Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297   Mean   :-0.5522  
 3rd Qu.:-0.5767     3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183   3rd Qu.:-0.1966  
 Max.   : 0.2502     Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807   Max.   : 0.6585  
                                                                                             fBodyAccstdY       fBodyAccstdZ     fBodyAccmeanFreqX  fBodyAccmeanFreqY  
 Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.63591   Min.   :-0.379518  
 1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.39165   1st Qu.:-0.081314  
 Median :-0.51338   Median :-0.6441   Median :-0.25731   Median : 0.007855  
 Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.23227   Mean   : 0.011529  
 3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.06105   3rd Qu.: 0.086281  
 Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.15912   Max.   : 0.466528  
fBodyAccmeanFreqZ  fBodyAccJerkmeanX fBodyAccJerkmeanY fBodyAccJerkmeanZ fBodyAccJerksX 
 Min.   :-0.52011   Min.   :-0.9946   Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.9951  
 1st Qu.:-0.03629   1st Qu.:-0.9828   1st Qu.:-0.9725   1st Qu.:-0.9796   1st Qu.:-0.9847  
 Median : 0.06582   Median :-0.8126   Median :-0.7817   Median :-0.8707   Median :-0.8254  
 Mean   : 0.04372   Mean   :-0.6139   Mean   :-0.5882   Mean   :-0.7144   Mean   :-0.6121  
 3rd Qu.: 0.17542   3rd Qu.:-0.2820   3rd Qu.:-0.1963   3rd Qu.:-0.4697   3rd Qu.:-0.2475  
 Max.   : 0.40253   Max.   : 0.4743   Max.   : 0.2767   Max.   : 0.1578   Max.   : 0.4768  
                                                                                           fBodyAccJerkstdY  fBodyAccJerkstdZ    fBodyAccJerkmeanFreqX fBodyAccJerkmeanFreqY
 Min.   :-0.9905   Min.   :-0.993108   Min.   :-0.57604      Min.   :-0.60197     
 1st Qu.:-0.9737   1st Qu.:-0.983747   1st Qu.:-0.28966      1st Qu.:-0.39751     
 Median :-0.7852   Median :-0.895121   Median :-0.06091      Median :-0.23209     
 Mean   :-0.5707   Mean   :-0.756489   Mean   :-0.06910      Mean   :-0.22810     
 3rd Qu.:-0.1685   3rd Qu.:-0.543787   3rd Qu.: 0.17660      3rd Qu.:-0.04721     
 Max.   : 0.3498   Max.   :-0.006236   Max.   : 0.33145      Max.   : 0.19568     
                                                                                  fBodyAccJerkmeanFreqZ fBodyGyromeanX    fBodyGyromeanY    fBodyGyromeanZ   
 Min.   :-0.62756      Min.   :-0.9931   Min.   :-0.9940   Min.   :-0.9860  
 1st Qu.:-0.30867      1st Qu.:-0.9697   1st Qu.:-0.9700   1st Qu.:-0.9624  
 Median :-0.09187      Median :-0.7300   Median :-0.8141   Median :-0.7909  
 Mean   :-0.13760      Mean   :-0.6367   Mean   :-0.6767   Mean   :-0.6044  
 3rd Qu.: 0.03858      3rd Qu.:-0.3387   3rd Qu.:-0.4458   3rd Qu.:-0.2635  
 Max.   : 0.23011      Max.   : 0.4750   Max.   : 0.3288   Max.   : 0.4924  
fBodyGyrostdX     fBodyGyrostdY     fBodyGyrostdZ     fBodyGyromeanFreqX  fBodyGyromeanFreqY
 Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.395770   Min.   :-0.66681  
 1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.213363   1st Qu.:-0.29433  
 Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.115527   Median :-0.15794  
 Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.104551   Mean   :-0.16741  
 3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.: 0.002655   3rd Qu.:-0.04269  
 Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.249209   Max.   : 0.27314  
                                                                                             fBodyGyromeanFreqZ fBodyAccMagmean   fBodyAccMagstd    fBodyAccMagmeanFreq
 Min.   :-0.50749   Min.   :-0.9868   Min.   :-0.9876   Min.   :-0.31234   
 1st Qu.:-0.15481   1st Qu.:-0.9560   1st Qu.:-0.9452   1st Qu.:-0.01475   
 Median :-0.05081   Median :-0.6703   Median :-0.6513   Median : 0.08132   
 Mean   :-0.05718   Mean   :-0.5365   Mean   :-0.6210   Mean   : 0.07613   
 3rd Qu.: 0.04152   3rd Qu.:-0.1622   3rd Qu.:-0.3654   3rd Qu.: 0.17436   
 Max.   : 0.37707   Max.   : 0.5866   Max.   : 0.1787   Max.   : 0.43585   
fBodyBodyAccJerkMagmean fBodyBodyAccJerkMagstd fBodyBodyAccJerkMagmeanFreq
 Min.   :-0.9940         Min.   :-0.9944        Min.   :-0.12521           
 1st Qu.:-0.9770         1st Qu.:-0.9752        1st Qu.: 0.04527           
 Median :-0.7940         Median :-0.8126        Median : 0.17198           
 Mean   :-0.5756         Mean   :-0.5992        Mean   : 0.16255           
 3rd Qu.:-0.1872         3rd Qu.:-0.2668        3rd Qu.: 0.27593           
 Max.   : 0.5384         Max.   : 0.3163        Max.   : 0.48809           
fBodyBodyGyroMagmean fBodyBodyGyroMagstd fBodyBodyGyroMagmeanFreq fBodyBodyGyroJerkMagmean
 Min.   :-0.9865      Min.   :-0.9815     Min.   :-0.45664         Min.   :-0.9976         
 1st Qu.:-0.9616      1st Qu.:-0.9488     1st Qu.:-0.16951         1st Qu.:-0.9813         
 Median :-0.7657      Median :-0.7727     Median :-0.05352         Median :-0.8779         
 Mean   :-0.6671      Mean   :-0.6723     Mean   :-0.03603         Mean   :-0.7564         
 3rd Qu.:-0.4087      3rd Qu.:-0.4277     3rd Qu.: 0.08228         3rd Qu.:-0.5831         
 Max.   : 0.2040      Max.   : 0.2367     Max.   : 0.40952         Max.   : 0.1466         
                                                                                           fBodyBodyGyroJerkMagstd fBodyBodyGyroJerkMagmeanFreq
 Min.   :-0.9976         Min.   :-0.18292            
 1st Qu.:-0.9802         1st Qu.: 0.05423            
 Median :-0.8941         Median : 0.11156            
 Mean   :-0.7715         Mean   : 0.12592            
 3rd Qu.:-0.6081         3rd Qu.: 0.20805            
 Max.   : 0.2878         Max.   : 0.42630    
 
## Sample Data

> head(tidydata, 3)
      label subject tBodyAccmeanX tBodyAccmeanY tBodyAccmeanZ tBodyAccstdX tBodyAccstdY
1: STANDING       1     0.2789176  -0.016137590    -0.1106018   -0.9957599   -0.9731901
2:  SITTING       1     0.2612376  -0.001308288    -0.1045442   -0.9772290   -0.9226186
3:   LAYING       1     0.2215982  -0.040513953    -0.1132036   -0.9280565   -0.8368274
   tBodyAccstdZ tGravityAccmeanX tGravityAccmeanY tGravityAccmeanZ tGravityAccstdX
1:   -0.9797759        0.9429520       -0.2729838       0.01349058      -0.9937630
2:   -0.9395863        0.8315099        0.2044116       0.33204370      -0.9684571
3:   -0.8260614       -0.2488818        0.7055498       0.44581772      -0.8968300
   tGravityAccstdY tGravityAccstdZ tBodyAccJerkmeanX tBodyAccJerkmeanY tBodyAccJerkmeanZ
1:      -0.9812260      -0.9763241        0.07537665      0.0079757309      -0.003685250
2:      -0.9355171      -0.9490409        0.07748252     -0.0006191028      -0.003367792
3:      -0.9077200      -0.8523663        0.08108653      0.0038382040       0.010834236
   tBodyAccJerkstdX tBodyAccJerkstdY tBodyAccJerkstdZ tBodyGyromeanX tBodyGyromeanY
1:       -0.9946045       -0.9856487       -0.9922512    -0.02398773    -0.05939722
2:       -0.9864307       -0.9813720       -0.9879108    -0.04535006    -0.09192415
3:       -0.9584821       -0.9241493       -0.9548551    -0.01655309    -0.06448612
   tBodyGyromeanZ tBodyGyrostdX tBodyGyrostdY tBodyGyrostdZ tBodyGyroJerkmeanX
1:     0.07480075    -0.9871919    -0.9877344    -0.9806456        -0.09960921
2:     0.06293138    -0.9772113    -0.9664739    -0.9414259        -0.09367938
3:     0.14868944    -0.8735439    -0.9510904    -0.9082847        -0.10727095
   tBodyGyroJerkmeanY tBodyGyroJerkmeanZ tBodyGyroJerkstdX tBodyGyroJerkstdY
1:        -0.04406279        -0.04895055        -0.9929451        -0.9951379
2:        -0.04021181        -0.04670263        -0.9917316        -0.9895181
3:        -0.04151729        -0.07405012        -0.9186085        -0.9679072
   tBodyGyroJerkstdZ tBodyAccMagmean tBodyAccMagstd tGravityAccMagmean tGravityAccMagstd
1:        -0.9921085      -0.9842782     -0.9819429         -0.9842782        -0.9819429
2:        -0.9879358      -0.9485368     -0.9270784         -0.9485368        -0.9270784
3:        -0.9577902      -0.8419292     -0.7951449         -0.8419292        -0.7951449
   tBodyAccJerkMagmean tBodyAccJerkMagstd tBodyGyroMagmean tBodyGyroMagstd
1:          -0.9923678         -0.9930962       -0.9764938      -0.9786900
2:          -0.9873642         -0.9841200       -0.9308925      -0.9345318
3:          -0.9543963         -0.9282456       -0.8747595      -0.8190102
   tBodyGyroJerkMagmean tBodyGyroJerkMagstd fBodyAccmeanX fBodyAccmeanY fBodyAccmeanZ
1:           -0.9949668          -0.9947332    -0.9952499    -0.9770708    -0.9852971
2:           -0.9919763          -0.9883087    -0.9796412    -0.9440846    -0.9591849
3:           -0.9634610          -0.9358410    -0.9390991    -0.8670652    -0.8826669
   fBodyAccstdX fBodyAccstdY fBodyAccstdZ fBodyAccmeanFreqX fBodyAccmeanFreqY
1:   -0.9960283   -0.9722931   -0.9779373        0.08651536        0.11747895
2:   -0.9764123   -0.9172750   -0.9344696       -0.04951360        0.07594608
3:   -0.9244374   -0.8336256   -0.8128916       -0.15879267        0.09753484
   fBodyAccmeanFreqZ fBodyAccJerkmeanX fBodyAccJerkmeanY fBodyAccJerkmeanZ fBodyAccJerkstdX
1:        0.24485859        -0.9946308        -0.9854187        -0.9907522       -0.9950738
2:        0.23882987        -0.9865970        -0.9815795        -0.9860531       -0.9874930
3:        0.08943766        -0.9570739        -0.9224626        -0.9480609       -0.9641607
   fBodyAccJerkstdY fBodyAccJerkstdZ fBodyAccJerkmeanFreqX fBodyAccJerkmeanFreqY
1:       -0.9870182       -0.9923498             0.3141829            0.03916190
2:       -0.9825139       -0.9883392             0.2566108            0.04754378
3:       -0.9322179       -0.9605870             0.1324191            0.02451362
   fBodyAccJerkmeanFreqZ fBodyGyromeanX fBodyGyromeanY fBodyGyromeanZ fBodyGyrostdX
1:            0.13858148     -0.9863868     -0.9889845     -0.9807731    -0.9874971
2:            0.09239200     -0.9761615     -0.9758386     -0.9513155    -0.9779042
3:            0.02438795     -0.8502492     -0.9521915     -0.9093027    -0.8822965
   fBodyGyrostdY fBodyGyrostdZ fBodyGyromeanFreqX fBodyGyromeanFreqY fBodyGyromeanFreqZ
1:    -0.9871077    -0.9823453       -0.120293021        -0.04471920         0.10060764
2:    -0.9623450    -0.9439178        0.189153021         0.06312707        -0.02978392
3:    -0.9512320    -0.9165825       -0.003546796        -0.09152913         0.01045813
   fBodyAccMagmean fBodyAccMagstd fBodyAccMagmeanFreq fBodyBodyAccJerkMagmean
1:      -0.9853564     -0.9823138          0.28455529              -0.9925425
2:      -0.9477829     -0.9284448          0.23665501              -0.9852621
3:      -0.8617676     -0.7983009          0.08640856              -0.9333004
   fBodyBodyAccJerkMagstd fBodyBodyAccJerkMagmeanFreq fBodyBodyGyroMagmean
1:             -0.9925360                   0.4222201           -0.9846176
2:             -0.9816062                   0.3518522           -0.9584356
3:             -0.9218040                   0.2663912           -0.8621902
   fBodyBodyGyroMagstd fBodyBodyGyroMagmeanFreq fBodyBodyGyroJerkMagmean
1:          -0.9784661            -0.0286057725               -0.9948154
2:          -0.9321984            -0.0002621867               -0.9897975
3:          -0.8243194            -0.1397750127               -0.9423669
   fBodyBodyGyroJerkMagstd fBodyBodyGyroJerkMagmeanFreq
1:              -0.9946711                    0.3344987
2:              -0.9870496                    0.1847759
3:              -0.9326607                    0.1764859