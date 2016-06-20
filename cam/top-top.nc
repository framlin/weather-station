%
(1965)
(T1  D=3.175 CR=0 - ZMIN=-5 - flat end mill)
(T2  D=2 CR=0 - ZMIN=-5 - flat end mill)
G90 G94
G17
G21
G28 G91 Z0
G90

(2D Contour1)
M9
T1 M6
S7958 M3
G54
M8
G0 X132.454 Y45.167
Z15
Z5
G1 Z3 F700
Z-1.683 F266.7
G18 G3 X132.137 Z-2 I-0.318
G1 X117.105 F700
G17 G3 X116.787 Y44.85 J-0.318
G1 Y9.35 F800
G2 X115.2 Y7.762 I-1.588
G1 X15.2
G2 X13.613 Y9.35 J1.588
G1 Y80.35
G2 X15.2 Y81.938 I1.587
G1 X52.301
G2 X52.915 Y81.814 J-1.588
G1 X55.369 Y80.786
X94.731
X97.185 Y81.814
G2 X97.799 Y81.938 I0.613 J-1.464
G1 X115.2
G2 X116.787 Y80.35 J-1.588
G1 Y44.85
G3 X117.105 Y44.533 I0.318 F700
G1 X117.423
G18 G2 X117.74 Z-1.683 K0.317
G1 X132.454 Y45.167
Z-3.683 F266.7
G3 X132.137 Z-4 I-0.318
G1 X117.105 F700
G17 G3 X116.787 Y44.85 J-0.318
G1 Y9.35 F800
G2 X115.2 Y7.762 I-1.588
G1 X15.2
G2 X13.613 Y9.35 J1.588
G1 Y80.35
G2 X15.2 Y81.938 I1.587
G1 X52.301
G2 X52.915 Y81.814 J-1.588
G1 X55.369 Y80.786
X94.731
X97.185 Y81.814
G2 X97.799 Y81.938 I0.613 J-1.464
G1 X115.2
G2 X116.787 Y80.35 J-1.588
G1 Y44.85
G3 X117.105 Y44.533 I0.318 F700
G1 X117.423
G18 G2 X117.74 Z-3.683 K0.318
G1 X132.454 Y45.167
Z-4.683 F266.7
G3 X132.137 Z-5 I-0.318
G1 X117.105 F700
G17 G3 X116.787 Y44.85 J-0.318
G1 Y29.688 F800
Z-4
Y24.513
Z-5 F266.7
Y9.35 F800
G2 X115.2 Y7.762 I-1.588
G1 X101.121
Z-4
X95.946
Z-5 F266.7
X67.787 F800
Z-4
X62.612
Z-5 F266.7
X34.454 F800
Z-4
X29.279
Z-5 F266.7
X15.2 F800
G2 X13.613 Y9.35 J1.588
G1 Y24.513
Z-4
Y29.688
Z-5 F266.7
Y60.013 F800
Z-4
Y65.188
Z-5 F266.7
Y80.35 F800
G2 X15.2 Y81.938 I1.587
G1 X31.163
Z-4
X36.338
Z-5 F266.7
X52.301 F800
G2 X52.915 Y81.814 J-1.588
G1 X55.369 Y80.786
X72.463
Z-4
X77.637
Z-5 F266.7
X94.731 F800
X97.185 Y81.814
G2 X97.799 Y81.938 I0.613 J-1.464
G1 X115.2
G2 X116.787 Y80.35 J-1.588
G1 Y65.188
Z-4
Y60.013
Z-5 F266.7
Y44.85 F800
G3 X117.105 Y44.533 I0.318 F700
G1 X117.423
G18 G2 X117.74 Z-4.683 K0.318
G0 Z15
G17
M5
G28 G91 Z0
G90

