﻿* Encoding: UTF-8.

DATASET ACTIVATE 数据集2.
GLM S1M1任务完成率 S1M2任务完成率 S1M3任务完成率 S2M1任务完成率 S2M2任务完成率 S2M3任务完成率 S3M1任务完成率 S3M2任务完成率 S3M3任务完成率
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_点击成功率	S1M2_点击成功率	S1M3_点击成功率	S2M1_点击成功率	S2M2_点击成功率	S2M3_点击成功率	S3M1_点击成功率	S3M2_点击成功率	S3M3_点击成功率
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_平均任务完成时间	S1M2_平均任务完成时间	S1M3_平均任务完成时间	S2M1_平均任务完成时间	S2M2_平均任务完成时间	S2M3_平均任务完成时间	S3M1_平均任务完成时间	S3M2_平均任务完成时间	S3M3_平均任务完成时间
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_进入应用次数	S1M2_进入应用次数	S1M3_进入应用次数	S2M1_进入应用次数	S2M2_进入应用次数	S2M3_进入应用次数	S3M1_进入应用次数	S3M2_进入应用次数	S3M3_进入应用次数
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.


GLM S1M1_菜单内停留时间	S1M2_菜单内停留时间	S1M3_菜单内停留时间	S2M1_菜单内停留时间	S2M2_菜单内停留时间	S2M3_菜单内停留时间	S3M1_菜单内停留时间	S3M2_菜单内停留时间	S3M3_菜单内停留时间
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_应用内停留时间	S1M2_应用内停留时间	S1M3_应用内停留时间	S2M1_应用内停留时间	S2M2_应用内停留时间	S2M3_应用内停留时间	S3M1_应用内停留时间	S3M2_应用内停留时间	S3M3_应用内停留时间
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_菜单内总滑动次数	S1M2_菜单内总滑动次数	S1M3_菜单内总滑动次数	S2M1_菜单内总滑动次数	S2M2_菜单内总滑动次数	S2M3_菜单内总滑动次数	S3M1_菜单内总滑动次数	S3M2_菜单内总滑动次数	S3M3_菜单内总滑动次数
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_应用内总滑动次数	S1M2_应用内总滑动次数	S1M3_应用内总滑动次数	S2M1_应用内总滑动次数	S2M2_应用内总滑动次数	S2M3_应用内总滑动次数	S3M1_应用内总滑动次数	S3M2_应用内总滑动次数	S3M3_应用内总滑动次数
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_EU	S1M2_EU	S1M3_EU	S2M1_EU	S2M2_EU	S2M3_EU	S3M1_EU	S3M2_EU	S3M3_EU
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_CW	S1M2_CW	S1M3_CW	S2M1_CW	S2M2_CW	S2M3_CW	S3M1_CW	S3M2_CW	S3M3_CW
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

GLM S1M1_FE	S1M2_FE	S1M3_FE	S2M1_FE	S2M2_FE	S2M3_FE	S3M1_FE	S3M2_FE	S3M3_FE
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

DATASET ACTIVATE DataSet1.
GLM S1M1_EU S1M2_EU S1M3_EU S2M1_EU S2M2_EU S2M3_EU S3M1_EU S3M2_EU S3M3_EU
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.

DATASET ACTIVATE DataSet1.
GLM S1M1_U S1M2_U S1M3_U S2M1_U S2M2_U S2M3_U S3M1_U S3M2_U S3M3_U
  /WSFACTOR=Aids 3 Repeated Motion 3 Repeated 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Aids*Motion)
  /EMMEANS=TABLES(Aids) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Motion) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Motion)ADJ(SIDAK)
  /EMMEANS=TABLES(Aids*Motion)COMPARE(Aids)ADJ(SIDAK)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Aids Motion Aids*Motion.
