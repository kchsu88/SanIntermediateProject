.class public Lccsansan/p/unifiedDownload;
.super Lccsanandroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lccsansan/m/removeDownloadListener;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final getDownloadingList:[B


# instance fields
.field private addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/unifiedDownload;->getDownloadingList:[B

    const/16 v0, 0x3b

    sput v0, Lccsansan/p/unifiedDownload;->IncentiveDownloadUtils:I

    return-void

    :array_0
    .array-data 1
        0x5dt
        -0x2dt
        -0x75t
        -0x1et
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        -0x6t
        0xbt
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x17t
        0x2et
        0x1t
        0x8t
        -0xdt
        0x15t
        -0x2t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x44t
        -0x1t
        -0x3dt
        0x24t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/p/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 3
    iput-object p2, p0, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)V
    .locals 2

    .line 95
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/p/unifiedDownload;Lccsansan/m/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/p/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)V

    return-void
.end method

.method private removeDownloadListener(JLccsansan/m/removeDownloadListener;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 87
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/unifiedDownload$addDownloadListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/p/unifiedDownload$addDownloadListener;-><init>(Lccsansan/p/unifiedDownload;JLccsansan/m/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, p3}, Lccsansan/p/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)V

    :goto_0
    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;Lccsansan/cy/getDownloadingRecordByUrl;ILjava/lang/String;)V
    .locals 14

    .line 86
    move-object/from16 v0, p2

    iget-object v1, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    iget-object v2, v0, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v3, v0, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v4, v0, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownItem:Ljava/lang/String;

    iget v5, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedList:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    iget v8, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    iget v9, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedCount:I

    iget v10, v0, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    iget-object v11, v0, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveSDK:Ljava/lang/String;

    iget v12, v0, Lccsansan/cy/getDownloadingRecordByUrl;->execute:I

    move-object v0, p1

    move-object/from16 v6, p4

    move/from16 v13, p3

    invoke-static/range {v0 .. v13}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;II)V

    return-void
.end method

