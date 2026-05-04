#################################################################
#                                                               #
#      Control file for COMCOT tsunami simulation package       #
#      - Main Configuration File (comcot.ctl)                   #
#                                                               #
#---+----1----+----2----+----3----+----4----+----5----+----6----#
#===============================================:================
# General Parameters for Simulation             : Value Field   |
#===============================================:================
 Job Description: One-line brief description may be added here  
 Total Simulated Duration (Wall clock, seconds) : 7200.000    
 Time Interval for Snapshot Output    (seconds) :    60.0       
 Zmax & Gauge Output  (0-ZMax Z;1-Gauge;2-Both) :       2        
 Start Type (0-Cold start; 1-Hot start)         :       0
 Resuming Time for Hot Start          (Seconds) :       0.00
 Minimum WaterDepth offshore           (meters) :       0.01      
 Initial Cond. (0:FLT,1:File,2:WM,3:LS,4:FLT+LS):       0         
 Boundary Cond.(0-Open;1-Absorb;2-Wall;3-FACTS) :       1
# Specify Filename of z Input (for BC=3, FACTS) : 23926h.asc
# Specify Filename of u Input (for BC=3, FACTS) : 23926u.asc
# Specify Filename of v Input (for BC=3, FACTS) : 23926v.asc
#
#===============================================:================
# Parameters for Fault Model (Segment 01)       :Values         |
#===============================================:================
 Number of FLT Planes (use fault_multi.ctl if>1):      2        
 Rupture Start Time(,Uplift Duration)  (seconds):       0.0      
 Faulting Option (0:Model-C; 1:Data; 9:Model-T) :       0        
 Focal Depth                            (meters):   9000.000     
 Length of Fault Plane                  (meters):  80000.000    
 Width of Fault Plane                   (meters):  40000.000    
 Dislocation of Fault Plane             (meters):      3.2000     
 Strike Angle (theta)                  (degrees):     85.000    
 Dip  Angle (delta)                    (degrees):     23.000    
 Slip/Rake Angle (lamda)               (degrees):    108.000    
 Origin of Numerical Domain: Latitude  (degrees):     -9.000  
 Origin of Numerical Domain: Longitude (degrees):    121.000    
 Epicenter Location: Latitude          (degrees):     -8.5320  
 Epicenter Location: Longitude         (degrees):    122.025  
 File Name of Input Data                        : none
 Data Format (0-COMCOT;1-MOST;2-XYZ;3-ASC)      :       0        
#
#===============================================:================
#  Parameters for Incident Wave Maker           :Values         |
#===============================================:================
 Wave Type  (1-Solitary; 2-given; 3-focusing)   :       1        
# File Name of Input Data (for Type=2)          : fse.dat
 Incident direction( 1:tp,2:bt,3:lf,4:rt,5:obl) :       2        
 Characteristic Wave Amplitude         (meters) :       0.500    
 Typical Water depth                   (meters) :    2000.000    
#
#===============================================:================
#  Parameters for Landslide / Ground Motion     :Values         |
#===============================================:================
 X_Start of Transient Motion Area               :     127.363     
 X_End of Transient Motion Area                 :     129.971    
 Y_Start of Transient Motion Area               :      -5.220    
 Y_End of Transient Motion Area                 :      -2.707     
# File Name of Shape Input[, format(3-XYZ;4-ASC)]: MULTIPLE
 Option (0-OLD; 1-XYT; 2-LS.Solid; 3-LS.Flow)   :       2        
#
#===============================================:================
# Configurations for all grid layers                             
#===============================================:================
# Parameters for 1st-level grids -- layer 01    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System   (0-Spherical, 1-Cartesian) :       0        
 Governing Equations (0-linear,    1-nonlinear) :       1        
 Grid Size       (dx, sph:minutes, Cart:meters) :       0.3      
 Time Step Size                       (seconds) :       1.0      
 Bottom Friction Switch (0-ON;1-OFF;2-ON,Var.n) :       0        
 Manning's n (for Fric.Switch=0), {land, water} :       0.025    
 Output Option?   (0-Z+Hu+Hv; 1-Z Only; 2-NONE) :       0        
 X_Start                               (degree) :       121.000  
 X_End                                 (degree) :       123.500  
 Y_Start                               (degree) :      -9.000    
 Y_End                                 (degree) :      -7.500    
 File Name of Bathymetry Data                   : batimetri_layer1.asc
 Format  (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC) :       4        
 Grid Identification Number (ID)                :      01        
 Grid Level                                     :      01        
 Parent Grid Layer's ID Number                  :      01