(2D Pocket2)
M9
T2 M6
S7958 M3
G54
M8
G0 X65.418 Y39.79
Z15
Z5
G1 Z2.5 F266.7
Z-4.769
G3 X65.417 Y39.775 Z-4.845 I0.199 J-0.017
X65.421 Y39.732 Z-4.91 I0.2 J-0.002
X65.445 Y39.672 Z-4.953 I0.196 J0.041
X65.495 Y39.615 Z-4.969 I0.172 J0.101
X65.894 Y39.358 I1.7 J2.202 F800
X66.588 Y39.158 I0.826 J1.561
X66.64 Y39.156 I0.064 J0.859
X66.85 Y39.474 I0.003 J0.227
X66.655 Y39.776 I-1.042 J-0.46
X66.401 Y40.033 I-2.961 J-2.668
X65.812 Y40.451 I-1.889 J-2.041
X65.118 Y40.651 I-0.826 J-1.562
X65.066 Y40.653 I-0.064 J-0.852
X64.856 Y40.335 I-0.003 J-0.227
X65.052 Y40.032 I1.041 J0.46
X65.305 Y39.776 I2.967 J2.675
X65.495 Y39.615 I1.89 J2.042
G2 X65.985 Y38.357 I-0.8 J-1.036
G3 X66.914 Y37.379 I0.83 J-0.142
G1 X67.213 Y37.414
X67.543 Y37.501
X67.835 Y37.626
X68.084 Y37.784
X68.292 Y37.97
X68.46 Y38.182
X68.589 Y38.419
X68.678 Y38.683
X68.726 Y38.975
X68.727 Y39.292
X68.677 Y39.63
X68.574 Y39.983
X68.415 Y40.342
X68.203 Y40.697
X67.939 Y41.039
X67.629 Y41.36
X67.28 Y41.649
X66.899 Y41.901
X66.495 Y42.109
X66.079 Y42.268
X65.661 Y42.377
X65.251 Y42.433
X64.859 Y42.438
X64.493 Y42.395
X64.163 Y42.308
X63.872 Y42.182
X63.622 Y42.025
X63.414 Y41.839
X63.246 Y41.627
X63.117 Y41.39
X63.028 Y41.125
X62.98 Y40.834
X62.979 Y40.517
X63.029 Y40.179
X63.132 Y39.826
X63.291 Y39.467
X63.503 Y39.112
X63.767 Y38.769
X64.077 Y38.449
X64.426 Y38.159
X64.807 Y37.908
X65.211 Y37.7
X65.627 Y37.54
X66.045 Y37.432
X66.455 Y37.376
X66.848 Y37.371
X66.914 Y37.379
G3 X66.987 Y37.402 Z-4.953 I-0.024 J0.199 F700
X67.038 Y37.442 Z-4.91 I-0.096 J0.175
X67.063 Y37.476 Z-4.845 I-0.147 J0.136
X67.071 Y37.49 Z-4.769 I-0.173 J0.101
G0 Z5
X67.114 Y33.111
G1 Z2.5 F266.7
Z-4.769
G3 X67.122 Y33.098 Z-4.845 I0.18 J0.087
X67.147 Y33.063 Z-4.91 I0.173 J0.101
X67.198 Y33.023 Z-4.953 I0.147 J0.136
X67.271 Y33 Z-4.969 I0.096 J0.175
G1 X67.429 Y32.981 F800
X67.599 Y32.97
X67.769 Y32.966
X67.941 Y32.972
X68.112 Y32.985
X68.281 Y33.007
X68.447 Y33.036
X68.61 Y33.072
X68.768 Y33.116
X68.921 Y33.166
X69.067 Y33.222
X69.208 Y33.284
X69.275 Y33.318
X69.228 Y33.336
X69.125 Y33.372
X69.016 Y33.408
X68.903 Y33.444
X68.786 Y33.478
X68.666 Y33.512
X68.541 Y33.545
X68.414 Y33.576
X68.284 Y33.606
X68.152 Y33.635
X68.019 Y33.663
X67.883 Y33.689
X67.746 Y33.713
X67.608 Y33.736
X67.47 Y33.758
X67.332 Y33.777
X67.193 Y33.795
X67.055 Y33.811
X66.918 Y33.826
X66.781 Y33.838
X66.646 Y33.849
X66.513 Y33.857
X66.382 Y33.864
X66.254 Y33.868
X66.129 Y33.871
X66.006
X65.888 Y33.87
X65.774 Y33.866
X65.664 Y33.861
X65.56 Y33.854
X65.651 Y33.76
X65.774 Y33.652
X65.903 Y33.551
X66.036 Y33.458
X66.175 Y33.373
X66.317 Y33.296
X66.464 Y33.227
X66.616 Y33.165
X66.772 Y33.112
X66.932 Y33.067
X67.095 Y33.03
X67.261 Y33.001
X67.271 Y33
G3 X67.346 Y33.006 Z-4.953 I0.024 J0.199 F700
X67.405 Y33.032 Z-4.91 I-0.052 J0.193
X67.438 Y33.06 Z-4.845 I-0.111 J0.166
X67.449 Y33.072 Z-4.769 I-0.144 J0.139
G0 Z5
X60.265 Y36.814
G1 Z2.5 F266.7
Z-4.769
G3 X60.269 Y36.829 Z-4.845 I-0.192 J0.057
X60.273 Y36.872 Z-4.91 I-0.195 J0.043
X60.263 Y36.936 Z-4.953 I-0.2
X60.225 Y37.002 Z-4.969 I-0.189 J-0.064
G1 X60.15 Y37.09 F800
X60.069 Y37.184
X59.988 Y37.276
X59.907 Y37.368
X59.826 Y37.459
X59.744 Y37.549
X59.662 Y37.639
X59.581 Y37.726
X59.501 Y37.813
X59.42 Y37.898
X59.34 Y37.982
X59.26 Y38.064
X59.183 Y38.143
X59.196 Y38.078
X59.246 Y37.884
X59.306 Y37.695
X59.375 Y37.512
X59.454 Y37.336
X59.543 Y37.166
X59.641 Y37.002
X59.749 Y36.845
X59.866 Y36.697
X59.991 Y36.558
X60.124 Y36.427
X60.266 Y36.305
X60.416 Y36.193
X60.574 Y36.089
X60.74 Y35.994
X60.912 Y35.909
X61.09 Y35.835
X61.174 Y35.805
X61.117 Y35.883
X61.051 Y35.972
X60.983 Y36.062
X60.913 Y36.154
X60.842 Y36.246
X60.769 Y36.339
X60.695 Y36.432
X60.62 Y36.526
X60.544 Y36.62
X60.467 Y36.714
X60.388 Y36.809
X60.309 Y36.903
X60.23 Y36.997
X60.225 Y37.002
G3 X60.166 Y37.049 Z-4.953 I-0.152 J-0.13 F700
X60.104 Y37.069 Z-4.91 I-0.092 J-0.177
X60.061 Y37.071 Z-4.845 I-0.031 J-0.198
X60.046 Y37.07 Z-4.769 I0.012 J-0.2
G0 Z5
X54.941 Y37.999
G1 Z2.5 F266.7
Z-4.769
G3 X54.955 Y38.006 Z-4.845 I-0.079 J0.184
X54.991 Y38.03 Z-4.91 I-0.093 J0.177
X55.033 Y38.079 Z-4.953 I-0.129 J0.153
X55.06 Y38.15 Z-4.969 I-0.171 J0.104
X55.097 Y38.512 I-2.804 J0.469 F800
G2 X55.136 Y38.887 I2.764 J-0.1
X55.164 Y39.013 I1.447 J-0.252
G3 X55.196 Y39.138 I-5.819 J1.552
X54.996 Y39.233 I-0.11 J0.027
X54.197 Y38.065 I12.917 J-9.694
X53.469 Y36.851 I37.539 J-23.335
G2 X53.377 Y36.702 I-2.584 J1.494
G3 X53.286 Y36.552 I2.059 J-1.358
X53.452 Y36.386 I0.106 J-0.06
G2 X53.755 Y36.523 I0.872 J-1.533
G3 X53.852 Y36.604 I-0.057 J0.166
G2 X54.457 Y37.242 I1.542 J-0.856
G3 X54.581 Y37.388 I-0.168 J0.267
G2 X54.969 Y37.966 I1.629 J-0.676
G3 X55.057 Y38.136 I-0.222 J0.224
X55.06 Y38.15 I-2.802 J0.483
G2 X55.478 Y38.631 I0.601 J-0.101
G3 X55.921 Y39.088 I-0.201 J0.639
G1 X55.922 Y39.093
G2 X55.934 Y39.13 I1.011 J-0.285
G1 X55.952 Y39.187
G2 X55.965 Y39.226 I0.999 J-0.322
G1 X55.985 Y39.28
G2 X55.999 Y39.316 I0.986 J-0.362
G1 X56.021 Y39.37
G2 X56.038 Y39.409 I0.972 J-0.397
G1 X56.055 Y39.445
X56.042 Y39.493
X56.014 Y39.592
X55.983 Y39.688
X55.95 Y39.782
X55.915 Y39.874
X55.878 Y39.962
X55.838 Y40.048
X55.797 Y40.13
X55.754 Y40.209
X55.708 Y40.284
X55.662 Y40.354
X55.613 Y40.421
X55.562 Y40.484
X55.511 Y40.542
X55.457 Y40.596
X55.403 Y40.647
X55.346 Y40.693
X55.304 Y40.725
X55.252 Y40.67
X55.077 Y40.475
X54.902 Y40.269
X54.726 Y40.054
X54.551 Y39.829
X54.376 Y39.596
X54.201 Y39.355
X54.027 Y39.107
X53.854 Y38.852
X53.682 Y38.591
X53.511 Y38.324
X53.341 Y38.052
X53.173 Y37.776
X53.006 Y37.496
X52.841 Y37.214
X52.679 Y36.93
X52.518 Y36.644
X52.361 Y36.359
X52.206 Y36.073
X52.054 Y35.789
X51.905 Y35.506
X51.759 Y35.224
G2 X51.038 Y34.679 I-0.932 J0.484
X51.253 Y34.636 I-0.1 J-1.045
G1 X51.264 Y34.645
G2 X51.318 Y34.689 I0.695 J-0.787
G1 X51.351 Y34.715
G2 X51.424 Y34.766 I0.641 J-0.832
G1 X51.458 Y34.788
G2 X51.548 Y34.84 I0.568 J-0.883
G1 X51.583 Y34.858
G2 X52.422 Y34.909 I0.478 J-0.935
G1 X52.448 Y34.935
G2 X52.459 Y34.946 I0.75 J-0.735
G1 X52.506 Y34.993
G2 X53.359 Y35.292 I0.739 J-0.746
G1 X53.37 Y35.309
X53.401 Y35.357
X53.434 Y35.409
G2 X54.292 Y35.903 I0.89 J-0.556
G1 X54.315 Y35.948
X54.351 Y36.018
X54.389 Y36.092
X54.392 Y36.098
X54.428 Y36.166
X54.431 Y36.173
X54.468 Y36.241
G2 X55.126 Y36.763 I0.927 J-0.494
G1 X55.136 Y36.796
X55.16 Y36.872
X55.184 Y36.951
X55.209 Y37.028
G2 X55.718 Y37.64 I1.001 J-0.316
G1 X55.72 Y37.663
X55.721 Y37.671
X55.725 Y37.725
G2 X55.726 Y37.737 I1.046 J-0.087
G1 X55.731 Y37.79
G2 X55.733 Y37.806 I1.045 J-0.099
G1 X55.738 Y37.857
G2 X55.741 Y37.879 I1.044 J-0.115
G1 X55.747 Y37.927
G2 X55.751 Y37.955 I1.041 J-0.137
G1 X55.759 Y38.001
G2 X55.765 Y38.038 I1.037 J-0.165
G1 X55.774 Y38.083
G2 X55.786 Y38.134 I1.03 J-0.202
G1 X55.797 Y38.18
G2 X55.808 Y38.222 I1.019 J-0.253
G1 Y38.258
G2 Y38.281 I1.05 J0.011
G1 Y38.331
G2 X55.809 Y38.353 I1.05 J-0.013
G1 X55.811 Y38.404
G2 X55.812 Y38.431 I1.049 J-0.035
G1 X55.815 Y38.483
G2 X55.817 Y38.512 I1.048 J-0.062
G1 X55.822 Y38.565
G2 X55.824 Y38.592 I1.046 J-0.091
G1 X55.831 Y38.646
G2 X55.835 Y38.678 I1.043 J-0.118
G1 X55.843 Y38.732
G2 X55.847 Y38.763 I1.039 J-0.15
G1 X55.857 Y38.819
G2 X55.864 Y38.853 I1.034 J-0.18
G1 X55.875 Y38.909
G2 X55.883 Y38.943 I1.028 J-0.214
G1 X55.897 Y39
G2 X55.906 Y39.036 I1.02 J-0.249
G1 X55.921 Y39.088
G3 X55.927 Y39.164 Z-4.953 I-0.193 J0.054 F700
X55.91 Y39.226 Z-4.91 I-0.199 J-0.022
X55.888 Y39.263 Z-4.845 I-0.182 J-0.084
X55.878 Y39.275 Z-4.769 I-0.159 J-0.121
G0 Z5
X51.654 Y42.229
G1 Z2.5 F266.7
Z-4.769
G3 X51.64 Y42.236 Z-4.845 I-0.094 J-0.176
X51.599 Y42.249 Z-4.91 I-0.081 J-0.183
X51.534 Y42.251 Z-4.953 I-0.039 J-0.196
X51.462 Y42.227 Z-4.969 I0.025 J-0.198
G1 X51.394 Y42.189 F800
X51.279 Y42.121
X51.167 Y42.05
X51.149 Y42.039
G2 X50.813 Y41.147 I-1.044 J-0.116
G1 X50.764 Y41.102
X50.758 Y41.096
X50.708 Y41.052
X50.656 Y41.005
X50.651 Y41.001
X50.602 Y40.958
X50.576 Y40.936
G2 X50.302 Y39.88 I-1.006 J-0.302
X50.108 Y38.83 I-0.986 J-0.361
G1 X50.102 Y38.823
G2 X50.037 Y37.817 I-0.952 J-0.443
G1 X50.028 Y37.803
G2 X50.234 Y37.156 I-0.843 J-0.626
G1 X50.29 Y37.3
G2 X50.294 Y37.312 I0.98 J-0.376
G1 X50.414 Y37.613
G2 X50.419 Y37.625 I0.976 J-0.388
G1 X50.542 Y37.925
G2 X50.548 Y37.937 I0.971 J-0.4
G1 X50.675 Y38.235
G2 X50.68 Y38.248 I0.966 J-0.412
G1 X50.811 Y38.544
G2 X50.817 Y38.557 I0.96 J-0.425
G1 X50.952 Y38.851
G2 X50.958 Y38.865 I0.954 J-0.438
G1 X51.097 Y39.157
G2 X51.104 Y39.17 I0.948 J-0.451
G1 X51.247 Y39.461
G2 X51.254 Y39.475 I0.942 J-0.464
G1 X51.401 Y39.763
G2 X51.409 Y39.777 I0.935 J-0.478
G1 X51.56 Y40.063
G2 X51.568 Y40.077 I0.928 J-0.492
G1 X51.724 Y40.36
G2 X51.732 Y40.375 I0.92 J-0.506
G1 X51.892 Y40.655
G2 X51.901 Y40.67 I0.912 J-0.521
G1 X52.065 Y40.948
G2 X52.074 Y40.962 I0.903 J-0.536
G1 X52.244 Y41.237
G2 X52.253 Y41.252 I0.894 J-0.551
G1 X52.427 Y41.524
G2 X52.437 Y41.54 I0.885 J-0.566
G1 X52.616 Y41.808
G2 X52.626 Y41.823 I0.874 J-0.581
G1 X52.809 Y42.089
G2 X52.821 Y42.105 I0.864 J-0.597
G1 X53.009 Y42.367
G2 X53.02 Y42.382 I0.853 J-0.613
G1 X53.135 Y42.537
X53.109 Y42.552
X53.081 Y42.566
X53.052 Y42.579
X53.021 Y42.591
X52.989 Y42.601
X52.955 Y42.61
X52.92 Y42.618
X52.881 Y42.624
X52.841 Y42.629
X52.807 Y42.632
X52.714 Y42.634
X52.623 Y42.63
X52.526 Y42.62
X52.423 Y42.603
X52.317 Y42.579
X52.208 Y42.55
X52.095 Y42.514
X51.98 Y42.472
X51.863 Y42.425
X51.745 Y42.373
X51.628 Y42.316
X51.51 Y42.254
X51.462 Y42.227
G3 X51.404 Y42.178 Z-4.953 I0.098 J-0.175 F700
X51.372 Y42.122 Z-4.91 I0.156 J-0.126
X51.361 Y42.08 Z-4.845 I0.188 J-0.069
X51.36 Y42.065 Z-4.769 I0.198 J-0.027
G0 Z5
X52.317 Y47.375
G1 Z2.5 F266.7
Z-4.769
G3 X52.323 Y47.389 Z-4.845 I-0.182 J0.083
X52.334 Y47.431 Z-4.91 I-0.188 J0.069
X52.332 Y47.496 Z-4.953 I-0.198 J0.027
X52.304 Y47.566 Z-4.969 I-0.197 J-0.037
G1 X52.252 Y47.647 F800
G2 X52.242 Y47.663 I0.884 J0.566
G1 X52.073 Y47.937
G2 X52.064 Y47.952 I0.894 J0.551
G1 X51.899 Y48.23
G2 X51.891 Y48.245 I0.903 J0.536
G1 X51.73 Y48.525
G2 X51.722 Y48.54 I0.912 J0.521
G1 X51.566 Y48.823
G2 X51.559 Y48.838 I0.92 J0.506
G1 X51.407 Y49.123
G2 X51.4 Y49.138 I0.928 J0.492
G1 X51.252 Y49.426
G2 X51.245 Y49.44 I0.935 J0.478
G1 X51.102 Y49.73
G2 X51.095 Y49.744 I0.942 J0.464
G1 X50.956 Y50.037
G2 X50.95 Y50.049 I0.948 J0.45
G1 X50.815 Y50.344
G2 X50.809 Y50.357 I0.954 J0.438
G1 X50.678 Y50.654
G2 X50.673 Y50.666 I0.96 J0.425
G1 X50.546 Y50.964
G2 X50.54 Y50.977 I0.966 J0.412
G1 X50.417 Y51.277
G2 X50.412 Y51.289 I0.971 J0.4
G1 X50.292 Y51.59
G2 X50.288 Y51.601 I0.976 J0.388
G1 X50.234 Y51.741
G2 X50.028 Y51.096 I-1.05 J-0.02
G1 X50.037 Y51.081
G2 X50.101 Y50.077 I-0.888 J-0.561
G1 X50.107 Y50.07
G2 X50.302 Y49.019 I-0.791 J-0.691
X50.576 Y47.963 I-0.732 J-0.753
G1 X50.598 Y47.944
X50.602 Y47.94
X50.652 Y47.897
X50.703 Y47.852
X50.71 Y47.846
X50.759 Y47.801
X50.763 Y47.797
X50.812 Y47.753
G2 X51.149 Y46.861 I-0.707 J-0.776
G1 X51.19 Y46.833
X51.306 Y46.762
X51.423 Y46.693
X51.542 Y46.628
X51.661 Y46.567
X51.781 Y46.51
X51.902 Y46.458
X52.022 Y46.411
X52.141 Y46.37
X52.257 Y46.336
X52.371 Y46.308
X52.479 Y46.287
X52.581 Y46.273
X52.678 Y46.266
X52.767 Y46.265
X52.849 Y46.271
X52.923 Y46.283
X52.989 Y46.299
X53.048 Y46.32
X53.102 Y46.345
X53.134 Y46.364
X53.02 Y46.517
G2 X53.008 Y46.533 I0.841 J0.628
G1 X52.82 Y46.795
G2 X52.809 Y46.81 I0.853 J0.613
G1 X52.625 Y47.076
G2 X52.615 Y47.092 I0.864 J0.597
G1 X52.436 Y47.36
G2 X52.426 Y47.375 I0.874 J0.581
G1 X52.304 Y47.566
G3 X52.251 Y47.621 Z-4.953 I-0.168 J-0.108 F700
X52.193 Y47.65 Z-4.91 I-0.116 J-0.163
X52.151 Y47.658 Z-4.845 I-0.058 J-0.191
X52.136 Z-4.769 I-0.015 J-0.199
G0 Z5
X54.999 Y50.572
G1 Z2.5 F266.7
Z-4.769
G3 X55.01 Y50.583 Z-4.845 I-0.137 J0.146
X55.035 Y50.618 Z-4.91 I-0.147 J0.135
X55.058 Y50.678 Z-4.953 I-0.173 J0.1
X55.059 Y50.755 Z-4.969 I-0.196 J0.04
G2 X55.057 Y50.765 I2.693 J0.496 F800
G3 X54.969 Y50.933 I-0.31 J-0.056
G2 X54.581 Y51.511 I1.242 J1.253
G3 X54.457 Y51.657 I-0.291 J-0.121
G2 X53.852 Y52.295 I0.938 J1.494
G3 X53.755 Y52.376 I-0.153 J-0.085
G2 X53.374 Y52.56 I0.569 J1.67
G3 X53.238 Y52.431 I-0.052 J-0.081
X54.105 Y50.972 I30.75 J17.271
X55.066 Y49.573 I17.087 J10.71
X55.362 Y49.631 I0.134 J0.101
X55.381 Y49.706 I-2.783 J0.739
X55.398 Y49.781 I-7.223 J1.713
X55.376 Y49.913 I-0.171 J0.039
G2 X55.175 Y50.324 I1.785 J1.125
X55.059 Y50.755 I2.577 J0.927
X55.186 Y51.249 I0.598 J0.11
G3 X55.253 Y51.756 I-0.376 J0.307
G2 X55.209 Y51.871 I0.958 J0.431
G1 X55.185 Y51.946
X55.161 Y52.025
X55.137 Y52.102
X55.126 Y52.136
G2 X54.468 Y52.658 I0.269 J1.015
G1 X54.431 Y52.726
X54.428 Y52.733
X54.392 Y52.801
X54.389 Y52.807
X54.353 Y52.876
X54.316 Y52.949
X54.292 Y52.996
G2 X53.434 Y53.49 I0.032 J1.05
G1 X53.401 Y53.542
X53.37 Y53.59
X53.359 Y53.607
G2 X52.506 Y53.906 I-0.113 J1.044
G1 X52.459 Y53.953
G2 X52.447 Y53.965 I0.739 J0.746
G1 X52.422 Y53.99
G2 X51.592 Y54.037 I-0.361 J0.986
G1 X51.561 Y54.052
G2 X51.48 Y54.097 I0.47 J0.939
G1 X51.45 Y54.115
G2 X51.382 Y54.162 I0.551 J0.894
G1 X51.353 Y54.183
G2 X51.303 Y54.222 I0.62 J0.848
G1 X51.274 Y54.245
G2 X51.253 Y54.263 I0.67 J0.809
X51.048 Y54.221 I-0.314 J1.002
X51.757 Y53.678 I-0.223 J-1.026
G1 X51.903 Y53.396
X52.052 Y53.113
X52.204 Y52.828
X52.359 Y52.543
X52.517 Y52.257
X52.677 Y51.971
X52.84 Y51.687
X53.005 Y51.405
X53.172 Y51.125
X53.341 Y50.848
X53.51 Y50.576
X53.682 Y50.309
X53.854 Y50.047
X54.027 Y49.793
X54.201 Y49.544
X54.375 Y49.303
X54.55 Y49.07
X54.726 Y48.845
X54.902 Y48.63
X55.077 Y48.424
X55.252 Y48.229
X55.303 Y48.175
X55.336 Y48.198
X55.425 Y48.273
X55.509 Y48.356
X55.589 Y48.449
X55.666 Y48.552
X55.739 Y48.666
X55.807 Y48.789
X55.871 Y48.921
X55.929 Y49.061
X55.982 Y49.208
X56.029 Y49.361
X56.071 Y49.518
X56.107 Y49.679
X56.138 Y49.841
X56.164 Y50.003
X56.172 Y50.067
G2 X55.965 Y50.318 I0.696 J0.786
G1 X55.943 Y50.354
G2 X55.881 Y50.478 I0.903 J0.535
G1 X55.863 Y50.519
G2 X55.829 Y50.612 I0.966 J0.411
G1 X55.814 Y50.658
G2 X55.794 Y50.73 I1.001 J0.318
G1 X55.782 Y50.779
G2 X55.771 Y50.833 I1.021 J0.246
G1 X55.761 Y50.886
G2 X55.754 Y50.926 I1.032 J0.192
G1 X55.746 Y50.981
G2 X55.742 Y51.009 I1.039 J0.151
G1 X55.736 Y51.065
G2 X55.734 Y51.085 I1.043 J0.124
G1 X55.728 Y51.144
G2 X55.726 Y51.159 I1.045 J0.104
G1 X55.721 Y51.22
G2 X55.72 Y51.23 I1.046 J0.089
G1 X55.718 Y51.259
G2 X55.253 Y51.756 I0.492 J0.928
G3 X55.209 Y51.818 Z-4.953 I-0.182 J-0.082 F700
X55.156 Y51.855 Z-4.91 I-0.139 J-0.144
X55.115 Y51.869 Z-4.845 I-0.085 J-0.181
X55.1 Y51.872 Z-4.769 I-0.044 J-0.195
G0 Z5
X60.103 Y51.802
G1 Z2.5 F266.7
Z-4.769
G3 X60.088 Z-4.845 I-0.016 J-0.199
X60.045 Y51.798 Z-4.91 I-0.001 J-0.2
X59.985 Y51.774 Z-4.953 I0.042 J-0.196
X59.928 Y51.724 Z-4.969 I0.102 J-0.172
G1 X59.817 Y51.578 F800
X59.711 Y51.418
X59.613 Y51.249
X59.526 Y51.074
X59.448 Y50.891
X59.381 Y50.703
X59.324 Y50.509
X59.279 Y50.319
X59.311 Y50.352
X59.378 Y50.42
X59.446 Y50.491
X59.515 Y50.563
X59.583 Y50.635
X59.652 Y50.709
X59.722 Y50.784
X59.791 Y50.859
X59.861 Y50.935
X59.93 Y51.013
X60 Y51.091
X60.069 Y51.169
X60.139 Y51.248
X60.208 Y51.328
X60.277 Y51.408
X60.345 Y51.488
X60.413 Y51.568
X60.481 Y51.649
X60.548 Y51.73
X60.614 Y51.81
X60.68 Y51.891
X60.745 Y51.971
X60.809 Y52.051
X60.872 Y52.131
X60.934 Y52.211
X60.995 Y52.289
X61.055 Y52.368
X61.115 Y52.446
X61.172 Y52.523
X61.228 Y52.599
X61.271 Y52.657
X61.165 Y52.62
X60.984 Y52.542
X60.811 Y52.455
X60.645 Y52.358
X60.487 Y52.252
X60.336 Y52.136
X60.193 Y52.009
X60.058 Y51.874
X59.933 Y51.73
X59.928 Y51.724
G3 X59.895 Y51.655 Z-4.953 I0.159 J-0.121 F700
X59.888 Y51.591 Z-4.91 I0.193 J-0.053
X59.895 Y51.549 Z-4.845 I0.2 J0.011
X59.899 Y51.534 Z-4.769 I0.193 J0.054
G0 Z5
X65.728 Y48.535
G1 Z2.5 F266.7
Z-4.769
G3 X65.741 Y48.528 Z-4.845 I0.091 J0.178
X65.783 Y48.516 Z-4.91 I0.078 J0.184
X65.848 Y48.515 Z-4.953 I0.036 J0.197
X65.919 Y48.539 Z-4.969 I-0.028 J0.198
X66.309 Y48.812 I-1.393 J2.405 F800
X66.757 Y49.379 I-1.133 J1.356
X66.778 Y49.426 I-0.772 J0.385
X66.563 Y49.741 I-0.209 J0.089
X66.209 Y49.674 I0.031 J-1.139
X65.876 Y49.537 I1.353 J-3.761
X65.266 Y49.15 I1.173 J-2.521
X64.818 Y48.583 I1.133 J-1.355
X64.796 Y48.536 I0.769 J-0.384
X65.011 Y48.221 I0.209 J-0.089
X65.365 Y48.287 I-0.031 J1.139
X65.699 Y48.425 I-1.352 J3.76
X65.919 Y48.539 I-1.172 J2.52
G2 X67.269 Y48.517 I0.656 J-1.133
G3 X68.527 Y49.006 I0.446 J0.714
G1 X68.607 Y49.296
X68.652 Y49.635
X68.646 Y49.952
X68.594 Y50.243
X68.501 Y50.505
X68.369 Y50.741
X68.198 Y50.95
X67.987 Y51.133
X67.735 Y51.287
X67.442 Y51.408
X67.11 Y51.491
X66.745 Y51.529
X66.353 Y51.518
X65.943 Y51.456
X65.527 Y51.341
X65.113 Y51.176
X64.713 Y50.962
X64.335 Y50.705
X63.99 Y50.41
X63.685 Y50.085
X63.426 Y49.739
X63.219 Y49.381
X63.066 Y49.02
X62.967 Y48.665
X62.923 Y48.326
X62.928 Y48.009
X62.98 Y47.719
X63.073 Y47.456
X63.206 Y47.22
X63.377 Y47.011
X63.587 Y46.828
X63.839 Y46.674
X64.132 Y46.553
X64.464 Y46.471
X64.829 Y46.433
X65.221 Y46.444
X65.631 Y46.506
X66.048 Y46.62
X66.461 Y46.786
X66.862 Y46.999
X67.239 Y47.257
X67.584 Y47.551
X67.889 Y47.876
X68.148 Y48.222
X68.356 Y48.581
X68.509 Y48.942
X68.527 Y49.006
G3 X68.533 Y49.082 Z-4.953 I-0.193 J0.053 F700
X68.515 Y49.144 Z-4.91 I-0.199 J-0.022
X68.493 Y49.181 Z-4.845 I-0.181 J-0.085
X68.483 Y49.193 Z-4.769 I-0.159 J-0.122
G0 Z5
X72.088 Y44.707
G1 Z2.5 F266.7
Z-4.769
G3 X72.075 Y44.699 Z-4.845 I0.106 J-0.17
X72.043 Y44.67 Z-4.91 I0.119 J-0.161
X72.009 Y44.615 Z-4.953 I0.15 J-0.132
X71.994 Y44.54 Z-4.969 I0.185 J-0.077
X72.129 Y43.931 I1.366 J-0.017 F800
X72.52 Y43.523 I0.821 J0.395
X73.086 Y43.547 I0.262 J0.49
X73.55 Y44.313 I-0.565 J0.866
X73.336 Y45.182 I-1.34 J0.131
X72.895 Y45.499 I-0.632 J-0.414
X72.366 Y45.374 I-0.146 J-0.562
X72.004 Y44.693 I0.713 J-0.816
X71.994 Y44.54 I1.355 J-0.169
G2 X71.334 Y43.429 I-1.293 J0.016
G3 X71.246 Y42.139 I0.379 J-0.674
G1 X71.438 Y41.994
X71.751 Y41.82
X72.08 Y41.695
X72.419 Y41.621
X72.768 Y41.597
X73.118 Y41.621
X73.457 Y41.695
X73.786 Y41.82
X74.099 Y41.994
X74.391 Y42.215
X74.655 Y42.481
X74.886 Y42.786
X75.078 Y43.127
X75.227 Y43.496
X75.329 Y43.886
X75.38 Y44.289
Y44.697
X75.329 Y45.099
X75.227 Y45.49
X75.078 Y45.859
X74.886 Y46.199
X74.655 Y46.505
X74.391 Y46.771
X74.099 Y46.992
X73.786 Y47.166
X73.457 Y47.291
X73.118 Y47.365
X72.768 Y47.389
X72.419 Y47.365
X72.08 Y47.291
X71.751 Y47.166
X71.438 Y46.992
X71.146 Y46.771
X70.882 Y46.505
X70.651 Y46.199
X70.458 Y45.859
X70.309 Y45.49
X70.208 Y45.1
X70.157 Y44.697
Y44.289
X70.208 Y43.886
X70.309 Y43.496
X70.458 Y43.127
X70.651 Y42.786
X70.882 Y42.481
X71.146 Y42.215
X71.246 Y42.139
G3 X71.314 Y42.106 Z-4.953 I0.121 J0.159 F700
X71.378 Y42.099 Z-4.91 I0.053 J0.193
X71.421 Y42.106 Z-4.845 I-0.012 J0.2
X71.436 Y42.111 Z-4.769 I-0.054 J0.192
G0 Z5
X74.603 Y37.003
G1 Z2.5 F266.7
Z-4.769
G3 X74.589 Y37.007 Z-4.845 I-0.061 J-0.191
X74.546 Y37.012 Z-4.91 I-0.046 J-0.195
X74.482 Y37.003 Z-4.953 I-0.003 J-0.2
X74.415 Y36.966 Z-4.969 I0.061 J-0.19
X74.178 Y36.753 I2.5 J-3.015 F800
X74.301 Y36.577 I0.076 J-0.078
X74.543 Y36.738 I-0.468 J0.971
X74.758 Y36.933 I-4.737 J5.405
G2 X74.799 Y36.971 I1.154 J-1.214
G3 X74.84 Y37.01 I-0.705 J0.793
X74.711 Y37.176 I-0.074 J0.075
X74.432 Y36.98 I1.173 J-1.968
X74.415 Y36.966 I2.483 J-3.029
G2 X73.458 Y36.841 I-0.577 J0.696
G3 X72.533 Y36.57 I-0.307 J-0.665
G1 X72.472 Y36.474
X72.401 Y36.353
X72.337 Y36.235
X72.281 Y36.121
X72.232 Y36.01
X72.191 Y35.904
X72.157 Y35.803
X72.131 Y35.709
X72.111 Y35.621
X72.099 Y35.541
X72.092 Y35.468
X72.09 Y35.401
X72.093 Y35.342
X72.1 Y35.289
X72.111 Y35.242
X72.122 Y35.206
X72.138 Y35.196
X72.177 Y35.177
X72.228 Y35.156
X72.287 Y35.136
X72.352 Y35.117
X72.425 Y35.1
X72.505 Y35.085
X72.593 Y35.073
X72.688 Y35.064
X72.789 Y35.058
X72.895 Y35.056
X73.008 Y35.058
X73.125 Y35.065
X73.244 Y35.075
X73.365 Y35.09
X73.487 Y35.109
X73.61 Y35.131
X73.732 Y35.158
X73.855 Y35.188
X73.977 Y35.222
X74.099 Y35.259
X74.221 Y35.3
X74.341 Y35.343
X74.461 Y35.39
X74.58 Y35.441
X74.699 Y35.495
X74.816 Y35.551
X74.932 Y35.611
X74.998 Y35.647
X75.122 Y35.736
X75.275 Y35.856
X75.418 Y35.977
X75.551 Y36.099
X75.676 Y36.222
X75.791 Y36.345
X75.898 Y36.469
X75.997 Y36.594
X76.088 Y36.718
X76.171 Y36.842
X76.247 Y36.966
X76.315 Y37.088
X76.376 Y37.209
X76.431 Y37.329
X76.478 Y37.446
X76.519 Y37.562
X76.554 Y37.675
X76.583 Y37.785
X76.607 Y37.892
X76.625 Y37.995
X76.638 Y38.095
X76.646 Y38.191
X76.65 Y38.281
X76.649 Y38.366
X76.645 Y38.446
X76.638 Y38.519
X76.627 Y38.586
X76.614 Y38.648
X76.599 Y38.703
X76.591 Y38.727
X76.55 Y38.743
X76.496 Y38.758
X76.43 Y38.772
X76.353 Y38.783
X76.267 Y38.79
X76.174 Y38.793
X76.076 Y38.792
X75.976 Y38.786
X75.871 Y38.776
X75.762 Y38.762
X75.648 Y38.743
X75.531 Y38.721
X75.412 Y38.693
X75.291 Y38.662
X75.168 Y38.626
X75.045 Y38.587
X74.921 Y38.543
X74.797 Y38.496
X74.674 Y38.445
X74.552 Y38.39
X74.43 Y38.331
X74.311 Y38.269
X74.194 Y38.205
X74.081 Y38.137
X73.971 Y38.067
X73.865 Y37.994
X73.765 Y37.919
X73.674 Y37.847
X73.546 Y37.734
X73.413 Y37.611
X73.285 Y37.486
X73.163 Y37.359
X73.045 Y37.232
X72.934 Y37.105
X72.828 Y36.977
X72.729 Y36.849
X72.636 Y36.723
X72.551 Y36.598
X72.533 Y36.57
G3 X72.505 Y36.499 Z-4.953 I0.169 J-0.107 F700
X72.504 Y36.434 Z-4.91 I0.197 J-0.037
X72.514 Y36.393 Z-4.845 I0.198 J0.028
X72.52 Y36.379 Z-4.769 I0.187 J0.07
G0 Z5
X78.696 Y44.414
G1 Z2.5 F266.7
Z-4.769
G3 X78.683 Y44.405 Z-4.845 I0.114 J-0.164
X78.653 Y44.374 Z-4.91 I0.126 J-0.155
X78.622 Y44.318 Z-4.953 I0.157 J-0.124
X78.61 Y44.243 Z-4.969 I0.188 J-0.068
G1 X78.614 Y44.129 F800
X78.622 Y44.001
X78.632 Y43.87
X78.645 Y43.736
X78.661 Y43.6
X78.68 Y43.463
X78.702 Y43.326
X78.726 Y43.188
X78.753 Y43.051
X78.782 Y42.915
X78.813 Y42.782
X78.846 Y42.65
X78.882 Y42.522
X78.919 Y42.398
X78.957 Y42.279
X78.997 Y42.165
X79.037 Y42.057
X79.079 Y41.956
X79.12 Y41.863
X79.139 Y41.824
X79.21 Y41.902
X79.283 Y41.988
X79.357 Y42.08
X79.431 Y42.179
X79.505 Y42.284
X79.578 Y42.394
X79.649 Y42.508
X79.718 Y42.627
X79.784 Y42.749
X79.846 Y42.873
X79.903 Y42.998
X79.956 Y43.125
X80.005 Y43.251
X80.048 Y43.378
X80.086 Y43.504
X80.118 Y43.63
X80.145 Y43.756
X80.167 Y43.88
X80.182 Y44.002
X80.192 Y44.123
X80.196 Y44.242
X80.194 Y44.386
G2 Y44.398 I1.05 J0.018
G1 X80.193 Y44.525
X80.187 Y44.628
X80.177 Y44.733
X80.162 Y44.84
X80.143 Y44.948
X80.118 Y45.058
X80.09 Y45.168
X80.057 Y45.278
X80.02 Y45.389
X79.98 Y45.5
X79.935 Y45.61
X79.888 Y45.718
X79.837 Y45.826
X79.783 Y45.932
X79.726 Y46.037
X79.667 Y46.139
X79.606 Y46.238
X79.543 Y46.335
X79.479 Y46.428
X79.414 Y46.518
X79.348 Y46.604
X79.282 Y46.685
X79.217 Y46.762
X79.152 Y46.833
X79.088 Y46.9
X79.026 Y46.96
X79.009 Y46.976
X78.991 Y46.934
X78.956 Y46.846
X78.921 Y46.751
X78.888 Y46.65
X78.855 Y46.543
X78.823 Y46.43
X78.793 Y46.314
X78.765 Y46.194
X78.739 Y46.071
X78.714 Y45.945
X78.692 Y45.817
X78.672 Y45.688
X78.655 Y45.559
X78.64 Y45.428
X78.627 Y45.298
X78.618 Y45.169
X78.61 Y45.042
X78.606 Y44.916
X78.604 Y44.792
X78.605 Y44.673
X78.609 Y44.543
G2 X78.61 Y44.497 I-1.049 J-0.033
G1 X78.608 Y44.37
X78.61 Y44.252
Y44.243
G3 X78.627 Y44.169 Z-4.953 I0.2 J0.007 F700
X78.663 Y44.115 Z-4.91 I0.183 J0.081
X78.695 Y44.086 Z-4.845 I0.147 J0.135
X78.708 Y44.078 Z-4.769 I0.115 J0.164
G0 Z5
X74.125 Y51.941
G1 Z2.5 F266.7
Z-4.769
G3 X74.124 Y51.925 Z-4.845 I0.199 J-0.016
X74.129 Y51.882 Z-4.91 I0.2 J-0.001
X74.153 Y51.822 Z-4.953 I0.195 J0.042
X74.203 Y51.765 Z-4.969 I0.172 J0.102
X74.813 Y51.391 I2.161 J2.838 F800
X74.949 Y51.572 I0.05 J0.104
X74.585 Y51.922 I-2.4 J-2.136
X74.172 Y52.214 I-2.314 J-2.827
X73.969 Y52.321 I-0.944 J-1.549
X73.752 Y52.395 I-0.526 J-1.176
X73.662 Y52.233 I-0.023 J-0.094
X74.203 Y51.765 I4.068 J4.165
G2 X74.576 Y50.823 I-0.594 J-0.78
G3 X75.112 Y49.962 I0.756 J-0.127
G1 X75.188 Y49.94
X75.326 Y49.902
X75.463 Y49.869
X75.596 Y49.841
X75.726 Y49.818
X75.851 Y49.8
X75.971 Y49.787
X76.084 Y49.779
X76.191 Y49.776
X76.295 Y49.777
X76.391 Y49.784
X76.479 Y49.795
X76.553 Y49.809
X76.613 Y49.826
X76.656 Y49.842
X76.662 Y49.855
X76.669 Y49.873
X76.677 Y49.893
X76.684 Y49.915
X76.692 Y49.937
X76.699 Y49.962
X76.705 Y49.987
X76.712 Y50.015
X76.718 Y50.044
X76.724 Y50.074
X76.729 Y50.105
X76.734 Y50.138
X76.738 Y50.172
X76.742 Y50.207
X76.744 Y50.242
X76.747 Y50.28
Y50.29
X76.746 Y50.311
Y50.32
X76.745 Y50.332
Y50.345
Y50.357
X76.744 Y50.365
Y50.373
Y50.382
Y50.39
X76.743 Y50.403
Y50.415
Y50.427
Y50.436
X76.742 Y50.444
Y50.452
Y50.46
Y50.473
Y50.485
X76.741 Y50.498
Y50.506
Y50.514
Y50.522
Y50.531
Y50.537
X76.734 Y50.612
X76.72 Y50.714
X76.701 Y50.82
X76.676 Y50.929
X76.646 Y51.041
X76.609 Y51.155
X76.567 Y51.273
X76.518 Y51.392
X76.462 Y51.513
X76.401 Y51.633
X76.334 Y51.753
X76.262 Y51.87
X76.185 Y51.985
X76.103 Y52.099
X76.016 Y52.211
X75.925 Y52.321
X75.829 Y52.428
X75.729 Y52.533
X75.626 Y52.636
X75.518 Y52.736
X75.407 Y52.833
X75.292 Y52.928
X75.174 Y53.021
X75.041 Y53.119
X75.037 Y53.122
X74.956 Y53.183
X74.889 Y53.229
X74.818 Y53.274
X74.746 Y53.316
X74.672 Y53.356
X74.595 Y53.394
X74.516 Y53.43
X74.434 Y53.463
X74.35 Y53.495
X74.265 Y53.524
X74.177 Y53.551
X74.088 Y53.576
X73.996 Y53.599
X73.903 Y53.619
X73.809 Y53.637
X73.713 Y53.652
X73.617 Y53.666
X73.519 Y53.677
X73.421 Y53.685
X73.322 Y53.692
X73.223 Y53.696
X73.125 Y53.697
X73.025
X72.926 Y53.694
X72.839 Y53.69
X72.752 Y53.684
X72.667 Y53.676
X72.583 Y53.667
X72.501 Y53.656
X72.42 Y53.644
X72.34 Y53.631
X72.264 Y53.616
X72.189 Y53.6
X72.117 Y53.583
X72.047 Y53.565
X71.98 Y53.546
X71.916 Y53.526
X71.853 Y53.505
X71.793 Y53.483
X71.736 Y53.46
X71.682 Y53.437
X71.634 Y53.414
X71.591 Y53.391
X71.556 Y53.371
X71.548 Y53.353
X71.54 Y53.328
X71.535 Y53.298
X71.533 Y53.262
X71.535 Y53.216
X71.542 Y53.159
X71.556 Y53.094
X71.577 Y53.02
X71.606 Y52.939
X71.641 Y52.854
X71.684 Y52.764
X71.734 Y52.67
X71.79 Y52.573
X71.852 Y52.474
X71.919 Y52.374
X71.99 Y52.274
X72.065 Y52.174
X72.143 Y52.076
X72.223 Y51.979
X72.306 Y51.881
X72.392 Y51.784
X72.481 Y51.686
X72.573 Y51.589
X72.667 Y51.492
X72.763 Y51.396
X72.861 Y51.301
X72.96 Y51.206
X73.06 Y51.112
X73.161 Y51.02
X73.251 Y50.94
X73.349 Y50.859
X73.456 Y50.777
X73.569 Y50.696
X73.688 Y50.617
X73.811 Y50.54
X73.938 Y50.465
X74.07 Y50.393
X74.205 Y50.323
X74.342 Y50.257
X74.481 Y50.194
X74.622 Y50.135
X74.763 Y50.08
X74.906 Y50.029
X75.047 Y49.982
X75.112 Y49.962
G3 X75.187 Y49.955 Z-4.953 I0.058 J0.192 F700
X75.25 Y49.971 Z-4.91 I-0.018 J0.199
X75.287 Y49.993 Z-4.845 I-0.081 J0.183
X75.299 Y50.002 Z-4.769 I-0.118 J0.161
G0 Z5
X67.35 Y55.404
G1 Z2.5 F266.7
Z-4.769
G3 X67.34 Y55.415 Z-4.845 I-0.154 J-0.127
X67.307 Y55.443 Z-4.91 I-0.144 J-0.139
X67.248 Y55.469 Z-4.953 I-0.111 J-0.166
X67.172 Y55.475 Z-4.969 I-0.052 J-0.193
G1 X67.162 Y55.474 F800
X66.997 Y55.445
X66.835 Y55.409
X66.676 Y55.364
X66.521 Y55.311
X66.37 Y55.25
X66.223 Y55.181
X66.08 Y55.104
X65.942 Y55.019
X65.808 Y54.926
X65.68 Y54.826
X65.557 Y54.718
X65.459 Y54.622
X65.548 Y54.616
X65.652 Y54.61
X65.761 Y54.606
X65.874 Y54.604
X65.99
X66.11 Y54.606
X66.232 Y54.61
X66.357 Y54.615
X66.485 Y54.622
X66.614 Y54.632
X66.745 Y54.643
X66.876 Y54.655
X67.009 Y54.67
X67.143 Y54.686
X67.277 Y54.704
X67.411 Y54.723
X67.544 Y54.744
X67.676 Y54.767
X67.808 Y54.791
X67.939 Y54.816
X68.069 Y54.843
X68.195 Y54.871
X68.321 Y54.9
X68.444 Y54.931
X68.563 Y54.962
X68.68 Y54.994
X68.794 Y55.028
X68.903 Y55.062
X69.008 Y55.096
X69.109 Y55.132
X69.179 Y55.157
X69.126 Y55.185
X68.984 Y55.248
X68.835 Y55.306
X68.68 Y55.357
X68.519 Y55.402
X68.353 Y55.439
X68.184 Y55.469
X68.014 Y55.49
X67.843 Y55.504
X67.671 Y55.509
X67.5 Y55.506
X67.331 Y55.494
X67.172 Y55.475
G3 X67.1 Y55.452 Z-4.953 I0.024 J-0.199 F700
X67.049 Y55.412 Z-4.91 I0.096 J-0.175
X67.023 Y55.377 Z-4.845 I0.147 J-0.136
X67.016 Y55.364 Z-4.769 I0.173 J-0.101
G0 Z5
X59.221 Y44.61
G1 Z2.5 F266.7
Z-4.769
G3 X59.208 Y44.601 Z-4.845 I0.1 J-0.173
X59.175 Y44.573 Z-4.91 I0.113 J-0.165
X59.139 Y44.52 Z-4.953 I0.146 J-0.137
X59.121 Y44.446 Z-4.969 I0.182 J-0.083
X59.362 Y43.284 I2.398 J-0.109 F800
X59.635 Y43.308 I0.132 J0.064
X59.783 Y44.282 I-3.775 J1.074
X59.727 Y45.266 I-5.962 J0.152
G2 X59.709 Y45.413 I5.319 J0.749
G3 X59.685 Y45.559 I-1.527 J-0.172
X59.421 Y45.593 I-0.138 J-0.029
X59.121 Y44.446 I2.533 J-1.276
G2 X58.791 Y43.962 I-0.556 J0.025
G3 X58.554 Y43.427 I0.177 J-0.399
G1 X58.585 Y43.332
X58.627 Y43.217
X58.673 Y43.105
X58.723 Y42.994
X58.776 Y42.886
X58.831 Y42.781
X58.889 Y42.68
X58.948 Y42.583
X59.01 Y42.49
X59.073 Y42.402
X59.136 Y42.319
X59.199 Y42.241
X59.261 Y42.17
X59.322 Y42.105
X59.381 Y42.048
X59.436 Y41.998
X59.488 Y41.956
X59.533 Y41.922
X59.569 Y41.898
X59.599 Y41.914
X59.632 Y41.936
X59.668 Y41.963
X59.706 Y41.996
X59.749 Y42.037
X59.793 Y42.084
X59.839 Y42.138
X59.886 Y42.2
X59.935 Y42.269
X59.983 Y42.345
X60.032 Y42.427
X60.079 Y42.517
X60.126 Y42.612
X60.17 Y42.715
X60.214 Y42.823
X60.254 Y42.937
X60.293 Y43.057
X60.329 Y43.184
X60.362 Y43.314
X60.39 Y43.447
X60.416 Y43.582
X60.437 Y43.72
X60.455 Y43.858
X60.469 Y43.998
X60.48 Y44.139
X60.487 Y44.281
X60.49 Y44.422
X60.489 Y44.589
X60.485 Y44.755
X60.477 Y44.915
X60.465 Y45.071
X60.45 Y45.221
X60.431 Y45.365
X60.41 Y45.505
X60.385 Y45.638
X60.358 Y45.766
X60.329 Y45.888
X60.297 Y46.003
X60.263 Y46.113
X60.228 Y46.216
X60.191 Y46.312
X60.152 Y46.401
X60.113 Y46.484
X60.074 Y46.559
X60.034 Y46.628
X59.996 Y46.689
X59.958 Y46.742
X59.921 Y46.79
X59.886 Y46.829
X59.853 Y46.863
X59.823 Y46.891
X59.795 Y46.912
X59.772 Y46.928
X59.752 Y46.94
X59.737 Y46.947
X59.727 Y46.95
X59.72 Y46.952
X59.71 Y46.953
X59.703 Y46.951
X59.683 Y46.945
X59.652 Y46.933
X59.611 Y46.913
X59.564 Y46.884
X59.511 Y46.847
X59.455 Y46.803
X59.396 Y46.751
X59.333 Y46.691
X59.269 Y46.622
X59.204 Y46.547
X59.138 Y46.465
X59.073 Y46.376
X59.008 Y46.281
X58.946 Y46.183
X58.886 Y46.08
X58.828 Y45.974
X58.773 Y45.866
X58.722 Y45.755
X58.674 Y45.643
X58.629 Y45.53
X58.589 Y45.416
X58.552 Y45.302
X58.519 Y45.187
X58.49 Y45.072
X58.465 Y44.957
X58.444 Y44.844
X58.429 Y44.731
X58.418 Y44.621
X58.411 Y44.515
X58.41 Y44.391
X58.409 Y44.259
X58.414 Y44.146
X58.424 Y44.031
X58.439 Y43.915
X58.459 Y43.799
X58.483 Y43.682
X58.513 Y43.565
X58.547 Y43.449
X58.554 Y43.427
G3 X58.591 Y43.36 Z-4.953 I0.19 J0.063 F700
X58.64 Y43.318 Z-4.91 I0.153 J0.129
X58.679 Y43.3 Z-4.845 I0.104 J0.171
X58.694 Y43.295 Z-4.769 I0.064 J0.189
G0 Z5
X50.716 Y34.663
G1 Z2.5 F266.7
Z-4.969
G2 X50.727 Y34.662 I-0.1 J-1.047 F800
X50.716 Y34.663 I0.1 J1.045
G0 Z15

