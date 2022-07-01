.class public Lccsansan/p/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field public static final addDownloadListener:I

.field private static getDownloadingList:J

.field public static final removeDownloadListener:[B

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/getDownloadStatusByUrl;->removeDownloadListener:[B

    const/16 v0, 0x11

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener:I

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        -0x20t
        -0x15t
        0x58t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/p/getDownloadStatusByUrl;->getDownloadingList:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/pm/PackageInfo;Lccsansan/m/getDownloadedList;)Lccsansan/cy/getDownloadingRecordByUrl;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 49
    nop

    .line 0
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 49
    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "pkg_type"

    const-string v8, ""

    packed-switch v6, :pswitch_data_0

    .line 2
    invoke-virtual {v1, v7, v4}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v5, v5}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    rsub-int v3, v3, 0x4e37

    const-string v6, "\u13d4\u5de8\u8fa9\uf97b\u2b00\u94cc\uc69b\u3055\u6257\uac2b\u1def\u4f9d\ub941"

    invoke-static {v6, v3}, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v3, v5}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v3

    .line 4
    iget-wide v9, v1, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 5
    iget-object v6, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_1

    .line 49
    :pswitch_0
    move-wide v9, v2

    move-object v6, v8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-wide v11, v0, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v13

    .line 49
    sget v14, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v14, v14, 0x79

    rem-int/lit16 v15, v14, 0x80

    sput v15, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_1

    .line 9
    :cond_1
    int-to-byte v14, v5

    int-to-byte v15, v14

    int-to-byte v4, v15

    :try_start_0
    invoke-static {v14, v15, v4}, Lccsansan/p/getDownloadStatusByUrl;->getDownloadingList(IBI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget v14, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener:I

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    int-to-byte v15, v14

    int-to-byte v5, v15

    invoke-static {v14, v15, v5}, Lccsansan/p/getDownloadStatusByUrl;->getDownloadingList(IBI)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v5, v13, :cond_2

    .line 49
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    packed-switch v5, :pswitch_data_1

    const/4 v5, 0x0

    goto :goto_4

    .line 12
    :pswitch_1
    iget-object v5, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Lccsanandroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 49
    const/16 v5, 0x27

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    packed-switch v5, :pswitch_data_2

    .line 12
    const/4 v5, 0x0

    goto :goto_4

    :pswitch_2
    const/4 v5, 0x1

    .line 15
    :goto_4
    new-instance v13, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;-><init>()V

    iget-object v15, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v14, v0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v7

    iget v7, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    .line 16
    invoke-virtual {v13, v15, v14, v7}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v7

    .line 17
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 49
    const/16 v13, 0x11

    goto :goto_5

    :cond_4
    const/16 v13, 0x3f

    :goto_5
    packed-switch v13, :pswitch_data_3

    .line 17
    if-eqz v1, :cond_5

    iget-object v4, v1, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object v4, v8

    :goto_6
    :pswitch_3
    if-eqz v1, :cond_6

    .line 49
    const/4 v13, 0x0

    goto :goto_7

    :cond_6
    const/4 v13, 0x1

    :goto_7
    packed-switch v13, :pswitch_data_4

    sget v13, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v13, v13, 0x53

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_7

    goto :goto_8

    .line 17
    :pswitch_4
    move-object v13, v8

    goto :goto_9

    :cond_7
    :goto_8
    iget-object v13, v1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 49
    nop

    .line 17
    :goto_9
    invoke-virtual {v7, v4, v13, v9, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 18
    invoke-virtual {v4, v2}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 19
    const/16 v7, 0x12

    invoke-virtual {v4, v7}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    sget-object v9, Lccsansan/p/deleteDownList;->AZ_FINISHED:Lccsansan/p/deleteDownList;

    .line 20
    invoke-virtual {v9}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 21
    const/4 v9, -0x2

    invoke-virtual {v4, v9}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    if-nez v1, :cond_8

    const/4 v14, 0x0

    goto :goto_a

    :cond_8
    iget-object v14, v1, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    :goto_a
    invoke-virtual {v4, v14}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 22
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 23
    invoke-virtual {v4, v3}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v5}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v6}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object v3

    const-string v4, "-1"

    const-string v5, "s2s_track_status"

    if-nez v1, :cond_9

    .line 29
    new-instance v1, Lccsansan/m/getDownloadedList;

    invoke-direct {v1}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 30
    iget-object v6, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Lccsanandroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v6, v1, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 31
    iget-object v6, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 32
    iget v6, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v1, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 33
    iget-object v6, v0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v1, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 35
    invoke-virtual {v1, v5, v4}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v4, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v5, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->NO_ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v4

    iput v4, v1, Lccsansan/m/getDownloadedList;->execute:I

    .line 38
    iput v7, v1, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v16

    invoke-virtual {v1, v4, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no cpi record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CPI.CPIHelper"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    goto :goto_c

    .line 43
    :cond_9
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 49
    sget v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 44
    :cond_a
    sget-object v2, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 46
    :cond_b
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    iget-object v2, v1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    nop

    .line 46
    :goto_b
    nop

    .line 48
    invoke-virtual {v1, v5, v4}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :goto_c
    return-object v3

    .line 9
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_c

    throw v1

    :cond_c
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3f
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils()V
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->getDownloadedRecordByUrl()V

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized IncentiveDownloadUtils(Z)V
    .locals 3

    const-class v0, Lccsansan/p/getDownloadStatusByUrl;

    monitor-enter v0

    .line 5
    :try_start_0
    sget v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-static {v1, p0}, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload(ZZ)V

    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :cond_1
    monitor-exit v0

    return-void

    .line 5
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static addDownloadListener(Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    .line 12
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const/16 v0, 0x48

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 11
    :pswitch_0
    iget-object v0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :goto_1
    sget p1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    :cond_3
    :goto_3
    :pswitch_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsanandroid/content/pm/PackageInfo;Lccsansan/m/getDownloadedList;)Lccsansan/cy/getDownloadingRecordByUrl;
    .locals 2

    .line 4
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    invoke-static {p0, p1}, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/pm/PackageInfo;Lccsansan/m/getDownloadedList;)Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener()V
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->getDownloadStatusByUrl()V

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/m/getDownloadedList;)Z
    .locals 5

    .line 8
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 8
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :cond_2
    iget v2, p0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v2, v3, :cond_4

    :goto_2
    const/4 v2, -0x3

    const-string v4, "s2s_track_status"

    invoke-virtual {p0, v4, v2}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_3

    goto :goto_3

    :cond_3
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    :pswitch_1
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_5

    :cond_5
    :goto_4
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_6

    const/16 p0, 0x17

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    throw p0

    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/m/getDownloadedList;Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 54
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto :goto_6

    .line 0
    :cond_1
    if-eqz p0, :cond_2

    .line 54
    const/16 v0, 0x49

    goto :goto_1

    :cond_2
    const/16 v0, 0x46

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 50
    :cond_3
    iget-object v1, p0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    const/16 v1, 0x4a

    goto :goto_3

    :cond_4
    const/16 v1, 0x26

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 50
    const-string v1, "hasObb"

    invoke-virtual {p0, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 54
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    nop

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_5

    .line 50
    :pswitch_0
    goto :goto_0

    .line 54
    :goto_5
    :pswitch_1
    move v2, v0

    :goto_6
    :pswitch_2
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static deleteDownItem()V
    .locals 6

    .line 23
    nop

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/m/unifiedDownload;->removeDownloadListener()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    const/16 v1, 0x61

    goto :goto_0

    :cond_0
    const/16 v1, 0x4e

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto/16 :goto_9

    .line 2
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 23
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 6
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :cond_2
    :goto_2
    nop

    .line 6
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_4

    .line 23
    const/16 v1, 0xd

    goto :goto_4

    :cond_4
    const/16 v1, 0x32

    :goto_4
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 6
    :cond_5
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/m/getDownloadedList;

    .line 7
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_3

    .line 23
    sget v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 7
    :cond_6
    :try_start_3
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 11
    :cond_7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 12
    sget-object v2, Lccsansan/m/getDownloadedList$unifiedDownload;->XZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v2}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v2

    iput v2, v1, Lccsansan/m/getDownloadedList;->execute:I

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_3

    .line 17
    :cond_8
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v2, :cond_9

    .line 23
    const/16 v2, 0x56

    goto :goto_5

    :cond_9
    const/16 v2, 0x59

    :goto_5
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_2

    :pswitch_1
    goto :goto_7

    .line 17
    :pswitch_2
    const-string v2, "true"

    :try_start_4
    const-string v5, "hasObb"

    invoke-virtual {v1, v5}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x1

    :goto_6
    packed-switch v2, :pswitch_data_3

    .line 17
    goto :goto_8

    :goto_7
    nop

    .line 23
    const/4 v3, 0x0

    .line 19
    :goto_8
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_b

    .line 23
    sget v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_b
    :try_start_5
    invoke-static {v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Lccsansan/m/getDownloadedList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :goto_9
    return-void

    :catch_0
    move-exception v0

    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadStatusByUrl()V
    .locals 10

    .line 24
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 24
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    return-void

    .line 6
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/m/getDownloadedList;

    if-eqz v2, :cond_1

    .line 7
    iget-object v5, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24
    :goto_2
    :pswitch_1
    goto :goto_0

    .line 11
    :cond_3
    iget v5, v2, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v6, Lccsansan/m/getDownloadedList$unifiedDownload;->ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v6}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 24
    const/4 v5, 0x5

    goto :goto_3

    :cond_4
    const/16 v5, 0x29

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 14
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int v3, v3, 0x29ab

    const-string v5, "\u13d3\u3a77\u408f\u6ed2\ub577\uc3b8\ue9d6\u3072\u5e9f\u64dd\ub372\ud986\ue7d5\u0e7b"

    invoke-static {v5, v3}, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 21
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_6

    .line 24
    :pswitch_2
    sget v5, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x1b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/2addr v5, v1

    if-nez v5, :cond_5

    .line 12
    :cond_5
    invoke-static {}, Lccsansan/cy/unifiedDownload;->resolveUrl()I

    move-result v5

    if-ne v5, v1, :cond_6

    .line 24
    const/16 v5, 0x37

    goto :goto_4

    :cond_6
    const/16 v5, 0x46

    :goto_4
    packed-switch v5, :pswitch_data_2

    sget v5, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v5, v5, 0x67

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/2addr v5, v1

    if-eqz v5, :cond_7

    .line 13
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    sub-long/2addr v5, v7

    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeReserveApp()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_8

    .line 24
    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    nop

    :goto_5
    packed-switch v3, :pswitch_data_3

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v2, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 24
    sget v2, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_9

    const/16 v2, 0x31

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x32

    goto/16 :goto_2

    .line 21
    :goto_6
    if-eqz v3, :cond_1

    .line 22
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v5, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v3, v5}, Lccsansan/bw/getDownloadedCount;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lccsansan/m/getDownloadedList;->shouldTryHandlingAction:Z

    .line 23
    iput-boolean v4, v2, Lccsansan/m/getDownloadedList;->ActionTypeDetailPage:Z

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    :goto_7
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/2addr v0, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadedRecordByUrl()V
    .locals 4

    .line 6
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/cy/unifiedDownload;->getPackageNameByRecord()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getPackageNameByRecord()I

    move-result v0

    const/16 v1, 0x2c

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 6
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    return-void

    .line 6
    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsansan/p/getDownloadStatusByUrl$getDownloadingList;

    const-string v3, "REPORT.NO.ACTIVATE.CPI"

    invoke-direct {v2, v3, v0}, Lccsansan/p/getDownloadStatusByUrl$getDownloadingList;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1
    const/16 v0, 0x29

    goto :goto_3

    :cond_2
    const/16 v0, 0x5a

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 6
    return-void

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(IBI)Ljava/lang/String;
    .locals 6

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lccsansan/p/getDownloadStatusByUrl;->removeDownloadListener:[B

    const/16 v4, 0x53

    rem-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x25

    const/16 p1, 0x30

    shr-int p0, p1, p0

    const/16 p1, 0x6c

    shl-int p0, p1, p0

    mul-int/lit8 p2, p2, 0x4a

    add-int/lit8 p2, p2, 0x11

    new-array p1, p0, [B

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    move v1, v4

    const/4 v5, 0x1

    move-object v4, v0

    move v0, p2

    move-object p2, p1

    move p1, p0

    goto :goto_6

    :pswitch_0
    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    sget-object v0, Lccsansan/p/getDownloadStatusByUrl;->removeDownloadListener:[B

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 v4, p1, 0x61

    mul-int/lit8 p0, p0, 0x6

    const/16 p1, 0x17

    rsub-int/lit8 p0, p0, 0x17

    mul-int/lit8 p2, p2, 0x16

    add-int/lit8 p2, p2, 0x4

    new-array v5, p0, [B

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1e

    :goto_1
    packed-switch p1, :pswitch_data_1

    move-object p1, v5

    const/4 v4, 0x0

    goto :goto_2

    :pswitch_1
    move p1, p0

    move v1, v4

    move-object v4, v0

    move v0, p2

    move-object p2, v5

    const/4 v5, 0x0

    goto :goto_6

    :goto_2
    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    move v1, p2

    move v5, v4

    move-object p2, p1

    move-object v4, v0

    move p1, p0

    move v0, v1

    :goto_5
    neg-int p0, p0

    add-int/2addr v0, v3

    add-int/2addr v1, p0

    add-int/lit8 p0, v1, -0x8

    move v1, p0

    :goto_6
    int-to-byte p0, v1

    aput-byte p0, p2, v5

    add-int/2addr v5, v3

    if-ne v5, p1, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_4
    aget-byte p0, v4, v0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized getDownloadingList()V
    .locals 4

    const-class v0, Lccsansan/p/getDownloadStatusByUrl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils(Z)V

    sget v2, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    monitor-exit v0

    return-void

    :pswitch_0
    const/16 v2, 0x11

    :try_start_1
    div-int/2addr v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/m/getDownloadedList;Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 26
    nop

    .line 2
    invoke-static {p0, p1}, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener(Lccsansan/m/getDownloadedList;Lccsanandroid/content/pm/PackageInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 26
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not activate pkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CPI.CPIHelper"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener(Lccsansan/m/getDownloadedList;)Z

    move-result v0

    const-string v3, "non-activated pkg:"

    if-eqz v0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been reported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-eqz p0, :cond_4

    .line 26
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 14
    :cond_2
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    :goto_0
    invoke-static {p0}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 16
    :cond_4
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result p0

    :goto_1
    const/4 v0, -0x2

    if-ne p0, v0, :cond_5

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is reporting."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    nop

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    iget-object p1, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/16 p1, 0x51

    if-eqz p0, :cond_6

    .line 26
    const/16 v0, 0x51

    goto :goto_2

    :cond_6
    const/16 v0, 0x32

    :goto_2
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 25
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    const/16 v0, 0x12

    goto :goto_3

    :cond_8
    const/4 v0, 0x5

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 25
    nop

    .line 26
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/m/getDownloadingCount;

    iget p0, p0, Lccsansan/m/getDownloadingCount;->getDownloadingList:I

    if-ne p0, v1, :cond_b

    goto :goto_5

    :cond_9
    :goto_4
    :pswitch_0
    const/4 p0, 0x0

    goto :goto_8

    :goto_5
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_6

    :cond_a
    const/4 p0, 0x0

    :goto_6
    packed-switch p0, :pswitch_data_2

    const/4 p0, 0x0

    goto :goto_7

    :pswitch_1
    const/4 p0, 0x1

    :goto_7
    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_b
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    goto :goto_4

    :cond_c
    :goto_8
    if-eqz p0, :cond_d

    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/2addr p0, p1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_d
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;I)Ljava/util/List;
    .locals 2

    .line 2
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload(Lccsanandroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    sget p1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method static synthetic removeDownloadListener()V
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->deleteDownItem()V

    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/m/getDownloadedList;Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 2

    .line 3
    sget v0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1}, Lccsansan/p/getDownloadStatusByUrl;->getDownloadingList(Lccsansan/m/getDownloadedList;Lccsanandroid/content/pm/PackageInfo;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized unifiedDownload(Lccsanandroid/content/Context;I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Lccsansan/p/getDownloadStatusByUrl;

    monitor-enter v1

    .line 120
    nop

    .line 55
    :try_start_0
    invoke-static {}, Lccsansan/bw/getErrorCode;->trackReportClick()J

    move-result-wide v2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {}, Lccsansan/cy/unifiedDownload;->IncentiveSDK$1()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v4, v2

    if-gtz v8, :cond_0

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 61
    invoke-static {}, Lccsansan/bw/getErrorCode;->resolveUrl()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 57
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 61
    :goto_1
    :try_start_1
    const-string v3, ""

    .line 63
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v5, 0x2

    if-eqz v4, :cond_a

    .line 66
    sget v2, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v4, v2, 0x63

    rem-int/lit16 v10, v4, 0x80

    sput v10, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 63
    :cond_1
    move/from16 v4, p1

    if-ne v4, v7, :cond_3

    .line 102
    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v5

    if-eqz v2, :cond_2

    .line 66
    const/16 v2, 0x13

    goto :goto_2

    :cond_2
    const/16 v2, 0x30

    :goto_2
    packed-switch v2, :pswitch_data_1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_4

    :goto_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x4b

    :try_start_2
    div-int/2addr v2, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :goto_4
    goto :goto_5

    .line 102
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2

    .line 63
    :cond_3
    move-wide v4, v8

    .line 66
    :goto_5
    const-string v2, "cpi_report"

    .line 68
    invoke-static {v0, v6, v2, v7}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 66
    const/4 v10, 0x1

    goto :goto_7

    :cond_4
    const/4 v10, 0x0

    :goto_7
    packed-switch v10, :pswitch_data_2

    .line 88
    invoke-static {v3}, Lccsansan/bw/getErrorCode;->resume(Ljava/lang/String;)V

    goto :goto_b

    .line 70
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsanandroid/content/pm/PackageInfo;

    .line 71
    invoke-static {v10}, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload(Lccsanandroid/content/pm/PackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 120
    :goto_8
    goto :goto_6

    .line 74
    :cond_5
    invoke-static {v3, v10}, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 76
    iget-wide v11, v10, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v13, v11, v8

    if-eqz v13, :cond_6

    .line 66
    const/16 v14, 0x2e

    goto :goto_9

    :cond_6
    const/16 v14, 0x58

    :goto_9
    packed-switch v14, :pswitch_data_3

    goto :goto_a

    .line 77
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDetailPage()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-ltz v18, :cond_7

    goto :goto_6

    :cond_7
    :goto_a
    if-eqz v13, :cond_9

    .line 66
    sget v13, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v13, v13, 0x27

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_8

    .line 77
    :cond_8
    cmp-long v13, v11, v4

    if-gtz v13, :cond_9

    goto :goto_8

    .line 85
    :cond_9
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 89
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lccsansan/bw/getErrorCode;->deleteDownItem(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return-object v2

    .line 92
    :cond_a
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "cpi_report"

    .line 93
    invoke-static {v0, v6, v2, v7}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 94
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_c
    :pswitch_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 66
    const/4 v11, 0x1

    goto :goto_d

    :cond_c
    const/4 v11, 0x0

    :goto_d
    packed-switch v11, :pswitch_data_4

    .line 119
    invoke-static {v3}, Lccsansan/bw/getErrorCode;->resume(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 95
    :pswitch_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsanandroid/content/pm/PackageInfo;

    .line 96
    invoke-static {v11}, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload(Lccsanandroid/content/pm/PackageInfo;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 120
    goto :goto_c

    .line 99
    :cond_d
    invoke-static {v3, v11}, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-wide v12, v11, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v14, v12, v8

    if-eqz v14, :cond_e

    .line 66
    const/4 v14, 0x0

    goto :goto_e

    :cond_e
    const/4 v14, 0x1

    :goto_e
    packed-switch v14, :pswitch_data_5

    goto :goto_10

    .line 120
    :pswitch_6
    sget v14, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v14, v14, 0x79

    rem-int/lit16 v15, v14, 0x80

    sput v15, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_f

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    xor-long/2addr v12, v14

    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDetailPage()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_10

    goto :goto_f

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDetailPage()J

    move-result-wide v12

    cmp-long v16, v14, v12

    if-ltz v16, :cond_10

    :goto_f
    goto :goto_c

    .line 106
    :cond_10
    :goto_10
    iget-object v12, v11, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 66
    const/4 v12, 0x1

    goto :goto_11

    :cond_11
    const/4 v12, 0x0

    :goto_11
    packed-switch v12, :pswitch_data_6

    .line 107
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 110
    :pswitch_7
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v12

    iget-object v13, v11, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 112
    iget-object v13, v11, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v13

    .line 113
    iget v14, v12, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v14, v5, :cond_b

    const-string v14, "s2s_track_status"

    const/4 v15, -0x3

    invoke-virtual {v12, v14, v15}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v12

    if-eq v12, v7, :cond_b

    .line 66
    sget v12, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v12, v12, 0x7d

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_12

    .line 113
    :cond_12
    const/4 v12, -0x2

    if-eq v13, v12, :cond_13

    .line 66
    const/16 v12, 0x54

    goto :goto_12

    :cond_13
    const/16 v12, 0x1c

    :goto_12
    packed-switch v12, :pswitch_data_7

    .line 114
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 120
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->deleteDownItem(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return-object v10

    .line 54
    :catchall_1
    move-exception v0

    monitor-exit v1

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2e
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1c
        :pswitch_4
    .end packed-switch
.end method

.method static unifiedDownload()V
    .locals 2

    const-wide v0, 0x588f50765eb213b0L    # 3.94830875582599E118

    sput-wide v0, Lccsansan/p/getDownloadStatusByUrl;->getDownloadingList:J

    return-void
.end method

.method public static declared-synchronized unifiedDownload(ZZ)V
    .locals 3

    const-class v0, Lccsansan/p/getDownloadStatusByUrl;

    monitor-enter v0

    .line 7
    nop

    .line 0
    :try_start_0
    const-string v1, "CPI.CPIHelper"

    const-string v2, "doCpiCloudWorks"

    .line 6
    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;

    invoke-direct {v2, p0, p1}, Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :cond_0
    monitor-exit v0

    return-void

    .line 5
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static unifiedDownload(Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 13
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    :goto_1
    sget p0, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x63

    goto :goto_2

    :cond_1
    const/16 p0, 0x13

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v0

    :goto_3
    const/16 p0, 0x31

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
    .end packed-switch
.end method
