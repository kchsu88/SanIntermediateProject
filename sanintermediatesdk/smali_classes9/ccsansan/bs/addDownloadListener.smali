.class public Lccsansan/bs/addDownloadListener;
.super Lccsansan/bs/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bs/addDownloadListener$addDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsansan/bs/IncentiveDownloadUtils;"
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bs/addDownloadListener;->unifiedDownload:[B

    const/4 v0, 0x6

    sput v0, Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils:I

    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x7ct
        0x12t
        0x3at
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

.method public constructor <init>(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/bs/IncentiveDownloadUtils;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method

.method private static IncentiveDownloadUtils(BSI)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x17

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    mul-int/lit8 p2, p2, 0x16

    rsub-int/lit8 p2, p2, 0x1a

    sget-object v0, Lccsansan/bs/addDownloadListener;->unifiedDownload:[B

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p0

    aput-byte v4, v1, v3

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p2

    move-object v5, v0

    move v0, p2

    move p2, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    neg-int p2, p2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method private IncentiveDownloadUtils()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v6

    .line 4
    new-instance v0, Lccsansan/bs/addDownloadListener$getDownloadingList;

    const-wide/16 v3, 0xbb8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lccsansan/bs/addDownloadListener$getDownloadingList;-><init>(Lccsansan/bs/addDownloadListener;JLjava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->deleteDownItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lccsancom/san/az/unifiedDownload;->getDownloadingList:Ljava/util/List;

    iget-object v1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bs/addDownloadListener$unifiedDownload;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedList()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3, p1}, Lccsansan/bs/addDownloadListener$unifiedDownload;-><init>(Lccsansan/bs/addDownloadListener;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_0
    return-void
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    .line 22
    iget-object v1, p1, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hasObb"

    invoke-virtual {p1, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 25
    :cond_1
    iget-object v1, p1, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method static synthetic addDownloadListener(Lccsansan/bs/addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/bs/addDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lccsansan/bs/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p0

    return-object p0
.end method

.method private removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    int-to-byte v1, v1

    int-to-byte v2, v1

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    :try_start_0
    invoke-static {v1, v2, v3}, Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget v2, Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, -0x5

    int-to-byte v2, v2

    int-to-byte v3, v2

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 10
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 13
    :goto_0
    invoke-direct {p0}, Lccsansan/bs/addDownloadListener;->IncentiveDownloadUtils()V

    return-void

    .line 5
    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p1
.end method

.method static synthetic unifiedDownload(Lccsansan/bs/addDownloadListener;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lccsansan/bs/addDownloadListener;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method


# virtual methods
.method public synthetic addDownloadListener()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/bs/addDownloadListener;->removeDownloadListener()Lccsansan/bs/addDownloadListener$addDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingList(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Android"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "obb"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDownloadingList()Lccsansan/bs/addDownloadListener$addDownloadListener;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0}, Lccsansan/bh/getDownloadingList;->deleteDownItem(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 3
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsansan/bs/addDownloadListener;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    const-string v4, "event"

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v2, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(J)V

    .line 6
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 7
    new-instance v0, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;-><init>()V

    const-string v1, "pre_activated"

    .line 8
    invoke-virtual {v0, v4, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0}, Lccsansan/bh/getDownloadingList;->getDownloadStatusByUrl(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 16
    new-instance v0, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;-><init>()V

    const-string v1, "network_unavailable"

    .line 17
    invoke-virtual {v0, v4, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 25
    :cond_1
    new-instance v0, Lccsansan/bs/addDownloadListener$addDownloadListener$addDownloadListener;

    invoke-direct {v0}, Lccsansan/bs/addDownloadListener$addDownloadListener$addDownloadListener;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 26
    new-instance v1, Lccsansan/bj/addDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/addDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    .line 27
    new-instance v0, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;-><init>()V

    return-object v0
.end method

.method public removeDownloadListener()Lccsansan/bs/addDownloadListener$addDownloadListener;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lccsansan/bs/addDownloadListener$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/bs/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/bs/addDownloadListener;)V

    .line 19
    iget-object v1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v1, v0}, Lccsansan/bp/removeDownloadListener;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bk/unifiedDownload;)V

    .line 20
    new-instance v0, Lccsansan/bs/addDownloadListener$addDownloadListener$addDownloadListener;

    invoke-direct {v0}, Lccsansan/bs/addDownloadListener$addDownloadListener$addDownloadListener;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    new-instance v1, Lccsansan/bj/addDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/addDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    .line 24
    new-instance v0, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;-><init>()V

    return-object v0
.end method

.method public synthetic unifiedDownload()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lccsansan/bs/addDownloadListener;->getDownloadingList()Lccsansan/bs/addDownloadListener$addDownloadListener;

    move-result-object v0

    return-object v0
.end method
