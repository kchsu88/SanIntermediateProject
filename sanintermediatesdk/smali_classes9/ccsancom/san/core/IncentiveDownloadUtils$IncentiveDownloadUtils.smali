.class final Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:[I


# instance fields
.field final synthetic unifiedDownload:Lccsanandroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:[I

    return-void

    :array_0
    .array-data 4
        -0x7f3dad20
        -0x239ade78
        -0x1d0c858e
        0x6db2685e
        -0x303826f9
        -0x71620afb
        0x7d7f7e60
        -0x4e9739e8
        0x5cf92a62
        -0x2cc04ffc
        0x4d95a733    # 3.13845344E8f
        0x5b20df8
        -0x6b2d1cd5
        -0x1a2c2fd2
        -0x2d6b7d4c
        -0x64889100
        0x4687e38
        0x67a3af1b
    .end array-data
.end method

.method constructor <init>(JLccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method

.method private static removeDownloadListener([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public execute()V
    .locals 15

    .line 44
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/getErrorCode;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x37

    if-eqz v1, :cond_0

    .line 37
    const/16 v1, 0x4d

    goto :goto_0

    :cond_0
    const/16 v1, 0x37

    :goto_0
    const-string v3, "CPIApkOperateHelper"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 8
    const/16 v1, 0x1c

    const/16 v5, 0x10

    :try_start_0
    new-instance v6, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :pswitch_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v4, v4}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x39

    invoke-static {v0, v1}, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :goto_1
    :try_start_1
    invoke-direct {v6, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "saveTime"

    .line 9
    invoke-virtual {v6, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    cmp-long v12, v7, v9

    if-nez v12, :cond_1

    .line 37
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/4 v9, 0x1

    :goto_2
    packed-switch v9, :pswitch_data_1

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    goto :goto_3

    .line 9
    :pswitch_1
    const-string v4, "#dealAutoStartLifeListener return : saveTime is null"

    .line 11
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :goto_3
    invoke-static {}, Lccsansan/cy/unifiedDownload;->trackReportShow()I

    move-result v12
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v9, v7

    int-to-long v7, v12

    cmp-long v12, v9, v7

    if-lez v12, :cond_2

    .line 37
    const/16 v7, 0x21

    goto :goto_4

    :cond_2
    const/16 v7, 0x10

    :goto_4
    const/4 v8, 0x2

    packed-switch v7, :pswitch_data_2

    .line 33
    sget v4, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v4, v4, 0x45

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v4, v8

    if-nez v4, :cond_a

    goto/16 :goto_c

    .line 17
    :pswitch_2
    :try_start_2
    const-string v7, "pkgName"

    .line 21
    invoke-virtual {v6, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "adId"

    .line 22
    invoke-virtual {v6, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    iget-object v9, p0, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/app/Activity;

    const/16 v10, 0xd

    if-nez v9, :cond_3

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    sget v12, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/2addr v12, v10

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v12, v8

    .line 25
    :cond_3
    :try_start_3
    invoke-static {v9, v7}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v12
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v13, 0x9

    const-string v14, ""

    if-nez v12, :cond_4

    :try_start_4
    new-array v6, v1, [I

    const v7, -0x193d4242

    aput v7, v6, v4

    const v7, 0x6edf13b5

    aput v7, v6, v11

    const v7, -0x5cf18800

    aput v7, v6, v8

    const/4 v7, 0x3

    const v8, -0x3095e5e2

    aput v8, v6, v7

    const/4 v7, 0x4

    const v8, 0x2f0aac28

    aput v8, v6, v7

    const/4 v7, 0x5

    const v8, 0x10f651b4

    aput v8, v6, v7

    const/4 v7, 0x6

    const v8, 0x3b26c1d9

    aput v8, v6, v7

    const/4 v7, 0x7

    const v8, 0x132ff88c

    aput v8, v6, v7

    const/16 v7, 0x8

    const v8, -0x7c59faff

    aput v8, v6, v7

    const v7, 0x6fb908fc

    aput v7, v6, v13

    const v7, -0x55a60a6d

    const/16 v8, 0xa

    aput v7, v6, v8

    const/16 v7, 0xb

    const v8, -0x2179cab0

    aput v8, v6, v7

    const/16 v7, 0xc

    const v8, -0x550c7a90

    aput v8, v6, v7

    const v7, 0x270cd38d

    aput v7, v6, v10

    const/16 v7, 0xe

    const v8, -0x6727c66a

    aput v8, v6, v7

    const/16 v7, 0xf

    const v8, 0x5426aa34

    aput v8, v6, v7

    const v7, -0x4dff76b4

    aput v7, v6, v5

    const/16 v7, 0x11

    const v8, -0x21c63dc4

    aput v8, v6, v7

    const/16 v7, 0x12

    const v8, 0x7bdf5b86

    aput v8, v6, v7

    const/16 v7, 0x13

    const v8, -0x48c19ba2

    aput v8, v6, v7

    const/16 v7, 0x14

    const v8, -0x3a157549

    aput v8, v6, v7

    const/16 v7, 0x15

    const v8, 0x3f60a4b6

    aput v8, v6, v7

    const/16 v7, 0x16

    const v8, -0x437a3d90

    aput v8, v6, v7

    const/16 v7, 0x17

    const v8, -0x79e1a174

    aput v8, v6, v7

    const/16 v7, 0x18

    const v8, 0x3eec8014

    aput v8, v6, v7

    const/16 v7, 0x19

    const v8, -0x1e4008e5

    aput v8, v6, v7

    const/16 v7, 0x1a

    const v8, -0x460fefc0

    aput v8, v6, v7

    const/16 v7, 0x1b

    const v8, 0x7a025313

    aput v8, v6, v7

    invoke-static {v14, v4}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x38

    invoke-static {v6, v4}, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v10

    invoke-virtual {v10, v7, v14}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v10
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v10, :cond_7

    .line 44
    sget v12, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v12, v12, 0x65

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v12, v8

    if-eqz v12, :cond_5

    .line 33
    :try_start_5
    iget-object v12, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v14, 0xa

    :try_start_6
    div-int/2addr v14, v4
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_7

    goto :goto_5

    .line 44
    :catchall_0
    move-exception v0

    throw v0

    .line 33
    :cond_5
    :try_start_7
    iget-object v12, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    :goto_5
    const-string v12, "hasObb"

    invoke-virtual {v10, v12}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "true"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 37
    const/16 v13, 0x23

    goto :goto_6

    :cond_6
    nop

    :goto_6
    packed-switch v13, :pswitch_data_3

    goto :goto_7

    .line 33
    :pswitch_3
    const/4 v10, 0x1

    goto :goto_8

    .line 36
    :cond_7
    :goto_7
    const/4 v10, 0x0

    :goto_8
    invoke-static {v7, v10}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v10
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v10, :cond_9

    .line 33
    sget v6, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v6, v6, 0x57

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v6, v8

    if-nez v6, :cond_8

    .line 37
    goto :goto_9

    :cond_8
    const/4 v11, 0x0

    :goto_9
    const-string v6, "#dealAutoStartLifeListener return : app had been activated"

    packed-switch v11, :pswitch_data_4

    .line 33
    goto :goto_a

    .line 36
    :pswitch_4
    nop

    .line 37
    :try_start_8
    invoke-static {v3, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    invoke-static {v3, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v6, 0x2d

    :try_start_9
    div-int/2addr v6, v4
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 44
    :goto_b
    return-void

    .line 33
    :catchall_1
    move-exception v0

    throw v0

    .line 37
    :cond_9
    :try_start_a
    const-string v4, "#dealAutoStartLifeListener success"

    .line 41
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v9, v7, v6}, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    .line 15
    :cond_a
    :goto_c
    const-string v4, "#dealAutoStartLifeListener return : interval is illegal"

    .line 17
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lccsanorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    return-void

    .line 42
    :catch_0
    move-exception v4

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v5, v7, 0x10

    sub-int/2addr v2, v5

    invoke-static {v1, v2}, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x23
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        -0x193d4242
        0x6edf13b5
        -0x5cf18800
        -0x3095e5e2
        0x2f0aac28
        0x10f651b4
        0x3b26c1d9
        0x132ff88c
        -0x7c59faff
        0x6fb908fc
        -0x55a60a6d
        -0x2179cab0
        -0x550c7a90
        0x270cd38d
        -0x6727c66a
        0x5426aa34
        -0x4dff76b4
        -0x21c63dc4
        0x5e3af85e
        -0x122ed176
        -0x587d4f4b
        0x424d414f
        0x26c314f4
        -0x706c4a03
        -0x72797468
        0x5fc3ec48
        0x60907eba
        0xc2ddb94
        -0x44768622
        -0x3bbc4aee
    .end array-data

    :array_1
    .array-data 4
        0x5f8002de
        -0x37ed4304
        -0x22ea8ebe
        0x1090547f
        -0x587d4f4b
        0x424d414f
        0x28b37a28
        0x31f04ade
        0x43efbda0
        -0x16c0d10d
        0x24d81e2d
        0x462ab626
        0x471319a8
        -0x6c36ef22
        -0xc57fff9
        0xa280989
        0x6053caf9
        0x612750c8
        -0x791b9ab9
        0x2d482ae7
        -0x2ff2ab93
        0x1527ac85
        0x8775c90
        -0x39eaaf70
        -0x760230f3
        -0x2cc1c3f5
        0x680df454
        0xb7c2f9d
    .end array-data
.end method
