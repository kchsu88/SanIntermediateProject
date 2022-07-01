.class public Lccsansan/df/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final getDownloadingList:[B

.field public static final removeDownloadListener:I

.field private static unifiedDownload:Lccsansan/df/getDownloadingList;


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:J

.field private deleteDownItem:Lccsanandroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/df/getDownloadingList;->getDownloadingList:[B

    const/16 v0, 0x69

    sput v0, Lccsansan/df/getDownloadingList;->removeDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0xet
        0x7ft
        -0xft
        0x65t
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

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/df/getDownloadingList;->addDownloadListener:J

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/df/getDownloadingList;->deleteDownItem:Lccsanandroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private static IncentiveDownloadUtils(IIB)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0x19

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x11

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    sget-object v0, Lccsansan/df/getDownloadingList;->getDownloadingList:[B

    new-array v1, p2, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p0

    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v1, v3

    add-int/lit8 p1, p1, 0x1

    if-ne v5, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p1

    move-object v6, v0

    move v0, p2

    move p2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_1
    neg-int p2, p2

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v5

    goto :goto_0
.end method

.method public static IncentiveDownloadUtils()Lccsansan/df/getDownloadingList;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/df/getDownloadingList;->unifiedDownload:Lccsansan/df/getDownloadingList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/df/getDownloadingList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/df/getDownloadingList;->unifiedDownload:Lccsansan/df/getDownloadingList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/df/getDownloadingList;

    invoke-direct {v1}, Lccsansan/df/getDownloadingList;-><init>()V

    sput-object v1, Lccsansan/df/getDownloadingList;->unifiedDownload:Lccsansan/df/getDownloadingList;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/df/getDownloadingList;->unifiedDownload:Lccsansan/df/getDownloadingList;

    return-object v0
.end method

.method static synthetic addDownloadListener(Lccsansan/df/getDownloadingList;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/df/getDownloadingList;->addDownloadListener:J

    return-wide p1
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/do/unifiedDownload;
    .locals 6

    .line 74
    invoke-static {p0}, Lccsansan/dr/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)J

    move-result-wide v2

    .line 75
    invoke-static {p0}, Lccsansan/dr/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)J

    move-result-wide v4

    .line 76
    const-string v1, "AL"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lccsansan/dr/getDownloadStatusByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;JJ)Lccsansan/dr/getDownloadStatusByUrl;

    move-result-object p0

    return-object p0
.end method

.method private addDownloadListener()Z
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/getErrorCode;->IncentiveSDK$1()Z

    move-result v1

    const-string v2, "al_record_enable"

    invoke-static {v0, v2, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lccsansan/dr/getDownloadedList;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private deleteDownItem()V
    .locals 4

    .line 77
    const-string v0, "ALManager"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "AL:Record"

    .line 80
    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lccsansan/df/getDownloadingList;->deleteDownItem:Lccsanandroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x927c0

    .line 81
    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getDownloadStatusByUrl()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Clean_Cache"

    .line 2
    invoke-static {v0, v1, v2}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lccsansan/dr/getDownloadingRecordByUrl;->unifiedDownload(ZLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dr/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    const-string v1, "ALManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getDownloadedList()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lccsansan/dr/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    const-string v2, "ALManager"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private getDownloadedRecordByUrl()V
    .locals 12

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lccsansan/df/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadedList()Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-static {}, Lccsansan/dr/getDownloadingList;->IncentiveDownloadUtils()J

    move-result-wide v3

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/32 v6, 0x5265c00

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v0, v5}, Lccsansan/df/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    cmp-long v8, v10, v6

    if-ltz v8, :cond_0

    .line 13
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_1
    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    cmp-long v3, v0, v6

    if-ltz v3, :cond_4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsansan/dr/getDownloadingList;->IncentiveDownloadUtils(J)V

    .line 17
    :cond_4
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dr/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 19
    const-string v1, "ALManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/df/getDownloadingList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadedRecordByUrl()V

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .line 16
    const-string v0, "com.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    const-string v0, "com.google.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 20
    :cond_0
    const/4 v0, 0x0

    int-to-byte v2, v0

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    int-to-byte v4, v3

    :try_start_0
    invoke-static {v2, v3, v4}, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils(IIB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget v6, Lccsansan/df/getDownloadingList;->removeDownloadListener:I

    and-int/lit8 v6, v6, 0x7

    int-to-byte v6, v6

    add-int/lit8 v7, v6, -0x1

    int-to-byte v7, v7

    int-to-byte v8, v7

    invoke-static {v6, v7, v8}, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils(IIB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    invoke-virtual {v5, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_1

    return v1

    .line 25
    :cond_1
    new-instance v6, Lccsanandroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v6, v8}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v6, v9}, Lccsanandroid/content/Intent;->addCategory(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/high16 v9, 0x10000

    .line 28
    invoke-virtual {v5, v6, v9}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 29
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/content/pm/ResolveInfo;

    .line 30
    iget-object v6, v6, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-nez v6, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    iget-object v6, v6, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 39
    :cond_4
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v1

    .line 44
    :cond_5
    new-instance v5, Lccsanandroid/content/Intent;

    invoke-direct {v5, v8, v7}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 45
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Lccsanandroid/content/Intent;->addCategory(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 46
    :try_start_1
    invoke-static {v2, v3, v4}, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils(IIB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v3, Lccsansan/df/getDownloadingList;->removeDownloadListener:I

    and-int/lit8 v3, v3, 0x7

    int-to-byte v3, v3

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    int-to-byte v6, v4

    invoke-static {v3, v4, v6}, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils(IIB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v5, v0}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ResolveInfo;

    .line 49
    iget-object v3, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-nez v3, :cond_7

    goto :goto_1

    .line 53
    :cond_7
    iget-object v3, v3, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 55
    iget-object p0, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget p0, p0, Lccsanandroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_9
    return v0

    .line 46
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    throw p1

    :cond_a
    throw p0

    .line 20
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    throw p1

    :cond_b
    throw p0

    .line 55
    :cond_c
    :goto_3
    return v1
.end method

.method private getDownloadingRecordByUrl()V
    .locals 2

    .line 1
    const-string v0, "ALManager"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsansan/df/getDownloadingList;->deleteDownItem:Lccsanandroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lccsansan/df/getDownloadingList;->deleteDownItem:Lccsanandroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/df/getDownloadingList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadStatusByUrl()V

    return-void
.end method

.method private removeDownloadListener()Z
    .locals 5

    .line 49
    const-string v0, "a_l"

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/df/getDownloadingList;->addDownloadListener:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/ActivityManager;

    if-nez p0, :cond_0

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    nop

    .line 55
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lccsanandroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    iget-object v3, v3, Lccsanandroid/app/ActivityManager$RunningTaskInfo;->topActivity:Lccsanandroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v3}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    nop

    .line 62
    invoke-virtual {p0, v1}, Lccsanandroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/ActivityManager$RunningServiceInfo;

    .line 64
    iget-object v3, v3, Lccsanandroid/app/ActivityManager$RunningServiceInfo;->service:Lccsanandroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 65
    invoke-virtual {v3}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    .line 69
    invoke-virtual {p0, v1, v2}, Lccsanandroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/ActivityManager$RecentTaskInfo;

    .line 72
    :try_start_0
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6

    .line 73
    iget-object v1, v1, Lccsanandroid/app/ActivityManager$RecentTaskInfo;->topActivity:Lccsanandroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {v1}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 77
    :cond_6
    iget-object v1, v1, Lccsanandroid/app/ActivityManager$RecentTaskInfo;->origActivity:Lccsanandroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v1}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_3
    goto :goto_2

    .line 78
    :catch_0
    move-exception v1

    .line 82
    const-string v2, "ALManager"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 85
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static unifiedDownload()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/df/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/df/IncentiveDownloadUtils;-><init>()V

    invoke-static {v0}, Lccsansan/dr/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/do/removeDownloadListener;)V

    return-void
.end method

.method private unifiedDownload(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#tryUploadAppsInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lccsansan/bw/execute;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 62
    invoke-static {}, Lccsansan/dr/getDownloadingList;->removeDownloadListener()J

    move-result-wide v1

    .line 63
    invoke-static {v0}, Lccsansan/df/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/do/unifiedDownload;

    move-result-object v0

    if-nez p1, :cond_1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lccsansan/bw/AdFormat;->getDownloadingList(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lccsansan/do/unifiedDownload;->getDownloadingList()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    .line 68
    :cond_1
    invoke-static {p2, p3, p1}, Lccsansan/dr/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_2

    .line 70
    invoke-interface {v0, p2}, Lccsansan/do/unifiedDownload;->getDownloadingList(Z)V

    :cond_2
    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    .line 73
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void
.end method


# virtual methods
.method public getDownloadingList()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadingList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lccsansan/df/getDownloadingList;->removeDownloadListener(Z)V

    return-void

    :cond_0
    nop

    .line 5
    invoke-virtual {p0, v1}, Lccsansan/df/getDownloadingList;->getDownloadingList(Z)V

    return-void
.end method

.method public getDownloadingList(Z)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/df/getDownloadingList$removeDownloadListener;

    const-string v2, "AD.ALRecord"

    invoke-direct {v1, p0, v2, p1}, Lccsansan/df/getDownloadingList$removeDownloadListener;-><init>(Lccsansan/df/getDownloadingList;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 15
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/df/getDownloadingList$addDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/dr/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3, p1}, Lccsansan/df/getDownloadingList$addDownloadListener;-><init>(Lccsansan/df/getDownloadingList;JZ)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public removeDownloadListener(Z)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->deleteDownItem()V

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "ALManager"

    if-nez v1, :cond_1

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    const-string p1, "#uploadList return not net."

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lccsansan/dr/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    const-string p1, "#uploadList return UploadDisable."

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    .line 19
    :cond_2
    iget-boolean v0, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_3

    .line 20
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    .line 25
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 27
    iput-boolean v3, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    .line 28
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    .line 31
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#uploadList: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadedList()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0}, Lccsansan/cb/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#uploadList: oldMd5: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", newMd5: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v1, v4}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    iput-boolean v3, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    .line 37
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void

    .line 41
    :cond_5
    invoke-static {}, Lccsansan/dr/getDownloadingList;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    invoke-direct {p0, p1, v0, v4}, Lccsansan/df/getDownloadingList;->unifiedDownload(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#uploadFirstAppInfoAll: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v0, v4, p1}, Lccsansan/dr/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    iput-boolean v3, p0, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils:Z

    .line 48
    invoke-direct {p0}, Lccsansan/df/getDownloadingList;->getDownloadingRecordByUrl()V

    :goto_0
    return-void
.end method
