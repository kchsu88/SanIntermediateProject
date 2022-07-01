.class public Lccsansan/bw/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/deleteDownItem$addDownloadListener;,
        Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;,
        Lccsansan/bw/deleteDownItem$unifiedDownload;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/bw/deleteDownItem$unifiedDownload; = null

.field public static final getDownloadingList:I = 0x0

.field public static final removeDownloadListener:[B = null

.field private static final unifiedDownload:Ljava/lang/String; = "san.n2.e"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lccsansan/bw/deleteDownItem;->removeDownloadListener()V

    return-void
.end method

.method private static varargs IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 23
    invoke-static {p0, p1, p2}, Lccsansan/bw/deleteDownItem;->removeDownloadListener(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;
    .locals 9

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    .line 5
    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    int-to-byte v6, v5

    int-to-byte v7, v6

    int-to-byte v8, v7

    invoke-static {v6, v7, v8}, Lccsansan/bw/deleteDownItem;->unifiedDownload(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 6
    invoke-static {v1, v2, v4}, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 13
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lccsansan/bw/deleteDownItem;->unifiedDownload(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "getId"

    :try_start_2
    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lccsansan/bw/deleteDownItem;->removeDownloadListener(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "isLimitAdTrackingEnabled"

    :try_start_3
    new-array v6, v5, [Ljava/lang/Class;

    invoke-static {v2, v4, v6}, Lccsansan/bw/deleteDownItem;->removeDownloadListener(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    new-instance v4, Lccsansan/bw/deleteDownItem$unifiedDownload;

    invoke-direct {v4}, Lccsansan/bw/deleteDownItem$unifiedDownload;-><init>()V

    .line 27
    new-array v6, v5, [Ljava/lang/Object;

    .line 28
    invoke-static {p0, v1, v6}, Lccsansan/bw/deleteDownItem;->unifiedDownload(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    invoke-static {v4, v1}, Lccsansan/bw/deleteDownItem$unifiedDownload;->addDownloadListener(Lccsansan/bw/deleteDownItem$unifiedDownload;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lccsansan/bw/deleteDownItem;->unifiedDownload(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-static {v4, v3}, Lccsansan/bw/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils(Lccsansan/bw/deleteDownItem$unifiedDownload;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :cond_5
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static IncentiveDownloadUtils(Lccsansan/bw/deleteDownItem$unifiedDownload;)Lccsansan/bw/deleteDownItem$unifiedDownload;
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lccsansan/bw/deleteDownItem$unifiedDownload;->getDownloadingList(Lccsansan/bw/deleteDownItem$unifiedDownload;J)J

    .line 20
    sput-object p0, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils:Lccsansan/bw/deleteDownItem$unifiedDownload;

    return-object p0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    int-to-byte v3, v2

    int-to-byte v4, v3

    int-to-byte v5, v4

    invoke-static {v3, v4, v5}, Lccsansan/bw/deleteDownItem;->unifiedDownload(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2
    const-string v3, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v4, "isGooglePlayServicesAvailable"

    invoke-static {v3, v4, v1}, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 11
    :cond_0
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const/4 p0, 0x0

    invoke-static {p0, v1, v3}, Lccsansan/bw/deleteDownItem;->unifiedDownload(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils:Lccsansan/bw/deleteDownItem$unifiedDownload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/bw/deleteDownItem$unifiedDownload;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils:Lccsansan/bw/deleteDownItem$unifiedDownload;

    return-object p0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 10
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/bw/deleteDownItem$unifiedDownload;)Lccsansan/bw/deleteDownItem$unifiedDownload;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "getAttributionIdentifiers cannot be called on the main thread."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 18
    sget-object v0, Lccsansan/bw/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs removeDownloadListener(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 21
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lccsansan/bw/deleteDownItem$unifiedDownload;

    invoke-direct {v0}, Lccsansan/bw/deleteDownItem$unifiedDownload;-><init>()V

    :cond_0
    return-object v0
.end method

.method static removeDownloadListener()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/deleteDownItem;->removeDownloadListener:[B

    const/16 v0, 0xfb

    sput v0, Lccsansan/bw/deleteDownItem;->getDownloadingList:I

    return-void

    :array_0
    .array-data 1
        0x18t
        0x69t
        -0x4bt
        -0x59t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
    .end array-data
.end method

.method private static varargs unifiedDownload(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static unifiedDownload(SSS)Ljava/lang/String;
    .locals 7

    sget-object v0, Lccsansan/bw/deleteDownItem;->removeDownloadListener:[B

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x17

    mul-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x61

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p0, p1

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v5, p1

    move p1, p0

    move p0, v5

    int-to-byte v4, p1

    aput-byte v4, v1, v3

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p0

    move v5, p1

    move p1, p0

    move p0, v5

    move-object v6, v0

    move v0, p2

    move p2, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v6

    :goto_1
    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;
    .locals 5

    .line 1
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {v0, v1}, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;-><init>(Lccsansan/bw/deleteDownItem$getDownloadingList;)V

    .line 6
    new-instance v2, Lccsanandroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/4 v3, 0x1

    .line 8
    invoke-virtual {p0, v2, v0, v3}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :try_start_0
    new-instance v2, Lccsansan/bw/deleteDownItem$addDownloadListener;

    invoke-virtual {v0}, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload()Lccsanandroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsansan/bw/deleteDownItem$addDownloadListener;-><init>(Lccsanandroid/os/IBinder;)V

    .line 11
    new-instance v3, Lccsansan/bw/deleteDownItem$unifiedDownload;

    invoke-direct {v3}, Lccsansan/bw/deleteDownItem$unifiedDownload;-><init>()V

    .line 12
    invoke-virtual {v2}, Lccsansan/bw/deleteDownItem$addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/bw/deleteDownItem$unifiedDownload;->addDownloadListener(Lccsansan/bw/deleteDownItem$unifiedDownload;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Lccsansan/bw/deleteDownItem$addDownloadListener;->IncentiveDownloadUtils()Z

    move-result v2

    invoke-static {v3, v2}, Lccsansan/bw/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils(Lccsansan/bw/deleteDownItem$unifiedDownload;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 19
    throw v1

    :catch_0
    move-exception v2

    .line 20
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    :cond_1
    return-object v1
.end method
