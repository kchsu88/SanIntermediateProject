.class public Lccsansan/br/deleteDownItem;
.super Lccsanandroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/br/deleteDownItem$getDownloadingList;
    }
.end annotation


# static fields
.field public static final addDownloadListener:I

.field private static deleteDownItem:[S

.field private static getDownloadStatusByUrl:[B

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:I

.field public static final getDownloadingList:[B

.field private static getDownloadingRecordByUrl:I

.field private static resume:I


# instance fields
.field private IncentiveDownloadUtils:Z

.field protected removeDownloadListener:Lccsanandroid/content/Context;

.field private unifiedDownload:Lccsansan/br/deleteDownItem$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/br/deleteDownItem;->resume:I

    const/4 v0, 0x1

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    invoke-static {}, Lccsansan/br/deleteDownItem;->addDownloadListener()V

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/br/deleteDownItem;->getDownloadingList:[B

    const/16 v0, 0x56

    sput v0, Lccsansan/br/deleteDownItem;->addDownloadListener:I

    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x2ft
        0x26t
        0x71t
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

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/br/deleteDownItem;->IncentiveDownloadUtils:Z

    .line 6
    invoke-direct {p0, p1}, Lccsansan/br/deleteDownItem;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/webkit/WebSettings;Lccsanandroid/content/Context;)V
    .locals 12

    .line 75
    nop

    .line 52
    invoke-virtual {p1}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/2addr v2, v5

    if-eqz v2, :cond_1

    .line 55
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :pswitch_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    sget v2, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x37

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/2addr v2, v5

    if-eqz v2, :cond_2

    .line 58
    :cond_2
    :try_start_0
    sget-object v2, Lccsansan/br/deleteDownItem;->getDownloadingList:[B

    const/16 v6, 0x1c

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x9

    aget-byte v7, v2, v7

    neg-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x14

    aget-byte v9, v2, v8

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lccsansan/br/deleteDownItem;->unifiedDownload(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x1f

    aget-byte v7, v2, v7

    sub-int/2addr v7, v4

    int-to-byte v7, v7

    const/16 v9, 0x13

    aget-byte v9, v2, v9

    neg-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x4

    aget-byte v11, v2, v10

    int-to-byte v11, v11

    invoke-static {v7, v9, v11}, Lccsansan/br/deleteDownItem;->unifiedDownload(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0x4000

    .line 75
    sget v9, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v9, v9, 0x4b

    rem-int/lit16 v11, v9, 0x80

    sput v11, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/2addr v9, v5

    if-nez v9, :cond_3

    .line 58
    :cond_3
    :try_start_2
    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    aput-object p2, v9, v3

    const/4 p2, 0x6

    aget-byte p2, v2, p2

    add-int/2addr p2, v4

    int-to-byte p2, p2

    aget-byte v7, v2, v10

    int-to-byte v7, v7

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {p2, v7, v8}, Lccsansan/br/deleteDownItem;->unifiedDownload(ISI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    aget-byte v7, v2, v10

    int-to-byte v7, v7

    const/4 v8, 0x7

    aget-byte v8, v2, v8

    neg-int v8, v8

    int-to-byte v8, v8

    aget-byte v2, v2, v10

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lccsansan/br/deleteDownItem;->unifiedDownload(ISI)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v4

    invoke-virtual {p2, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    iget-object p2, p2, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2

    .line 58
    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_1
    throw v2

    :cond_4
    throw p2

    :catchall_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_4

    goto :goto_1

    .line 64
    :catch_0
    move-exception p2

    const-string p2, "unknown"

    .line 69
    :goto_2
    const-string v2, " appVerName/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, "; osType/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string p2, "android"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p2, "; osVer/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadingRecordByUrl:I

    const v0, -0x6ff66be2

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadedList:I

    const v0, 0x6dcdd0a

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadedRecordByUrl:I

    const/16 v0, 0x73

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/br/deleteDownItem;->getDownloadStatusByUrl:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x71t
        -0xbt
        -0xdt
        0xat
        0x1t
        -0x19t
        0xbt
        0xft
        0xft
        0x43t
        -0x5dt
        0x18t
        -0xat
        0x19t
        -0x2t
        -0x9t
        0x4t
        0x3dt
        -0x45t
        0x2bt
        0x24t
        -0x14t
        -0x3et
        0x7t
        0xbt
        -0xft
        -0x7t
        0xdt
        -0x9t
        0x8t
        0x5at
        -0x5dt
        0x18t
        -0xat
        0x19t
        -0x2t
        -0x9t
        0x4t
        0x3dt
        -0x4at
        0x9t
        -0x8t
        0x9t
        0x46t
        -0x45t
        -0xft
        0x5et
        -0x4at
        -0xbt
        -0xdt
        0x9t
        0x2t
        0x11t
        0x2ct
        -0x14t
        -0x3at
        -0xbt
        0xct
        -0x1t
        0xet
        0x1t
        0x8t
        -0x1ft
        0x39t
        -0x16t
        -0xct
        0xct
        -0x4t
        0x2t
        0x8t
        0x1bt
        -0x2dt
        0x18t
        -0xat
        0x19t
        -0x2t
        -0x9t
        0x4t
        -0x6t
        -0xdt
        0xft
        -0x4t
        0xat
        0x0t
        0x16t
        0x23t
        -0x5ft
        0xdt
        0x9t
        -0xft
        0x1bt
        0x8t
        0x11t
        -0x3bt
        0x18t
        -0xat
        0x19t
        -0x2t
        -0x9t
        0x4t
        0x23t
        -0x50t
        0x1t
        -0xct
        0x3t
        -0x9t
        -0x1ct
        0x43t
        -0x40t
        -0xft
        -0x10t
        -0x9t
        0x4t
        -0x4t
        0x7t
    .end array-data
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 7

    .line 51
    nop

    .line 40
    sget v0, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    :cond_0
    iput-object p1, p0, Lccsansan/br/deleteDownItem;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    .line 6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v1, 0x64

    .line 7
    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setTextZoom(I)V

    .line 8
    sget-object v1, Lccsanandroid/webkit/WebSettings$PluginState;->ON:Lccsanandroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setPluginState(Lccsanandroid/webkit/WebSettings$PluginState;)V

    .line 9
    sget-object v1, Lccsanandroid/webkit/WebSettings$RenderPriority;->HIGH:Lccsanandroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setRenderPriority(Lccsanandroid/webkit/WebSettings$RenderPriority;)V

    .line 10
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 11
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 12
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 13
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 14
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 15
    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 16
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 40
    sget v4, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v4, v4, 0x31

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 16
    :cond_1
    nop

    .line 17
    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 18
    invoke-static {}, Lccsanandroid/webkit/CookieManager;->getInstance()Lccsanandroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lccsanandroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Lccsanandroid/webkit/WebView;Z)V

    :cond_2
    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    .line 22
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_3
    const/16 v4, 0x13

    if-lt v2, v4, :cond_4

    .line 26
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 25
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 40
    sget v5, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v5, v5, 0x65

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 26
    const/4 v5, 0x6

    goto :goto_1

    :cond_5
    const/16 v5, 0xe

    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 25
    nop

    .line 26
    invoke-static {v0}, Lccsanandroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto :goto_2

    .line 40
    :pswitch_0
    nop

    .line 26
    invoke-static {v1}, Lccsanandroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 40
    :goto_2
    sget v5, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v5, v5, 0x55

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 51
    :cond_6
    nop

    .line 26
    :cond_7
    :pswitch_1
    if-lt v2, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    .line 51
    :cond_8
    const/4 v4, 0x0

    .line 29
    :goto_3
    invoke-virtual {p1, v4}, Lccsanandroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 31
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    const-string v5, "cache"

    invoke-virtual {v4, v5, v1}, Lccsanandroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p1, v4}, Lccsanandroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-wide/32 v4, 0x1400000

    .line 34
    invoke-virtual {p1, v4, v5}, Lccsanandroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 35
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 36
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v4, -0x1

    .line 37
    invoke-virtual {p1, v4}, Lccsanandroid/webkit/WebSettings;->setCacheMode(I)V

    .line 38
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/16 v4, 0x11

    if-lt v2, v4, :cond_a

    .line 51
    sget v2, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    .line 26
    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 51
    goto :goto_5

    .line 38
    :pswitch_2
    nop

    .line 40
    :goto_5
    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_a
    :try_start_0
    const-string p1, "searchBoxJavaBridge_"

    .line 44
    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p1, "accessibility"

    .line 45
    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p1, "accessibilityTraversal"

    .line 46
    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 50
    :goto_6
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_b

    .line 51
    invoke-static {}, Lccsanandroid/webkit/WebView;->enableSlowWholeDocumentDraw()V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/br/deleteDownItem;->getDownloadingRecordByUrl:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsansan/br/deleteDownItem;->getDownloadStatusByUrl:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/br/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/br/deleteDownItem;->deleteDownItem:[S

    sget v6, Lccsansan/br/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsansan/br/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/br/deleteDownItem;->getDownloadedList:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsansan/br/deleteDownItem;->getDownloadStatusByUrl:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsansan/br/deleteDownItem;->deleteDownItem:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static unifiedDownload(ISI)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    sget-object v0, Lccsansan/br/deleteDownItem;->getDownloadingList:[B

    add-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p1, p1, 0x21

    new-array v1, p1, [B

    const/4 v2, -0x1

    add-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p2, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 p2, p2, 0x23

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 p2, p2, 0x2

    move p2, p1

    move v5, p2

    move p1, p0

    goto :goto_3

    :goto_1
    add-int/2addr v2, v4

    int-to-byte v5, p2

    aput-byte v5, v1, v2

    if-ne v2, p1, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    aget-byte v5, v0, p0

    move v6, p1

    move p1, p0

    move p0, p2

    move p2, v6

    :goto_3
    neg-int v5, v5

    add-int/2addr p0, v5

    add-int/lit8 p0, p0, -0x2

    add-int/2addr p1, v4

    move v6, p2

    move p2, p0

    move p0, p1

    move p1, v6

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDownloadListener(Z)V
    .locals 5

    .line 80
    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    iput-boolean p1, p0, Lccsansan/br/deleteDownItem;->IncentiveDownloadUtils:Z

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_3

    :goto_1
    goto :goto_3

    :pswitch_0
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    sget p1, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 76
    :cond_2
    nop

    .line 78
    invoke-virtual {p0, v1, v4}, Lccsanandroid/webkit/WebView;->setLayerType(ILccsanandroid/graphics/Paint;)V

    goto :goto_4

    :cond_3
    :pswitch_1
    nop

    .line 80
    invoke-virtual {p0, v3, v4}, Lccsanandroid/webkit/WebView;->setLayerType(ILccsanandroid/graphics/Paint;)V

    :goto_4
    sget p1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/2addr p1, v1

    return-void

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

.method public getCurUrl()Ljava/lang/String;
    .locals 5

    .line 8
    nop

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->copyBackForwardList()Lccsanandroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lccsanandroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    const/16 v3, 0x26

    if-gez v2, :cond_0

    .line 8
    const/16 v4, 0x1e

    goto :goto_0

    :cond_0
    const/16 v4, 0x26

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 7
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebBackForwardList;->getItemAtIndex(I)Lccsanandroid/webkit/WebHistoryItem;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 8
    sget v1, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "data:text/html"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_3

    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v2, v0, 0x13

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :cond_1
    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x58

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v1

    :goto_3
    const/16 v0, 0x24

    :try_start_2
    div-int/lit8 v0, v0, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/app/Activity;)V
    .locals 3

    .line 3
    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onPause()V

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onPause()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 3
    :goto_2
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    :goto_3
    nop

    .line 1
    sget p1, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 3
    return-void

    .line 1
    :pswitch_1
    :try_start_1
    div-int/2addr v2, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

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

.method public getRealCurUrl()Ljava/lang/String;
    .locals 3

    .line 5
    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->copyBackForwardList()Lccsanandroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lccsanandroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-gez v1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown: index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebBackForwardList;->getItemAtIndex(I)Lccsanandroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget v1, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    :goto_1
    :pswitch_0
    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 5
    sget v0, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lccsansan/br/deleteDownItem;->IncentiveDownloadUtils:Z

    if-nez v1, :cond_1

    .line 5
    const/16 v1, 0x4c

    goto :goto_0

    :cond_1
    const/16 v1, 0x58

    :goto_0
    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_3

    .line 2
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 5
    :goto_3
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebView;->onMeasure(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    .line 3
    nop

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebView;->onOverScrolled(IIZZ)V

    .line 2
    iget-object p1, p0, Lccsansan/br/deleteDownItem;->unifiedDownload:Lccsansan/br/deleteDownItem$getDownloadingList;

    if-eqz p1, :cond_0

    .line 3
    const/16 p3, 0x41

    goto :goto_0

    :cond_0
    const/16 p3, 0x48

    :goto_0
    packed-switch p3, :pswitch_data_0

    sget p3, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 p3, p3, 0x59

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 p3, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    const/4 p3, 0x0

    :try_start_0
    array-length p3, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_1
    if-nez p2, :cond_2

    .line 3
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    packed-switch p2, :pswitch_data_1

    :cond_3
    goto :goto_3

    .line 2
    :goto_2
    :pswitch_0
    if-eqz p4, :cond_4

    .line 3
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    goto :goto_4

    .line 2
    :cond_4
    :goto_3
    nop

    .line 3
    :goto_4
    invoke-interface {p1, p0, v1}, Lccsansan/br/deleteDownItem$getDownloadingList;->getDownloadingList(Lccsansan/br/deleteDownItem;Z)V

    :pswitch_1
    sget p1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    :goto_0
    sget p1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setOnOverScrollListener(Lccsansan/br/deleteDownItem$getDownloadingList;)V
    .locals 2
    .param p1, "listener"    # Lccsansan/br/deleteDownItem$getDownloadingList;

    .line 1
    .end local p1    # "listener":Lccsansan/br/deleteDownItem$getDownloadingList;
    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/br/deleteDownItem;->unifiedDownload:Lccsansan/br/deleteDownItem$getDownloadingList;

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x34

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public setOverScrollMode(I)V
    .locals 8
    .param p1, "mode"    # I

    .line 5
    .end local p1    # "mode":I
    sget v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebView;->setOverScrollMode(I)V

    const/16 p1, 0x48

    div-int/2addr p1, v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    goto/16 :goto_3

    .line 1
    :catchall_0
    move-exception p1

    .line 3
    const-string v0, "HybridWebView"

    const-string v2, "setOverScrollMode"

    invoke-static {v0, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v2, "android.content.pm.PackageManager$NameNotFoundException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "java.lang.RuntimeException: Cannot load WebView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 5
    :pswitch_1
    const v2, -0x6dcdd0a

    invoke-static {v1}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v4, v2

    const v2, 0x6ff66c43

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    int-to-short v2, v2

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    int-to-byte v6, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/lit8 v7, v7, -0x3

    invoke-static {v4, v5, v2, v6, v7}, Lccsansan/br/deleteDownItem;->unifiedDownload(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1
    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 5
    const-string v1, "android.webkit.WebViewFactory$MissingWebViewPackageException: Failed to find donor package: com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1
    sget p1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 5
    :cond_4
    throw p1

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "ua"    # Ljava/lang/String;

    .line 9
    const-string v0, "Hybrid"

    .end local p1    # "ua":Ljava/lang/String;
    sget v1, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/deleteDownItem;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 2
    :goto_1
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsansan/br/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/webkit/WebSettings;Lccsanandroid/content/Context;)V

    .line 4
    :goto_2
    nop

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webview ua is : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set ua error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget p1, Lccsansan/br/deleteDownItem;->resume:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/deleteDownItem;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
