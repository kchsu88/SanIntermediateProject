.class public Lccsansan/dr/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/StringBuilder;

.field private static addDownloadListener:J

.field private static deleteDownItem:Lccsansan/do/removeDownloadListener;

.field private static getDownloadStatusByUrl:Z

.field private static getDownloadedCount:[C

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:I

.field public static final getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static pause:J

.field private static final removeDownloadListener:Lccsansan/bu/getDownloadingList;

.field private static resume:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    const/4 v1, 0x1

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    invoke-static {}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils()V

    invoke-static {}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener()V

    .line 1
    new-instance v2, Lccsansan/bu/getDownloadingList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v4, 0xdbba0

    invoke-direct {v2, v3, v1, v4, v5}, Lccsansan/bu/getDownloadingList;-><init>(Ljava/lang/Object;ZJ)V

    sput-object v2, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    const-wide/16 v1, 0x0

    .line 2
    sput-wide v1, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener:J

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/StringBuilder;

    .line 4
    sput-boolean v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadStatusByUrl:Z

    .line 6
    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    .line 7
    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    .line 8
    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedList:I

    sget v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x4c

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v1, 0x23

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(SSB)Ljava/lang/String;
    .locals 7

    sget-object v0, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    rsub-int/lit8 p1, p1, 0x21

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    add-int/lit8 p0, p0, 0x4

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    if-nez v0, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    sget v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v2, v2, 0x2

    move v2, p2

    const/4 v4, 0x0

    move p2, p1

    goto :goto_2

    :goto_1
    add-int/lit8 p0, p0, 0x1

    int-to-byte v4, p2

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    if-ne v2, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v2, v0, p0

    move v6, p2

    move p2, p1

    move p1, v6

    :goto_2
    neg-int v2, v2

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x2

    sget v2, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v2, v2, 0x2

    move v2, v4

    move v6, p2

    move p2, p1

    move p1, v6

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(ZLjava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 205
    nop

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_a

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p0, :cond_6

    .line 182
    invoke-static {}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener()Ljava/util/Map;

    move-result-object p0

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 184
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    sget v5, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v5, v5, 0x71

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 184
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/content/pm/PackageInfo;

    .line 185
    iget-object v6, v5, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    sget v6, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v6, v6, 0x4d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 186
    :cond_2
    iget-object v5, v5, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    nop

    .line 205
    sget v4, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v4, v4, 0x39

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v4, v4, 0x2

    .line 184
    const/4 v4, 0x1

    goto :goto_0

    .line 186
    :cond_4
    if-nez v4, :cond_5

    .line 205
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    nop

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    .line 186
    return-object v0

    .line 193
    :cond_6
    :goto_2
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 194
    sget-object v1, Lccsansan/dr/getDownloadingRecordByUrl;->deleteDownItem:Lccsansan/do/removeDownloadListener;

    if-eqz v1, :cond_7

    .line 195
    new-instance v2, Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;

    invoke-direct {v2, p0, v0}, Lccsansan/dr/getDownloadingRecordByUrl$getDownloadingList;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/Map;)V

    invoke-interface {v1, v2, p1}, Lccsansan/do/removeDownloadListener;->addDownloadListener(Lccsansan/do/getDownloadingList;Ljava/util/List;)V

    .line 204
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/16 p1, 0x15

    cmp-long v5, v1, v3

    if-lez v5, :cond_8

    .line 205
    const/16 v1, 0xd

    goto :goto_3

    :cond_8
    const/16 v1, 0x15

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 204
    :pswitch_1
    const-wide/16 v1, 0x5dc

    .line 205
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/2addr p0, p1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    const/16 p0, 0x38

    goto :goto_4

    :cond_9
    const/16 p0, 0x37

    goto :goto_4

    :catch_0
    move-exception p0

    :goto_4
    return-object v0

    :cond_a
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch
.end method

.method static IncentiveDownloadUtils()V
    .locals 2

    const/16 v0, 0x81

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedCount:[C

    const-wide v0, 0x425b79ab5ef5dcfdL    # 4.7202156437545294E11

    sput-wide v0, Lccsansan/dr/getDownloadingRecordByUrl;->pause:J

    return-void

    nop

    :array_0
    .array-data 2
        0x50b1s
        -0x73b7s
        -0x16b2s
        -0x3989s
        0x234fs
        0x46s
        0x7d6bs
        0x5a48s
        -0x48a3s
        -0x6b8cs
        -0xeafs
        0x2e6cs
        0xb69s
        0x687as
        0x4575s
        -0x5dads
        -0x6095s
        -0x386s
        -0x26c6s
        0x367fs
        0x1375s
        0x7075s
        -0x52b2s
        -0x75f7s
        -0x18f3s
        -0x3c00s
        0x210cs
        0x1e5fs
        0x7b09s
        0x5817s
        -0x4ae1s
        -0x6de3s
        -0x30fds
        0x2c39s
        0x92bs
        0x662bs
        0x4328s
        -0x5fdcs
        -0x62c6s
        -0x585s
        -0x28d8s
        0x343es
        0x1135s
        0x4e8fs
        -0x546fs
        -0x7777s
        0x20s
        -0x2364s
        -0x4662s
        -0x696ds
        0x73b2s
        0x509es
        0x2d82s
        0xa8fs
        -0x1873s
        -0x3b69s
        -0x5e4es
        0x7eb4s
        0x5bbbs
        0x38f9s
        0x15bes
        -0xd4es
        -0x304cs
        -0x5313s
        -0x7658s
        0x66a2s
        0x43a1s
        0x20afs
        -0x262s
        -0x2532s
        -0x482as
        -0x6b24s
        0x71dcs
        0x4edcs
        0x2bd8s
        0x8c8s
        -0x1a36s
        -0x3d31s
        -0x603bs
        0x7cf9s
        0x59bas
        0x36e7s
        0x13ffs
        -0xf0as
        -0x3252s
        -0x554as
        -0x7858s
        -0x4536s
        0x6632s
        0x335s
        0x2c0es
        -0x36c6s
        -0x15c7s
        -0x68e0s
        -0x4fd7s
        0x5d35s
        0x7e2bs
        0x1b1as
        -0x3bebs
        -0x1effs
        -0x7de9s
        -0x50e7s
        0x4828s
        0x7510s
        0x1601s
        0x3341s
        -0x23f2s
        -0x6f6s
        -0x65f1s
        0x477bs
        0x6030s
        0xd66s
        0x2e70s
        -0x3490s
        -0xb96s
        -0x6e8cs
        -0x4d8as
        0x5f6cs
        0x7864s
        0x2567s
        -0x39ads
        -0x1cabs
        -0x73e4s
        -0x56b1s
        0x4a51s
        0x7742s
        0x1000s
        0x3d1es
        -0x21f2s
    .end array-data
.end method

.method private static IncentiveDownloadUtils(I)V
    .locals 4

    .line 99
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    sget v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    sget v3, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedList:I

    invoke-static {v0, p0, v1, v2, v3}, Lccsansan/bn/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;IIII)V

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 37
    move-object/from16 v1, p0

    const-string v2, ""

    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    const/16 v3, 0x9

    add-int/2addr v0, v3

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    const/4 v4, 0x2

    rem-int/2addr v0, v4

    const/4 v5, 0x0

    const-string v6, "PackageUtils"

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 37
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 4
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :cond_2
    const/16 v0, 0x1c

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 25
    :goto_2
    :pswitch_1
    nop

    .line 33
    const-string v0, "addPkgUseAccessPkg has no access permission"

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 36
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 37
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto/16 :goto_8

    .line 5
    :goto_3
    const-string v0, "addPkgUseAccessPkg has access permission"

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v0, v7, :cond_5

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v7, "usagestats"

    invoke-virtual {v0, v7}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lccsanandroid/app/usage/UsageStatsManager;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 9
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadingCount()J

    move-result-wide v8

    sub-long v13, v11, v8

    const/4 v8, 0x4

    .line 10
    move-wide v9, v13

    invoke-virtual/range {v7 .. v12}, Lccsanandroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v8, v0, 0x80

    sput v8, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/2addr v0, v4

    .line 11
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/usage/UsageStats;

    .line 13
    :try_start_1
    invoke-virtual {v0}, Lccsanandroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v11, 0x1f

    int-to-byte v11, v11

    :try_start_3
    sget-object v12, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    aget-byte v13, v12, v3

    neg-int v13, v13

    int-to-byte v13, v13

    const/4 v14, 0x4

    aget-byte v15, v12, v14

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v13, 0x55

    int-to-byte v13, v13

    const/16 v15, 0x23

    aget-byte v15, v12, v15

    neg-int v15, v15

    int-to-byte v15, v15

    const/16 v16, 0x27

    aget-byte v3, v12, v16

    int-to-byte v3, v3

    invoke-static {v13, v15, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v9

    aput-object v8, v3, v10

    const/16 v11, 0x2a

    aget-byte v11, v12, v11

    add-int/2addr v11, v9

    int-to-byte v11, v11

    aget-byte v13, v12, v14

    int-to-byte v13, v13

    int-to-byte v14, v13

    invoke-static {v11, v13, v14}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v13, 0x1b

    aget-byte v13, v12, v13

    int-to-byte v13, v13

    const/4 v14, 0x7

    aget-byte v14, v12, v14

    neg-int v14, v14

    int-to-byte v14, v14

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v10

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v9

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_5
    throw v3

    :cond_3
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3
    :try_end_5
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v3, :cond_3

    goto :goto_5

    :catch_0
    move-exception v0

    .line 18
    :try_start_6
    new-instance v0, Lccsanandroid/content/pm/PackageInfo;

    invoke-direct {v0}, Lccsanandroid/content/pm/PackageInfo;-><init>()V

    .line 19
    iput-object v8, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v10}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v11

    invoke-static {v2, v2, v10, v10}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v10

    rsub-int v10, v10, 0x50d0

    int-to-char v10, v10

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int/lit8 v12, v12, 0x2e

    invoke-static {v11, v10, v12}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_6
    invoke-static {v1, v8, v0}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/util/List;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addPkgUseAccessPkg needAddPkg ="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    add-int/2addr v0, v9

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    .line 22
    :cond_4
    const/16 v3, 0x9

    goto/16 :goto_4

    .line 25
    :catch_1
    move-exception v0

    :goto_7
    const/16 v3, 0x9

    goto/16 :goto_4

    .line 37
    :cond_5
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 219
    nop

    .line 217
    :try_start_0
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ad_app_cache_info_expiry_date"

    .line 218
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "ad_app_cache_info"

    .line 219
    :try_start_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedCount:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/dr/getDownloadingRecordByUrl;->pause:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized addDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lccsansan/dr/getDownloadingRecordByUrl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {p0, p1, p2, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1, p2, v2}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    :goto_1
    sget p1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :cond_1
    monitor-exit v0

    return-object p0

    .line 1
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x6a

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    const/16 v0, 0x8

    :goto_1
    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList:I

    goto :goto_2

    :pswitch_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    const/16 v0, 0x6d

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        -0x6ft
        -0x2t
        -0x61t
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        0x6t
        -0xbt
        0x0t
        -0x11t
        0x29t
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        0x5t
        -0x1t
        0x12t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        -0x10t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        -0x6ft
        -0x2t
        -0x61t
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        0x6t
        -0xbt
        0x0t
        -0x11t
        0x29t
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        0x5t
        -0x1t
        0x12t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        -0x10t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
    .end array-data
.end method

.method private static addDownloadListener(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    nop

    .line 100
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/trackReportClick;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    const-string v1, "PackageUtils"

    packed-switch v0, :pswitch_data_0

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_1

    .line 102
    :pswitch_0
    nop

    .line 106
    const-string v0, "addFolderPkg has read storage permission"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0, p0, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0, p0, v1}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 100
    :cond_1
    :goto_1
    nop

    .line 102
    const-string p0, "addFolderPkg has no read storage permission"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 98
    nop

    .line 77
    const-string v0, "com.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 98
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 77
    :cond_0
    const-string v0, "com.google.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x4f

    goto :goto_0

    :cond_1
    const/16 p0, 0x51

    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 82
    :cond_2
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->addCategory(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 v2, 0x1f

    int-to-byte v2, v2

    :try_start_0
    sget-object v3, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    const/16 v4, 0x9

    aget-byte v4, v3, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x4

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x55

    int-to-byte v4, v4

    const/16 v5, 0x23

    aget-byte v5, v3, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x27

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v3, 0x10000

    .line 86
    invoke-virtual {v2, v0, v3}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 98
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ResolveInfo;

    .line 88
    iget-object v2, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-nez v2, :cond_8

    goto :goto_5

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    :cond_5
    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/16 p0, 0x5e

    goto :goto_3

    :cond_6
    const/16 p0, 0x30

    :goto_3
    packed-switch p0, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return v1

    :goto_4
    :try_start_1
    array-length p0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    throw p0

    :cond_7
    return v3

    :goto_5
    goto :goto_1

    .line 91
    :cond_8
    iget-object v2, v2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#isExcludedPkg queryIntentActivities ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageUtils"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v1

    .line 83
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    throw p1

    :cond_9
    throw p0

    .line 98
    :cond_a
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;I)Ljava/util/List;
    .locals 10
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

    .line 168
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/16 v0, 0x1f

    int-to-byte v0, v0

    :try_start_0
    sget-object v1, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    const/16 v2, 0x9

    aget-byte v2, v1, v2

    neg-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    invoke-static {v0, v2, v4}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x55

    int-to-byte v2, v2

    const/16 v4, 0x23

    aget-byte v4, v1, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x27

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    invoke-static {v2, v4, v6}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x2a

    const/16 v6, 0x2f

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v2, v7, :cond_9

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1

    .line 168
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 153
    :pswitch_0
    nop

    .line 154
    const-string v2, "android.permission.QUERY_ALL_PACKAGES"

    invoke-static {p0, v2}, Lccsansan/bw/trackReportClick;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 168
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 154
    goto :goto_4

    .line 159
    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-direct {p1}, Lccsanandroid/content/Intent;-><init>()V

    .line 161
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/high16 v1, 0x20000

    .line 162
    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    :pswitch_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ResolveInfo;

    .line 164
    new-instance v1, Lccsanandroid/content/pm/PackageInfo;

    invoke-direct {v1}, Lccsanandroid/content/pm/PackageInfo;-><init>()V

    .line 165
    iget-object v0, v0, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v2, v0, Lccsanandroid/content/pm/ActivityInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iput-object v2, v1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    .line 166
    iget-object v0, v0, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 167
    invoke-static {p0, v0}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    const/16 v0, 0x18

    goto :goto_3

    :cond_4
    const/16 v0, 0x17

    :goto_3
    packed-switch v0, :pswitch_data_2

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    :goto_4
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/2addr p0, v6

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    .line 154
    :cond_5
    :try_start_1
    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v8

    aget-byte p1, v1, v4

    add-int/2addr p1, v9

    int-to-byte p1, p1

    aget-byte v2, v1, v3

    int-to-byte v2, v2

    int-to-byte v3, v2

    invoke-static {p1, v2, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList:I

    and-int/2addr v2, v7

    int-to-byte v2, v2

    aget-byte v3, v1, v6

    int-to-byte v3, v3

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    sget p1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x1

    :goto_5
    packed-switch v8, :pswitch_data_3

    :cond_7
    :pswitch_3
    return-object p0

    .line 154
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    throw p1

    :cond_8
    throw p0

    .line 168
    :cond_9
    :goto_6
    :try_start_2
    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v8

    aget-byte p1, v1, v4

    add-int/2addr p1, v9

    int-to-byte p1, p1

    aget-byte v2, v1, v3

    int-to-byte v2, v2

    int-to-byte v3, v2

    invoke-static {p1, v2, v3}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList:I

    and-int/2addr v2, v7

    int-to-byte v2, v2

    aget-byte v3, v1, v6

    int-to-byte v3, v3

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    throw p1

    :cond_a
    throw p0

    .line 0
    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    throw p1

    :cond_b
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    throw p0

    .line 72
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 73
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;

    .line 74
    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 71
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    .line 75
    :pswitch_2
    invoke-static {p0, v0}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    nop

    :goto_3
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 76
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 142
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "PackageUtils"

    const-string v4, "#ergodicFolderPkg "

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/File;

    move-object/from16 v5, p0

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    const/16 v5, 0x3c

    goto :goto_0

    :cond_0
    const/16 v5, 0x59

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    const/4 v7, 0x2

    rem-int/2addr v0, v7

    if-eqz v0, :cond_1

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 117
    :goto_1
    if-ge v9, v6, :cond_7

    :try_start_1
    aget-object v0, v5, v9

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    .line 119
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v10, :cond_2

    .line 142
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    packed-switch v10, :pswitch_data_1

    .line 121
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0
    :try_end_3
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 142
    sget v12, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v12, v12, 0x47

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/2addr v12, v7

    if-nez v12, :cond_3

    .line 124
    :cond_3
    const/16 v12, 0x1f

    int-to-byte v12, v12

    :try_start_4
    sget-object v13, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    const/16 v14, 0x9

    aget-byte v14, v13, v14

    neg-int v14, v14

    int-to-byte v14, v14

    const/4 v15, 0x4

    aget-byte v11, v13, v15

    int-to-byte v11, v11

    invoke-static {v12, v14, v11}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x55

    int-to-byte v12, v12

    const/16 v14, 0x23

    aget-byte v14, v13, v14

    neg-int v14, v14

    int-to-byte v14, v14

    const/16 v16, 0x27

    aget-byte v15, v13, v16

    int-to-byte v15, v15

    invoke-static {v12, v14, v15}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    sget v11, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v11, v11, 0x75

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/2addr v11, v7

    if-eqz v11, :cond_4

    .line 124
    :cond_4
    :try_start_5
    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v11, v14

    aput-object v10, v11, v8

    const/16 v12, 0x2a

    aget-byte v12, v13, v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    int-to-byte v12, v12

    const/4 v14, 0x4

    aget-byte v14, v13, v14

    int-to-byte v14, v14

    int-to-byte v15, v14

    invoke-static {v12, v14, v15}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/16 v14, 0x1b

    aget-byte v14, v13, v14

    int-to-byte v14, v14

    const/4 v15, 0x7

    aget-byte v15, v13, v15

    neg-int v15, v15

    int-to-byte v15, v15

    aget-byte v13, v13, v16

    int-to-byte v13, v13

    invoke-static {v14, v15, v13}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v8

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_5

    :goto_3
    throw v11

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11
    :try_end_6
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v11, :cond_5

    goto :goto_3

    :catch_0
    move-exception v0

    .line 126
    :try_start_7
    new-instance v0, Lccsanandroid/content/pm/PackageInfo;

    invoke-direct {v0}, Lccsanandroid/content/pm/PackageInfo;-><init>()V

    .line 127
    iput-object v10, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-static {v12, v8}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x2e

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v13

    int-to-byte v13, v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    int-to-char v13, v13

    const/16 v14, 0x30

    invoke-static {v14}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v14

    add-int/lit8 v14, v14, -0x7

    invoke-static {v12, v13, v14}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_4
    invoke-static {v1, v10, v0}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/util/List;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 131
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " addFolderPkg pkgName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    const/4 v10, 0x1

    add-int/2addr v0, v10

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 142
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v10, v0, 0x80

    sput v10, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/2addr v0, v7

    if-nez v0, :cond_6

    goto :goto_5

    .line 133
    :catch_1
    move-exception v0

    :cond_6
    :goto_5
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 31
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/getErrorCode;->execute()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addReceiveSavedPkg savedPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageUtils"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 8
    :cond_0
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 31
    const/16 v4, 0x34

    goto :goto_0

    :cond_1
    const/16 v4, 0xf

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 8
    nop

    .line 9
    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v6

    goto :goto_1

    :pswitch_0
    nop

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 31
    :goto_1
    nop

    .line 13
    :goto_2
    array-length v0, v2

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 31
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/2addr v0, v4

    return-void

    .line 17
    :cond_2
    array-length v7, v2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v2, v8

    .line 19
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addReceiveSavedPkg before pkgName ="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    const/16 v10, 0x2a

    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    sget v11, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v11, v11, 0x7b

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/2addr v11, v4

    if-nez v11, :cond_3

    .line 22
    :cond_3
    const/16 v11, 0x1f

    int-to-byte v11, v11

    :try_start_2
    sget-object v12, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload:[B

    const/16 v13, 0x9

    aget-byte v13, v12, v13

    neg-int v13, v13

    int-to-byte v13, v13

    const/4 v14, 0x4

    aget-byte v15, v12, v14

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v13, 0x55

    int-to-byte v13, v13

    const/16 v15, 0x23

    aget-byte v15, v12, v15

    neg-int v15, v15

    int-to-byte v15, v15

    const/16 v16, 0x27

    aget-byte v14, v12, v16

    int-to-byte v14, v14

    invoke-static {v13, v15, v14}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    sget v11, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v11, v11, 0x57

    rem-int/lit16 v13, v11, 0x80

    sput v13, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/2addr v11, v4

    if-eqz v11, :cond_4

    .line 22
    :cond_4
    :try_start_3
    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v5

    aput-object v9, v11, v6

    aget-byte v13, v12, v10

    add-int/2addr v13, v5

    int-to-byte v13, v13

    const/4 v14, 0x4

    aget-byte v14, v12, v14

    int-to-byte v14, v14

    int-to-byte v15, v14

    invoke-static {v13, v14, v15}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x1b

    aget-byte v14, v12, v14

    int-to-byte v14, v14

    const/4 v15, 0x7

    aget-byte v10, v12, v15

    neg-int v10, v10

    int-to-byte v10, v10

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v14, v10, v12}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(SSB)Ljava/lang/String;

    move-result-object v10

    new-array v12, v4, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v6

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v5

    invoke-virtual {v13, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    sget v10, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/2addr v10, v15

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/2addr v10, v4

    if-eqz v10, :cond_6

    goto :goto_5

    .line 22
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_5

    :goto_4
    throw v10

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10
    :try_end_4
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v10, :cond_5

    goto :goto_4

    :catch_0
    move-exception v0

    .line 24
    :try_start_5
    new-instance v0, Lccsanandroid/content/pm/PackageInfo;

    invoke-direct {v0}, Lccsanandroid/content/pm/PackageInfo;-><init>()V

    .line 25
    iput-object v9, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-static {v11, v6, v6}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v11

    add-int/lit8 v11, v11, 0x57

    const v12, 0xbaab

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v13

    shr-int/lit8 v13, v13, 0x16

    add-int/2addr v13, v12

    int-to-char v12, v13

    invoke-static {v6, v6}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v13

    const/16 v14, 0x2a

    add-int/2addr v13, v14

    invoke-static {v11, v12, v13}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_6
    :goto_5
    invoke-static {v1, v9, v0}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/util/List;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addReceiveSavedPkg needAddPkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/2addr v0, v5

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedList:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    :cond_7
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/do/removeDownloadListener;)V
    .locals 2

    .line 177
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sput-object p0, Lccsansan/dr/getDownloadingRecordByUrl;->deleteDownItem:Lccsansan/do/removeDownloadListener;

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method private static getDownloadingList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 176
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 175
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 176
    :goto_0
    nop

    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;

    .line 176
    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    return v1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/util/List;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lccsanandroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    .line 150
    nop

    .line 144
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 143
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x33

    if-eqz v0, :cond_1

    .line 144
    const/16 v0, 0x33

    goto :goto_1

    :cond_1
    const/16 v0, 0x59

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 150
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_2

    .line 144
    :pswitch_0
    const/4 p0, 0x0

    goto :goto_4

    .line 150
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;

    .line 144
    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 150
    :catchall_0
    move-exception p0

    throw p0

    .line 143
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;

    .line 144
    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    .line 150
    :cond_3
    const/4 p0, 0x1

    :goto_4
    invoke-static {p2}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/pm/PackageInfo;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p0, :cond_4

    .line 144
    const/16 p0, 0xf

    goto :goto_5

    :cond_4
    const/16 p0, 0x2d

    :goto_5
    packed-switch p0, :pswitch_data_1

    goto :goto_6

    .line 150
    :pswitch_1
    goto :goto_7

    :cond_5
    :goto_6
    const/4 v2, 0x0

    :goto_7
    return v2

    .line 144
    :cond_6
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lccsansan/dr/getDownloadingRecordByUrl;

    monitor-enter v0

    .line 70
    nop

    .line 2
    :try_start_0
    sget-wide v1, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    .line 70
    const/16 v7, 0x32

    goto :goto_0

    :cond_0
    const/16 v7, 0x57

    :goto_0
    packed-switch v7, :pswitch_data_0

    :try_start_1
    sget v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 3
    :pswitch_0
    sub-long/2addr v3, v1

    const-wide/16 v1, 0x3e8

    .line 4
    :try_start_2
    div-long v5, v3, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x37

    :try_start_3
    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    const/16 v1, 0x38

    goto :goto_2

    :cond_1
    const/16 v1, 0x3d

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 5
    :goto_3
    :pswitch_1
    :try_start_4
    sget-object v1, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    .line 6
    sget-object v1, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    invoke-virtual {v1}, Lccsansan/bu/getDownloadingList;->removeDownloadListener()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_4

    .line 35
    :cond_2
    invoke-virtual {v1}, Lccsansan/bu/getDownloadingList;->addDownloadListener()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    .line 36
    :cond_3
    :goto_4
    :try_start_5
    invoke-static {p0, p1}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_4

    .line 38
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const-string v1, "AppInfos"

    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 41
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v1, "PackageUtils"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 42
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before append packagesInfo size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload()V

    .line 46
    invoke-static {p3}, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/util/List;)V

    .line 47
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v2, "PackageUtils"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 48
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after append packagesInfo size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-le v1, p2, :cond_5

    .line 70
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    const/4 v2, 0x1

    :goto_5
    packed-switch v2, :pswitch_data_2

    :try_start_a
    sget v2, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_6

    .line 48
    :cond_6
    sub-int/2addr v1, p2

    .line 51
    :try_start_b
    invoke-static {v1}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(I)V

    .line 55
    :cond_7
    :pswitch_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 56
    invoke-static {p0, p3}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string p0, "PackageUtils"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 57
    :try_start_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after excludedUnusedPackage size ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    nop

    .line 57
    :cond_8
    if-nez p1, :cond_9

    .line 60
    sget-object p0, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    invoke-virtual {p0, p3}, Lccsansan/bu/getDownloadingList;->removeDownloadListener(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 70
    nop

    .line 60
    :cond_9
    monitor-exit v0

    return-object p3

    .line 65
    :catchall_0
    move-exception p0

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/StringBuilder;

    if-nez p1, :cond_a

    .line 68
    sget-object p0, Lccsansan/dr/getDownloadingRecordByUrl;->removeDownloadListener:Lccsansan/bu/getDownloadingList;

    invoke-virtual {p0}, Lccsansan/bu/getDownloadingList;->addDownloadListener()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 70
    :goto_6
    monitor-exit v0

    return-object p0

    :cond_a
    :try_start_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_6

    .line 1
    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static removeDownloadListener()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 216
    nop

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    :try_start_0
    new-instance v1, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v2, "ad_app_cache_info_expiry_date"

    .line 209
    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v5

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-gez v2, :cond_0

    .line 216
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 212
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :pswitch_0
    sget v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    .line 210
    return-object v0

    .line 212
    :goto_1
    :try_start_1
    const-string v5, "ad_app_cache_info"

    invoke-virtual {v1, v5}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    sget v5, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v5, v5, 0x3f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const/16 v5, 0x5e

    goto :goto_2

    :cond_1
    const/16 v5, 0x9

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 214
    :goto_3
    :pswitch_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v5, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget v5, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v5, v5, 0x5f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_3

    :catch_0
    move-exception v1

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 14
    nop

    .line 1
    invoke-static {}, Lccsansan/dr/getDownloadedList;->deleteDownItem()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/dr/getDownloadedList;->getDownloadedList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    const/16 v0, 0x3e

    goto :goto_0

    :cond_1
    const/16 v0, 0x31

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6
    :cond_2
    invoke-static {p0}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 14
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 9
    :goto_2
    invoke-static {}, Lccsansan/dr/getDownloadedList;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p0}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(Ljava/util/List;)V

    .line 13
    :cond_3
    invoke-static {}, Lccsansan/dr/getDownloadedList;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    const/16 v0, 0x18

    goto :goto_3

    :cond_4
    const/16 v0, 0x20

    :goto_3
    packed-switch v0, :pswitch_data_1

    invoke-static {p0}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Ljava/util/List;)V

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    :goto_4
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 151
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-nez p0, :cond_2

    .line 151
    const/16 v0, 0x34

    goto :goto_1

    :cond_2
    const/16 v0, 0x56

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    :goto_2
    :pswitch_1
    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    return v4

    .line 0
    :cond_3
    return v3

    .line 151
    :goto_3
    :try_start_1
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/2addr p0, v4

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    const/4 p0, 0x1

    :goto_4
    packed-switch p0, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    :cond_5
    const/4 v3, 0x1

    :goto_5
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_6

    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    :catchall_1
    move-exception p0

    throw p0

    :cond_6
    return v3

    :catch_0
    move-exception p0

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static unifiedDownload(ZLjava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 39
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x55

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x55

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-static {p0, p1}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(ZLjava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/util/Map;)V

    goto :goto_1

    .line 38
    :pswitch_0
    invoke-static {p0, p1}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(ZLjava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/util/Map;)V

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/2addr p1, v1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload()V
    .locals 3

    .line 3
    sget v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x52

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    .line 2
    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    goto :goto_1

    .line 1
    :pswitch_0
    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    .line 2
    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    .line 3
    :goto_1
    sput v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x12

    goto :goto_2

    :cond_1
    const/16 v0, 0x37

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
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

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;)V
    .locals 5

    .line 227
    nop

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "error"

    .line 221
    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-boolean p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadStatusByUrl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 227
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v4, "history"

    packed-switch p0, :pswitch_data_0

    .line 224
    goto :goto_1

    .line 222
    :pswitch_0
    nop

    .line 223
    :try_start_1
    sget-object p0, Lccsansan/dr/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sput-boolean v2, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadStatusByUrl:Z

    goto :goto_2

    .line 226
    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v4, "ERR_AboutPackageManager"

    invoke-static {p0, v4, v3}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_3

    :catchall_0
    move-exception p0

    :cond_1
    :goto_3
    sget p0, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/dr/getDownloadingRecordByUrl;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_2
    array-length p0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