.method private static unifiedDownload(BIS)Ljava/lang/String;
    .locals 7

    sget-object v0, Lccsansan/p/unifiedDownload;->getDownloadingList:[B

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    rsub-int/lit8 p2, p2, 0x47

    add-int/lit8 p1, p1, 0xe

    new-array v1, p1, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, p0

    aput-byte v5, v1, v3

    if-ne v4, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p2

    move v6, p2

    move p2, p1

    move p1, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x2

    add-int/lit8 p1, v0, 0x1

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v6, p2

    move p2, p1

    move p1, v6

    goto :goto_0
.end method


# virtual methods
.method protected varargs addDownloadListener([Ljava/lang/Void;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 2
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground enter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatchUploadTask"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/cy/getDownloadingRecordByUrl;

    if-eqz v3, :cond_0

    .line 4
    iget v4, v3, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v5, v3, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    const-string v5, "isOfflineAd"

    invoke-virtual {v4, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeDetailPage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    nop

    .line 14
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-static {v0}, Lccsansan/cy/deleteDownItem;->IncentiveDownloadUtils(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_8

    .line 18
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 21
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_8

    .line 22
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lccsansan/m/removeDownloadListener;

    .line 23
    iget-object v0, v7, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    :try_start_1
    new-instance v0, Lccsansan/dt/addDownloadListener;

    new-instance v8, Lccsanorg/json/JSONObject;

    iget-object v9, v7, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v8, v9}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lccsansan/dt/addDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 26
    iget-object v8, v1, Lccsansan/p/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v9, Lccsansan/p/unifiedDownload;->getDownloadingList:[B

    const/4 v10, 0x4

    aget-byte v11, v9, v10

    int-to-byte v11, v11

    or-int/lit8 v12, v11, 0x9

    int-to-byte v12, v12

    sget v13, Lccsansan/p/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v14, v13, -0x5

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lccsansan/p/unifiedDownload;->unifiedDownload(BIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x1a

    aget-byte v14, v9, v12

    int-to-byte v14, v14

    const/16 v15, 0x16

    aget-byte v15, v9, v15

    neg-int v15, v15

    int-to-byte v15, v15

    aget-byte v12, v9, v10

    int-to-byte v12, v12

    invoke-static {v14, v15, v12}, Lccsansan/p/unifiedDownload;->unifiedDownload(BIS)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v12, 0x2

    :try_start_4
    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    aput-object v11, v14, v5

    aget-byte v11, v9, v10

    int-to-byte v11, v11

    const/4 v15, 0x7

    aget-byte v15, v9, v15

    int-to-byte v15, v15

    and-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    invoke-static {v11, v15, v13}, Lccsansan/p/unifiedDownload;->unifiedDownload(BIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v13, 0x1a

    aget-byte v13, v9, v13

    int-to-byte v13, v13

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    or-int/lit8 v10, v9, 0x43

    int-to-byte v10, v10

    invoke-static {v13, v9, v10}, Lccsansan/p/unifiedDownload;->unifiedDownload(BIS)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v16

    invoke-virtual {v11, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/content/pm/PackageInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :try_start_5
    iget v8, v8, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0}, Lccsansan/dt/addDownloadListener;->getDownloadingList()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is upgrade, so skip"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 26
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_3

    :goto_3
    throw v8

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v8, :cond_3

    goto :goto_3

    .line 28
    :catch_1
    move-exception v0

    :cond_4
    nop

    .line 34
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lccsansan/m/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/Long;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    .line 37
    iget-object v0, v1, Lccsansan/p/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)Z

    .line 39
    iget-object v0, v1, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cy/getDownloadingRecordByUrl;

    iget v0, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    sget-object v10, Lccsansan/p/deleteDownList;->AZ_FINISHED:Lccsansan/p/deleteDownList;

    invoke-virtual {v10}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v10

    if-ne v0, v10, :cond_5

    .line 40
    iget-object v0, v1, Lccsansan/p/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v10, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v10}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 41
    :cond_5
    iget-object v0, v1, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v0, v0, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lccsansan/p/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v10, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v10}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 42
    iget-object v0, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v10, v1, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v10, v10, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v10}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_6
    iget-object v0, v7, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v0, :cond_7

    iget-wide v10, v0, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedList:J

    cmp-long v0, v10, v8

    if-lez v0, :cond_7

    .line 46
    :try_start_6
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_5
    return-object v4
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsansan/p/unifiedDownload;->addDownloadListener([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lccsansan/p/unifiedDownload;->removeDownloadListener(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected removeDownloadListener(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/m/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Lccsansan/p/unifiedDownload;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cy/getDownloadingRecordByUrl;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 49
    iget-object v3, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/m/removeDownloadListener;

    .line 51
    iget-object v5, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v6, v4, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    const-string v3, "BatchUploadTask"

    .line 58
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " adInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz v4, :cond_8

    .line 60
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 65
    :cond_3
    iget-object v2, v4, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 66
    new-instance v2, Lccsanorg/json/JSONObject;

    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v2, v5}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "attr_code"

    .line 67
    invoke-virtual {v2, v5, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    const-string v2, "success"

    .line 70
    :try_start_2
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3, v5}, Lccsansan/p/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Lccsansan/cy/getDownloadingRecordByUrl;ILjava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 73
    iget-object v3, v4, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 74
    :goto_2
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 75
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v5

    iget-object v6, v4, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77
    :cond_5
    iget-object v3, v4, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v3, :cond_6

    .line 78
    iget-wide v1, v3, Lccsansan/m/getDownloadingRecordByUrl;->resume:J

    .line 81
    :cond_6
    iget-object v3, v4, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_0

    .line 84
    :cond_7
    invoke-direct {p0, v1, v2, v4}, Lccsansan/p/unifiedDownload;->removeDownloadListener(JLccsansan/m/removeDownloadListener;)V

    goto/16 :goto_0

    :cond_8
    :goto_3
    const-string v4, "failure"

    .line 85
    invoke-direct {p0, v4, v1, v3, v2}, Lccsansan/p/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Lccsansan/cy/getDownloadingRecordByUrl;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    :cond_9
    return-void
.end method
