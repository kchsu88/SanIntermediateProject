.class public Lccsansan/cy/resume;
.super Lccsanandroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lccsansan/m/removeDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final addDownloadListener:I

.field public static final unifiedDownload:[B


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field private getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cy/resume;->unifiedDownload:[B

    const/16 v0, 0x4c

    sput v0, Lccsansan/cy/resume;->addDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0xat
        -0x2at
        0x61t
        0xet
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

.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/cy/getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/cy/resume;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    .line 3
    iput-object p2, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    return-void
.end method

.method private addDownloadListener(JLccsansan/m/removeDownloadListener;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 66
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cy/resume$addDownloadListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/cy/resume$addDownloadListener;-><init>(Lccsansan/cy/resume;JLccsansan/m/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p3}, Lccsansan/cy/resume;->removeDownloadListener(Lccsansan/m/removeDownloadListener;)V

    :goto_0
    return-void
.end method

.method private static removeDownloadListener(IBI)Ljava/lang/String;
    .locals 6

    sget-object v0, Lccsansan/cy/resume;->unifiedDownload:[B

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    add-int/lit8 p0, p0, 0xe

    add-int/lit8 p1, p1, 0x4

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

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
    int-to-byte v4, p2

    aput-byte v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    if-ne v3, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p1

    move v5, p2

    move p2, p1

    move p1, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    add-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x2

    add-int/lit8 p2, p2, 0x1

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_0
.end method

.method private removeDownloadListener(Ljava/lang/String;Lccsansan/cy/getDownloadingRecordByUrl;ILjava/lang/String;)V
    .locals 14

    .line 65
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

.method static synthetic removeDownloadListener(Lccsansan/cy/resume;Lccsansan/m/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/cy/resume;->removeDownloadListener(Lccsansan/m/removeDownloadListener;)V

    return-void
.end method

.method private removeDownloadListener(Lccsansan/m/removeDownloadListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cy/resume;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V

    return-void
.end method


# virtual methods
.method protected addDownloadListener(Lccsansan/m/removeDownloadListener;)V
    .locals 7

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    .line 39
    :try_start_0
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Lccsanorg/json/JSONObject;

    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "attr_code"

    .line 46
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v1, "success"

    .line 49
    :try_start_1
    iget-object v2, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0, v3}, Lccsansan/cy/resume;->removeDownloadListener(Ljava/lang/String;Lccsansan/cy/getDownloadingRecordByUrl;ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 52
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 53
    :goto_0
    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 54
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v3

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v2, :cond_3

    .line 57
    iget-wide v0, v2, Lccsansan/m/getDownloadingRecordByUrl;->resume:J

    .line 60
    :cond_3
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 63
    :cond_4
    invoke-direct {p0, v0, v1, p1}, Lccsansan/cy/resume;->addDownloadListener(JLccsansan/m/removeDownloadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_5
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception p1

    goto :goto_3

    .line 63
    :cond_6
    :goto_2
    const-string p1, "failure"

    .line 64
    :try_start_2
    iget-object v1, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lccsansan/cy/resume;->removeDownloadListener(Ljava/lang/String;Lccsansan/cy/getDownloadingRecordByUrl;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsansan/cy/resume;->unifiedDownload([Ljava/lang/Void;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lccsansan/m/removeDownloadListener;

    invoke-virtual {p0, p1}, Lccsansan/cy/resume;->addDownloadListener(Lccsansan/m/removeDownloadListener;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs unifiedDownload([Ljava/lang/Void;)Lccsansan/m/removeDownloadListener;
    .locals 14

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground() enter"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.CPI.UploadTask"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    iget p1, p1, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v1, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v1, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    const-string v2, "isOfflineAd"

    invoke-virtual {p1, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeDetailPage:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object p1, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    invoke-static {p1}, Lccsansan/cy/addDownloadListener;->removeDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 11
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 14
    :cond_1
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    :try_start_0
    new-instance v2, Lccsansan/dt/addDownloadListener;

    new-instance v3, Lccsanorg/json/JSONObject;

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v3, v4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lccsansan/dt/addDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 17
    iget-object v3, p0, Lccsansan/cy/resume;->IncentiveDownloadUtils:Lccsanandroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Lccsansan/cy/resume;->unifiedDownload:[B

    const/4 v5, 0x0

    aget-byte v6, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    const/16 v8, 0x1c

    aget-byte v8, v4, v8

    neg-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x4

    aget-byte v10, v4, v9

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lccsansan/cy/resume;->removeDownloadListener(IBI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x16

    aget-byte v8, v4, v8

    neg-int v8, v8

    int-to-byte v8, v8

    or-int/lit8 v10, v8, 0x40

    int-to-byte v10, v10

    const/16 v11, 0x1a

    aget-byte v12, v4, v11

    int-to-byte v12, v12

    invoke-static {v8, v10, v12}, Lccsansan/cy/resume;->removeDownloadListener(IBI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v8, 0x2

    :try_start_3
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v7

    aput-object v6, v10, v5

    const/4 v6, 0x7

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v12, 0x39

    aget-byte v12, v4, v12

    sub-int/2addr v12, v7

    int-to-byte v12, v12

    aget-byte v13, v4, v9

    int-to-byte v13, v13

    invoke-static {v6, v12, v13}, Lccsansan/cy/resume;->removeDownloadListener(IBI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    int-to-byte v12, v9

    aget-byte v4, v4, v11

    int-to-byte v4, v4

    invoke-static {v9, v12, v4}, Lccsansan/cy/resume;->removeDownloadListener(IBI)Ljava/lang/String;

    move-result-object v4

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v8, v7

    invoke-virtual {v6, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/PackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    iget v3, v3, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener;->getDownloadingList()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is upgrade, so exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 17
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    throw v1

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    :cond_3
    nop

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lccsansan/m/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/Long;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    .line 29
    iget-object v2, p0, Lccsansan/cy/resume;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, p1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)Z

    .line 31
    iget-object v2, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    iget v2, v2, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    sget-object v3, Lccsansan/p/deleteDownList;->AZ_FINISHED:Lccsansan/p/deleteDownList;

    invoke-virtual {v3}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 32
    iget-object v2, p0, Lccsansan/cy/resume;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 33
    :cond_4
    iget-object v2, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v2, v2, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lccsansan/cy/resume;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 34
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/cy/resume;->getDownloadingList:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v3, v3, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_5
    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v2, :cond_6

    iget-wide v2, v2, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedList:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_6

    .line 38
    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_6
    :goto_1
    return-object p1

    :cond_7
    :goto_2
    return-object v1
.end method
