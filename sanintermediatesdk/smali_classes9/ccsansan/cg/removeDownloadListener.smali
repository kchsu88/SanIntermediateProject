.class public Lccsansan/cg/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field public static final getDownloadingList:I


# instance fields
.field private addDownloadListener:Ljava/lang/String;

.field private final removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cg/removeDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v0, 0xf8

    sput v0, Lccsansan/cg/removeDownloadListener;->getDownloadingList:I

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x4t
        0x1ft
        -0x21t
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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/cg/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    return-void
.end method

.method private static addDownloadListener(ISI)Ljava/lang/String;
    .locals 6

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    sget-object v0, Lccsansan/cg/removeDownloadListener;->IncentiveDownloadUtils:[B

    rsub-int/lit8 p1, p1, 0x21

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p2

    aput-byte v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p0

    move v5, p1

    move p1, p0

    move p0, v3

    move-object v3, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_1
    neg-int p0, p0

    add-int/2addr v0, p0

    add-int/lit8 p0, v0, -0x2

    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p2

    move p2, p0

    move p0, p1

    move p1, v5

    goto :goto_0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    const-string v0, "com.huawei.hwid.tv"

    const-string v2, "com.huawei.hwid"

    iget-object v3, v1, Lccsansan/cg/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    const/4 v4, 0x0

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1
    if-nez v3, :cond_0

    return v4

    .line 6
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Lccsansan/cg/removeDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v8, 0x1c

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    const/16 v9, 0x9

    aget-byte v9, v7, v9

    neg-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x14

    aget-byte v11, v7, v10

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x1f

    aget-byte v9, v7, v9

    sub-int/2addr v9, v6

    int-to-byte v9, v9

    const/16 v11, 0x13

    aget-byte v11, v7, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/4 v12, 0x4

    aget-byte v13, v7, v12

    int-to-byte v13, v13

    invoke-static {v9, v11, v13}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    const/4 v8, 0x2

    :try_start_1
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v2, v9, v4

    const/4 v11, 0x6

    aget-byte v13, v7, v11

    add-int/2addr v13, v6

    int-to-byte v13, v13

    aget-byte v14, v7, v12

    int-to-byte v14, v14

    aget-byte v15, v7, v10

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aget-byte v14, v7, v12

    int-to-byte v14, v14

    const/4 v15, 0x7

    aget-byte v10, v7, v15

    neg-int v10, v10

    int-to-byte v10, v10

    aget-byte v15, v7, v12

    int-to-byte v15, v15

    invoke-static {v14, v10, v15}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v10

    new-array v14, v8, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v4

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v6

    invoke-virtual {v13, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_1

    .line 8
    :try_start_2
    iput-object v2, v1, Lccsansan/cg/removeDownloadListener;->addDownloadListener:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_1
    nop

    .line 10
    :try_start_3
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object v0, v2, v4

    aget-byte v9, v7, v11

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aget-byte v10, v7, v12

    int-to-byte v10, v10

    const/16 v13, 0x14

    aget-byte v14, v7, v13

    int-to-byte v13, v14

    invoke-static {v9, v10, v13}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v10, v7, v12

    int-to-byte v10, v10

    const/4 v13, 0x7

    aget-byte v14, v7, v13

    neg-int v13, v14

    int-to-byte v13, v13

    aget-byte v14, v7, v12

    int-to-byte v14, v14

    invoke-static {v10, v13, v14}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v10

    new-array v13, v8, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v6

    invoke-virtual {v9, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 11
    :try_start_4
    iput-object v0, v1, Lccsansan/cg/removeDownloadListener;->addDownloadListener:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_2
    const-string v0, "com.huawei.hms"

    .line 14
    :try_start_5
    iput-object v0, v1, Lccsansan/cg/removeDownloadListener;->addDownloadListener:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 15
    :try_start_6
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object v0, v2, v4

    aget-byte v0, v7, v11

    add-int/2addr v0, v6

    int-to-byte v0, v0

    aget-byte v5, v7, v12

    int-to-byte v5, v5

    const/16 v9, 0x14

    aget-byte v9, v7, v9

    int-to-byte v9, v9

    invoke-static {v0, v5, v9}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v5, v7, v12

    int-to-byte v5, v5

    const/4 v9, 0x7

    aget-byte v9, v7, v9

    neg-int v9, v9

    int-to-byte v9, v9

    aget-byte v7, v7, v12

    int-to-byte v7, v7

    invoke-static {v5, v9, v7}, Lccsansan/cg/removeDownloadListener;->addDownloadListener(ISI)Ljava/lang/String;

    move-result-object v5

    new-array v7, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_7

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    throw v2

    :cond_3
    throw v0

    .line 10
    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0

    .line 7
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    throw v2

    :cond_5
    throw v0

    .line 6
    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    throw v2

    :cond_6
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 15
    :catch_0
    move-exception v0

    :cond_7
    :goto_1
    return v4
.end method

.method public getDownloadingList(Lccsansan/ca/IncentiveDownloadUtils;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lccsansan/cg/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 21
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pps_oaid"

    invoke-static {v0, v1}, Lccsanandroid/provider/Settings$Global;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-interface {p1, v0}, Lccsansan/ca/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 29
    :cond_1
    iget-object v0, p0, Lccsansan/cg/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsansan/cg/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    new-instance v0, Lccsansan/ca/addDownloadListener;

    const-string v1, "Huawei Advertising ID not available"

    invoke-direct {v0, v1}, Lccsansan/ca/addDownloadListener;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lccsansan/ca/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/Exception;)V

    return-void

    .line 33
    :cond_2
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lccsansan/cg/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 35
    iget-object v1, p0, Lccsansan/cg/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    new-instance v2, Lccsansan/cg/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v2, p0}, Lccsansan/cg/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/cg/removeDownloadListener;)V

    invoke-static {v1, v0, p1, v2}, Lccsansan/ca/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsansan/ca/IncentiveDownloadUtils;Lccsansan/ca/removeDownloadListener$removeDownloadListener;)V

    :cond_3
    :goto_0
    return-void
.end method
