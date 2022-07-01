.class final Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bl/addDownloadListener;->getDownloadStatusByUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field public static final addDownloadListener:[B

.field public static final removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:[B

    const/16 v0, 0x5e

    sput v0, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0x74t
        0x77t
        0x37t
        -0x5ct
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
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static getDownloadingList(ISI)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x61

    add-int/lit8 p0, p0, 0x4

    sget-object v0, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:[B

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x17

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p1, p0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

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

    move p0, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_1
    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p1

    move p1, p0

    move p0, v5

    goto :goto_0
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 12

    .line 1
    const-string v0, "BasicSdkProxy"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    .line 5
    const/4 v4, 0x0

    :try_start_0
    const-class v5, Lccsanandroid/webkit/WebSettings;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:[B

    const/16 v9, 0x8

    aget-byte v8, v8, v9

    const/4 v9, 0x1

    add-int/2addr v8, v9

    int-to-byte v8, v8

    add-int/lit8 v10, v8, 0x1

    int-to-byte v10, v10

    int-to-byte v11, v10

    invoke-static {v8, v10, v11}, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    const-class v8, Lccsanandroid/webkit/WebView;

    aput-object v8, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 6
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 7
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/webkit/WebSettings;

    invoke-virtual {v6}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v3}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 17
    :try_start_1
    new-instance v5, Lccsanandroid/webkit/WebView;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v5}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    .line 19
    :try_start_2
    invoke-static {v0, v5}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :goto_0
    invoke-static {v3}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 24
    :goto_1
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    const-string v3, "ua"

    invoke-static {v3, v4}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-static {v4}, Lccsansan/bw/getErrorCode;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 28
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWebViewUA time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    .line 29
    invoke-static {v3}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 30
    throw v0
.end method
