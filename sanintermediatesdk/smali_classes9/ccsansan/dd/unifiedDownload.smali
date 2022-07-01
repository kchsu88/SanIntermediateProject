.class public Lccsansan/dd/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:C

.field private static removeDownloadListener:C

.field private static unifiedDownload:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    const v0, 0xe907

    sput-char v0, Lccsansan/dd/unifiedDownload;->addDownloadListener:C

    const v0, 0xf1b8

    sput-char v0, Lccsansan/dd/unifiedDownload;->getDownloadingList:C

    const v0, 0xfeb2

    sput-char v0, Lccsansan/dd/unifiedDownload;->removeDownloadListener:C

    const v0, 0x81a9

    sput-char v0, Lccsansan/dd/unifiedDownload;->unifiedDownload:C

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/co/resolveUrl;)Lccsanandroid/os/Bundle;
    .locals 13

    .line 57
    nop

    .line 25
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const v1, 0x7fffffff

    .line 31
    invoke-virtual {p0}, Lccsansan/co/resolveUrl;->addDownloadListener()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v3, v2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsansan/co/execute;

    if-nez v10, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 57
    const/16 v11, 0x21

    goto :goto_1

    :cond_2
    const/16 v11, 0x56

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v11, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v11, v11, 0x15

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_3

    .line 35
    :cond_3
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    move-result v11

    if-le v11, v9, :cond_4

    .line 57
    const/4 v11, 0x4

    goto :goto_2

    :cond_4
    const/4 v11, 0x7

    :goto_2
    const/4 v12, 0x1

    packed-switch v11, :pswitch_data_1

    sget v3, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 36
    :cond_5
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    move-result v9

    .line 37
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v10}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_7

    .line 57
    sget v7, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v7, v7, 0x3

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 38
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 57
    sget v8, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v8, v8, 0x25

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_8

    .line 39
    :cond_8
    :goto_3
    invoke-virtual {v10}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_9

    .line 57
    const/16 v8, 0x55

    goto :goto_4

    :cond_9
    const/16 v8, 0x30

    :goto_4
    packed-switch v8, :pswitch_data_2

    .line 39
    const/4 v8, 0x0

    goto :goto_5

    :pswitch_1
    invoke-virtual {v10}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 41
    :goto_5
    :pswitch_2
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    move-result v11

    if-ge v11, v1, :cond_0

    .line 42
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    move-result v1

    .line 43
    invoke-virtual {v10}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v10}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 45
    :goto_6
    invoke-virtual {v10}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_b

    .line 57
    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    packed-switch v12, :pswitch_data_3

    .line 45
    invoke-virtual {v10}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_8

    :pswitch_3
    nop

    .line 57
    const/4 v6, 0x0

    goto/16 :goto_0

    :goto_8
    sget v10, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v10, v10, 0x5f

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 45
    :cond_c
    nop

    .line 50
    invoke-static {v4}, Lccsansan/dd/unifiedDownload;->removeDownloadListener(Z)Z

    move-result p0

    const-string v1, "best_height"

    const-string v4, "best_width"

    const-string v9, "best_url"

    if-eqz p0, :cond_d

    .line 51
    invoke-virtual {v0, v9, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v4, v7}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0, v1, v8}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    :cond_d
    nop

    .line 55
    invoke-virtual {v0, v9, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v4, v5}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v1, v6}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/dd/unifiedDownload;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dd/unifiedDownload;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/dd/unifiedDownload;->unifiedDownload:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dd/unifiedDownload;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 10

    .line 27
    nop

    .line 10
    sget v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadedRecordByUrl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 10
    sget p0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    .line 27
    goto/16 :goto_6

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :cond_3
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    if-eqz v6, :cond_3

    .line 27
    sget v8, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v8, v8, 0x6d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    .line 10
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    :try_start_0
    array-length v9, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_3

    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :cond_4
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_1
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AUTO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsansan/bw/valueOf;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 15
    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 13
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsansan/dd/unifiedDownload;->addDownloadListener(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v5, :cond_7

    .line 15
    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 10
    sget v4, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v4, v4, 0x27

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 14
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsansan/dd/unifiedDownload;->addDownloadListener(Ljava/lang/String;)I

    move-result v5

    .line 15
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v4

    :try_start_1
    array-length v6, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 10
    :catchall_1
    move-exception p0

    throw p0

    .line 14
    :cond_8
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsansan/dd/unifiedDownload;->addDownloadListener(Ljava/lang/String;)I

    move-result v5

    .line 15
    invoke-virtual {v6}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 19
    :cond_9
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AD.Video.Dash"

    const-string v6, "  adid = "

    if-nez v0, :cond_a

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoPlayUrl :: videoSourceList has cache, resolution = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  url = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 22
    :cond_a
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 15
    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    nop

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    .line 10
    :pswitch_1
    sget v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 22
    :cond_c
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/valueOf;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoPlayUrl :: video play url has cache. url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object p0

    .line 27
    return-object p0

    .line 25
    :cond_d
    :goto_5
    invoke-static {p0}, Lccsansan/dd/unifiedDownload;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoPlayUrl :: video has no cache, load dash. url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsansan/dd/unifiedDownload;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lccsansan/dd/unifiedDownload;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object p0

    .line 10
    sget v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    .line 27
    return-object p0

    :cond_e
    return-object v2

    :cond_f
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Z)Ljava/lang/String;
    .locals 7

    .line 20
    sget v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-eqz p0, :cond_1

    .line 14
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_a

    .line 9
    :cond_2
    invoke-static {p1}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Z)Z

    move-result p1

    const-string v0, "AD.Video.Dash"

    const-string v2, "   url = "

    const-string v3, "  adid = "

    const-string v4, "\u5f9b\ucb08\u8f38\u05a4\u88e4\u9127\u70a1\u30cf\ucce6\ub062\u9403\udd13\udd48\ud337\u7c26\u2116\u6c81\u9e11\u8c75\u63ce\u64c4\ub9d8\ue9d8\u5579\uedb2\uf262\uad9c\u2682\u5371\uc4ec\u7adb\uc09d\u4fd7\u2e39\u8bae\u9af8\u52d6\u2f18\u2689\ufafc\u5eb8\u5bd6\u3abf\u9d71\u4b27\uae06\u14ef\ua02d\u93ae\u7d94\ub54f\ufcff\u516f\u4e90\u1cc0\u4ba3\uc0cf\ue082\u0cdc\u8b6b\u956f\u05f3"

    if-nez p1, :cond_6

    .line 20
    sget v5, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v5, v5, 0x19

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 14
    const/16 v5, 0x1b

    goto :goto_1

    :cond_3
    const/16 v5, 0x43

    :goto_1
    packed-switch v5, :pswitch_data_1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v5

    if-eqz v5, :cond_5

    :goto_2
    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v5

    :try_start_0
    array-length v6, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    goto :goto_2

    .line 20
    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    sget v5, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x57

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 14
    const/16 v5, 0x17

    goto :goto_4

    :cond_4
    const/16 v5, 0x31

    :goto_4
    packed-switch v5, :pswitch_data_2

    .line 20
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 14
    :pswitch_2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 20
    :goto_5
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v5

    :goto_6
    goto :goto_7

    :catchall_1
    move-exception p0

    throw p0

    .line 15
    :cond_5
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/lit8 v6, v6, 0x3d

    invoke-static {v4, v6}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getPackageNameByRecord;->getDownloadStatusByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 14
    const/16 v5, 0x5d

    goto :goto_8

    :cond_7
    const/16 v5, 0x9

    :goto_8
    packed-switch v5, :pswitch_data_3

    .line 19
    goto :goto_9

    :pswitch_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadStatusByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x3d

    invoke-static {v4, v6}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5d
        :pswitch_3
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Z)Z
    .locals 2

    .line 21
    sget v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/dd/unifiedDownload;->removeDownloadListener(Z)Z

    move-result p0

    sget v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)I
    .locals 4

    .line 24
    sget v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "AUTO"

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 24
    :catchall_0
    move-exception p0

    throw p0

    .line 22
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x60

    goto :goto_1

    :cond_2
    const/16 v0, 0x45

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 24
    :goto_2
    :pswitch_1
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 22
    sget v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    .line 24
    :cond_3
    return p0

    .line 22
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 3

    .line 6
    nop

    .line 1
    sget v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_2
    if-eqz p0, :cond_6

    .line 6
    :pswitch_1
    sget v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_3
    goto :goto_5

    :pswitch_2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    const/16 v0, 0x53

    goto :goto_4

    :cond_4
    const/16 v0, 0x37

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    .line 6
    :catchall_1
    move-exception p0

    throw p0

    .line 1
    :goto_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    invoke-static {p0, v2}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Z)Ljava/lang/String;

    move-result-object p0

    .line 1
    sget v0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 6
    return-object p0

    :cond_6
    :goto_6
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Z)Z
    .locals 2

    sget p0, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dd/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