#===============================================:================
#  Parameters for Sub-level grid -- layer 02    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       1        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       0        
 Manning's n (for Fric.Switch=0), {land, water} :       0.025    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       0        
 GridSize Ratio of Parent Grid to Current Grid  :       5        
 X_start                                        :    122.000
 X_end                                          :    123.000
 Y_Start                                        :     -8.800
 Y_end                                          :     -8.200
 File Name of Bathymetry Data                   :  batimetri_layer2.asc
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       4        
 Grid Identification Number (ID)                :      02
 Grid Level                                     :      02
 Parent Grid Layer's ID Number                  :      01
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 03    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       1        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       0        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       0        
 GridSize Ratio of Parent Grid to Current Grid  :      10        
 X_start                                        :    122.480
 X_end                                          :    122.540
 Y_Start                                        :     -8.450
 Y_end                                          :     -8.390
 File Name of Bathymetry Data                   :  batimetri_layer3.asc 
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       4        
 Grid Identification Number (ID)                :      03
 Grid Level                                     :      03
 Parent Grid Layer's ID Number                  :      02
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 04    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       1        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       0        
 GridSize Ratio of Parent Grid to Current Grid  :       8        
 X_start                                        :    123.00005
 X_end                                          :    123.11995
 Y_Start                                        :    0.46005
 Y_end                                          :    0.58995
 File Name of Bathymetry Data                   :layer4_RBI_rev.asc
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       4        
 Grid Identification Number (ID)                :      04
 Grid Level                                     :      04
 Parent Grid Layer's ID Number                  :      03
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 05    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    168.3714
 X_end                                          :    183.3672
 Y_Start                                        :    -46.4622
 Y_end                                          :    -35.4359
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      05
 Grid Level                                     :      05
 Parent Grid Layer's ID Number                  :      04
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 06    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    169.1211
 X_end                                          :    182.6549
 Y_Start                                        :    -45.9109
 Y_end                                          :    -35.9596
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      06
 Grid Level                                     :      06
 Parent Grid Layer's ID Number                  :      05
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 07    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    169.7978
 X_end                                          :    182.0121
 Y_Start                                        :    -45.4134
 Y_end                                          :    -36.4323
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      07
 Grid Level                                     :      07
 Parent Grid Layer's ID Number                  :      06
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 08    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    170.4085
 X_end                                          :    181.4319
 Y_Start                                        :    -44.9643
 Y_end                                          :    -36.8589
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      08
 Grid Level                                     :      08
 Parent Grid Layer's ID Number                  :      07
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 09    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    170.9597
 X_end                                          :    180.9083
 Y_Start                                        :    -44.5590
 Y_end                                          :    -37.2439
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      09
 Grid Level                                     :      09
 Parent Grid Layer's ID Number                  :      08
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 10    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    171.4571
 X_end                                          :    180.4357
 Y_Start                                        :    -44.1933
 Y_end                                          :    -37.5914
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      10
 Grid Level                                     :      10
 Parent Grid Layer's ID Number                  :      09
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 11    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    171.9061
 X_end                                          :    180.0092
 Y_Start                                        :    -43.8632
 Y_end                                          :    -37.9050
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      11
 Grid Level                                     :      11
 Parent Grid Layer's ID Number                  :      10
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 12    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    172.3112
 X_end                                          :    179.6243
 Y_Start                                        :    -43.5653
 Y_end                                          :    -38.1880
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      12
 Grid Level                                     :      12
 Parent Grid Layer's ID Number                  :      11
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 13    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    172.6769
 X_end                                          :    179.2770
 Y_Start                                        :    -43.2964
 Y_end                                          :    -38.4434
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      13
 Grid Level                                     :      13
 Parent Grid Layer's ID Number                  :      12
#
#===============================================:================
#  Parameters for Tide Gauge Locations          :Values         |
#===============================================:================
 01. Number of Tide Gauges                      :      9
 02. File Name of Station Info                  :ts_location.dat