(Drill1)
M8
X104.575 Y69.725
Z15
Z5
Z4.981
Z1.981
G1 Z-0.519 F266.7
G0 Z-0.419
G1 Z-1.019 F266.7
G0 Z-0.919
G1 Z-1.519 F266.7
G0 Z-1.419
G1 Z-2.019 F266.7
G0 Z-1.919
G1 Z-2.519 F266.7
G0 Z-2.419
G1 Z-3.019 F266.7
G0 Z-2.919
G1 Z-3.519 F266.7
G0 Z-3.419
G1 Z-4.019 F266.7
G0 Z-3.919
G1 Z-4.519 F266.7
G0 Z-4.419
G1 Z-5 F266.7
G0 Z5
Y19.975
Z4.981
Z1.981
G1 Z-0.519 F266.7
G0 Z-0.419
G1 Z-1.019 F266.7
G0 Z-0.919
G1 Z-1.519 F266.7
G0 Z-1.419
G1 Z-2.019 F266.7
G0 Z-1.919
G1 Z-2.519 F266.7
G0 Z-2.419
G1 Z-3.019 F266.7
G0 Z-2.919
G1 Z-3.519 F266.7
G0 Z-3.419
G1 Z-4.019 F266.7
G0 Z-3.919
G1 Z-4.519 F266.7
G0 Z-4.419
G1 Z-5 F266.7
G0 Z5
X45.825
Z4.981
Z1.981
G1 Z-0.519 F266.7
G0 Z-0.419
G1 Z-1.019 F266.7
G0 Z-0.919
G1 Z-1.519 F266.7
G0 Z-1.419
G1 Z-2.019 F266.7
G0 Z-1.919
G1 Z-2.519 F266.7
G0 Z-2.419
G1 Z-3.019 F266.7
G0 Z-2.919
G1 Z-3.519 F266.7
G0 Z-3.419
G1 Z-4.019 F266.7
G0 Z-3.919
G1 Z-4.519 F266.7
G0 Z-4.419
G1 Z-5 F266.7
G0 Z5
Y69.85
Z4.981
Z1.981
G1 Z-0.519 F266.7
G0 Z-0.419
G1 Z-1.019 F266.7
G0 Z-0.919
G1 Z-1.519 F266.7
G0 Z-1.419
G1 Z-2.019 F266.7
G0 Z-1.919
G1 Z-2.519 F266.7
G0 Z-2.419
G1 Z-3.019 F266.7
G0 Z-2.919
G1 Z-3.519 F266.7
G0 Z-3.419
G1 Z-4.019 F266.7
G0 Z-3.919
G1 Z-4.519 F266.7
G0 Z-4.419
G1 Z-5 F266.7
G0 Z5
Z15

(2D Contour2)
M8
X104.475 Y69.525
Z15
Z5
G1 Z1 F700
Z0.181 F266.7
G18 G2 X104.675 Z-0.019 I0.2
G1 X104.875 F700
G17 G3 X105.075 Y69.725 J0.2
X104.075 I-0.5 F800
X105.075 I0.5
X104.875 Y69.925 I-0.2 F700
G1 X104.675
G18 G3 X104.475 Z0.181 K0.2
G0 Z5
Y19.775
G1 Z1 F700
Z0.181 F266.7
G2 X104.675 Z-0.019 I0.2
G1 X104.875 F700
G17 G3 X105.075 Y19.975 J0.2
X104.075 I-0.5 F800
X105.075 I0.5
X104.875 Y20.175 I-0.2 F700
G1 X104.675
G18 G3 X104.475 Z0.181 K0.2
G0 Z5
X45.725 Y19.775
G1 Z1 F700
Z0.181 F266.7
G2 X45.925 Z-0.019 I0.2
G1 X46.125 F700
G17 G3 X46.325 Y19.975 J0.2
X45.325 I-0.5 F800
X46.325 I0.5
X46.125 Y20.175 I-0.2 F700
G1 X45.925
G18 G3 X45.725 Z0.181 K0.2
G0 Z5
X45.73 Y69.648
G1 Z1 F700
Z0.181 F266.7
X45.737 Z0.13
X45.757 Z0.081
X45.788 Y69.649 Z0.04
X45.83 Y69.65 Z0.008
X45.878 Y69.651 Z-0.012
X45.93 Y69.653 Z-0.019
X46.13 Y69.657 F700
G17 G3 X46.325 Y69.862 I-0.005 J0.2
X45.325 Y69.838 I-0.5 J-0.012 F800
X46.325 Y69.85 I0.5 J0.012
Y69.862 I-0.5
X46.12 Y70.057 I-0.2 J-0.005 F700
G1 X45.92 Y70.052
X45.868 Y70.051 Z-0.012
X45.82 Y70.05 Z0.008
X45.779 Y70.049 Z0.04
X45.747 Y70.048 Z0.081
X45.727 Z0.13
X45.72 Y70.047 Z0.181
G0 Z15
M9
G28 G91 Z0
G28 X0 Y0
M30
%