#
#################################################################
#                                                               #
#      Control file for COMCOT tsunami simulation package       #
#      - Main Configuration File (comcot.ctl)                   #
#                                                               #
#---+----1----+----2----+----3----+----4----+----5----+----6----#
#===============================================:================
# General Parameters for Simulation             : Value Field   |
#===============================================:================
# Job Description: Flores 1992 Tsunami Simulation
 Total Simulated Duration (Wall clock, seconds) : 7200.000    
 Time Interval for Snapshot Output    (seconds) :    60.0        
 Zmax & Gauge Output  (0-ZMax Z;1-Gauge;2-Both) :     4, 2         
 Start Type (0-Cold start; 1-Hot start)         :     0
 Resuming Time for Hot Start          (Seconds) :     0.00
 Minimum WaterDepth offshore           (meters) :     0.00, 0.001    
 Initial Cond. (0:FLT,1:File,2:WM,3:LS,4:FLT+LS):     0         
 Boundary Cond.(0-Open;1-Absorb;2-Wall;3-FACTS) :     1, 0          
 Specify Filename of z Input (for BC=3, FACTS)  :23926h.asc
 Specify Filename of u Input (for BC=3, FACTS)  :23926u.asc
 Specify Filename of v Input (for BC=3, FACTS)  :23926v.asc
#
#===============================================:================
# Parameters for Fault Model (Segment 01)       :Values         |
#===============================================:================
 Number of FLT Planes (use fault_multi.ctl if>1):      2        
 Rupture Start Time(,Uplift Duration)  (seconds):       0.0      
 Faulting Option (0:Model-C; 1:Data; 9:Model-T) :       0        
 Focal Depth                            (meters):    9000.000     
 Length of Fault Plane                  (meters):   80000.000    
 Width of Fault Plane                   (meters):   40000.000    
 Dislocation of Fault Plane             (meters):       3.2000     
 Strike Angle (theta)                  (degrees):      85.000    
 Dip  Angle (delta)                    (degrees):      23.000    
 Slip/Rake Angle (lamda)               (degrees):     108.000    
 Origin of Numerical Domain: Latitude  (degrees):      -9.000  
 Origin of Numerical Domain: Longitude (degrees):     121.000    
 Epicenter Location: Latitude          (degrees):      -8.5320  
 Epicenter Location: Longitude         (degrees):     122.025  
 File Name of Input Data                        :none 
 Data Format (0-COMCOT;1-MOST;2-XYZ;3-ASC)      :       0        
#
#===============================================:================
#  Parameters for Incident Wave Maker           :Values         |
#===============================================:================
 Wave Type  (1-Solitary; 2-given; 3-focusing)   :       1        
 File Name of Input Data (for Type=2)           :fse.dat
 Incident direction( 1:tp,2:bt,3:lf,4:rt,5:obl) :       2        
 Characteristic Wave Amplitude         (meters) :       0.500    
 Typical Water depth                   (meters) :    2000.000    
#
#===============================================:================
#  Parameters for Landslide / Ground Motion     :Values         |
#===============================================:================
 X_Start of Transient Motion Area               :     127.363     
 X_End of Transient Motion Area                 :     129.971    
 Y_Start of Transient Motion Area               :     -5.220    
 Y_End of Transient Motion Area                 :     -2.707     
 File Name of Shape Input[, format(3-XYZ;4-ASC)]: none
 Option (0-OLD; 1-XYT; 2-LS.Solid; 3-LS.Flow)   :       2        
#
#===============================================:================
# Configurations for all grid layers                             
#===============================================:================
# Parameters for 1st-level grids -- layer 01    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System   (0-Spherical, 1-Cartesian) :       0        
 Governing Equations (0-linear,    1-nonlinear) :       1        
 Grid Size       (dx, sph:minutes, Cart:meters) :       0.3      
 Time Step Size                       (seconds) :       1.0      
 Bottom Friction Switch (0-ON;1-OFF;2-ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.025    
 Output Option?   (0-Z+Hu+Hv; 1-Z Only; 2-NONE) :       0        
 X_start                                        :     121.000
 X_end											:	  123.500
 Y_Start                                        :      -9.000    
 Y_end                                          :      -7.500 
 File Name of Bathymetry Data                   : batimetri_layer1.asc
 Format  (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC) :       4        
 Grid Identification Number (ID)                :      01        
 Grid Level                                     :      01        
 Parent Grid Layer's ID Number                  :      01        
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 02    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       1        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       0        
 Manning's n (for Fric.Switch=0), {land, water} :       0.025    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       0        
 GridSize Ratio of Parent Grid to Current Grid  :       5        
 X_start                                        :    122.000
 X_end                                          :    123.000
 Y_Start                                        :     -8.800
 Y_end                                          :     -8.200
 File Name of Bathymetry Data                   :  batimetri_layer2.asc
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       4        
 Grid Identification Number (ID)                :      02
 Grid Level                                     :      02
 Parent Grid Layer's ID Number                  :      01
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 03    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       1        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       0        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       0        
 GridSize Ratio of Parent Grid to Current Grid  :      10        
 X_start                                        :    122.480
 X_end                                          :    122.540
 Y_Start                                        :     -8.450
 Y_end                                          :     -8.390
 File Name of Bathymetry Data                   :  batimetri_layer3.asc 
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       4        
 Grid Identification Number (ID)                :      03
 Grid Level                                     :      03
 Parent Grid Layer's ID Number                  :      02
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 04    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       1        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       0        
 GridSize Ratio of Parent Grid to Current Grid  :       8        
 X_start                                        :    123.00005
 X_end                                          :    123.11995
 Y_Start                                        :    0.46005
 Y_end                                          :    0.58995
 File Name of Bathymetry Data                   :layer4_RBI_rev.asc
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       4        
 Grid Identification Number (ID)                :      04
 Grid Level                                     :      04
 Parent Grid Layer's ID Number                  :      03
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 05    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    168.3714
 X_end                                          :    183.3672
 Y_Start                                        :    -46.4622
 Y_end                                          :    -35.4359
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      05
 Grid Level                                     :      05
 Parent Grid Layer's ID Number                  :      04
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 06    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    169.1211
 X_end                                          :    182.6549
 Y_Start                                        :    -45.9109
 Y_end                                          :    -35.9596
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      06
 Grid Level                                     :      06
 Parent Grid Layer's ID Number                  :      05
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 07    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    169.7978
 X_end                                          :    182.0121
 Y_Start                                        :    -45.4134
 Y_end                                          :    -36.4323
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      07
 Grid Level                                     :      07
 Parent Grid Layer's ID Number                  :      06
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 08    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    170.4085
 X_end                                          :    181.4319
 Y_Start                                        :    -44.9643
 Y_end                                          :    -36.8589
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      08
 Grid Level                                     :      08
 Parent Grid Layer's ID Number                  :      07
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 09    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    170.9597
 X_end                                          :    180.9083
 Y_Start                                        :    -44.5590
 Y_end                                          :    -37.2439
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      09
 Grid Level                                     :      09
 Parent Grid Layer's ID Number                  :      08
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 10    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    171.4571
 X_end                                          :    180.4357
 Y_Start                                        :    -44.1933
 Y_end                                          :    -37.5914
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      10
 Grid Level                                     :      10
 Parent Grid Layer's ID Number                  :      09
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 11    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    171.9061
 X_end                                          :    180.0092
 Y_Start                                        :    -43.8632
 Y_end                                          :    -37.9050
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      11
 Grid Level                                     :      11
 Parent Grid Layer's ID Number                  :      10
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 12    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    172.3112
 X_end                                          :    179.6243
 Y_Start                                        :    -43.5653
 Y_end                                          :    -38.1880
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      12
 Grid Level                                     :      12
 Parent Grid Layer's ID Number                  :      11
#
#===============================================:================
#  Parameters for Sub-level grid -- layer 13    :Values         |
#===============================================:================
 Run This Layer ?       (0:Yes,       1:No     ):       1        
 Coordinate System   (0:spherical, 1:cartesian) :       0        
 Governing Equations (0:linear,    1:nonlinear) :       0        
 Bottom Friction Switch (0-ON,1-OFF,2:ON,Var.n) :       1        
 Manning's n (for Fric.Switch=0), {land, water} :       0.013    
 Output Option? (0-Z+Hu+Hv; 1-Z Only; 2-NONE)   :       2        
 GridSize Ratio of Parent Grid to Current Grid  :       2        
 X_start                                        :    172.6769
 X_end                                          :    179.2770
 Y_Start                                        :    -43.2964
 Y_end                                          :    -38.4434
 File Name of Bathymetry Data                   :grid01_updated.xyz
 Format (0-OLD;1-MOST;2-XYZ BP;3-XYZ BN;4-ASC)  :       3        
 Grid Identification Number (ID)                :      13
 Grid Level                                     :      13
 Parent Grid Layer's ID Number                  :      12
#
#===============================================:================
#  Parameters for Tide Gauge Locations          :Values         |
#===============================================:================
 01. Number of Tide Gauges                      :      9
 02. File Name of Station Info                  :ts_location.dat
#
