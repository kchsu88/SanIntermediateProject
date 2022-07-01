.class public Lccsansan/ai/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Ljava/lang/String;

.field public static addDownloadListener:Ljava/lang/String;

.field public static deleteDownItem:I

.field public static getDownloadStatusByUrl:Ljava/lang/String;

.field public static final getDownloadedCount:[B

.field public static getDownloadedList:Ljava/lang/String;

.field public static getDownloadedRecordByUrl:Ljava/lang/String;

.field public static final getDownloadingCount:I

.field public static getDownloadingList:I

.field public static getDownloadingRecordByUrl:Ljava/lang/String;

.field private static pause:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static removeDownloadListener:Ljava/lang/String;

.field public static unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ai/getDownloadingList;->getDownloadedCount:[B

    const/16 v0, 0xf9

    sput v0, Lccsansan/ai/getDownloadingList;->getDownloadingCount:I

    return-void

    :array_0
    .array-data 1
        0x66t
        0x64t
        -0x5at
        -0x5ft
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

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lccsansan/ai/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    .line 2
    sput-object p1, Lccsansan/ai/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    .line 3
    sput p2, Lccsansan/ai/getDownloadingList;->getDownloadingList:I

    .line 4
    sput-object p3, Lccsansan/ai/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 5
    sput-object p4, Lccsansan/ai/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;)Z
    .locals 1

    .line 28
    sget-object v0, Lccsansan/ai/getDownloadingList;->pause:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lccsansan/ai/getDownloadingList;->pause:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getDownloadingList(Lccsanandroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/pm/ResolveInfo;

    .line 38
    iget-object p1, p1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p1, p1, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    return-object v0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 14

    .line 6
    invoke-static {p0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 9
    :try_start_0
    sget-object v0, Lccsansan/ai/getDownloadingList;->getDownloadedCount:[B

    const/16 v1, 0x18

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    sget v3, Lccsansan/ai/getDownloadingList;->getDownloadingCount:I

    and-int/lit8 v4, v3, 0xf

    int-to-byte v4, v4

    const/16 v5, 0x1a

    aget-byte v6, v0, v5

    int-to-byte v6, v6

    invoke-static {v1, v4, v6}, Lccsansan/ai/getDownloadingList;->removeDownloadListener(BSB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x4

    aget-byte v6, v0, v4

    int-to-byte v6, v6

    const/16 v7, 0x16

    aget-byte v7, v0, v7

    neg-int v7, v7

    int-to-byte v7, v7

    aget-byte v8, v0, v4

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lccsansan/ai/getDownloadingList;->removeDownloadListener(BSB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lccsansan/bw/deleteDownList;->unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_1
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x2

    :try_start_2
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v2

    aput-object v9, v11, v12

    and-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    const/4 v9, 0x7

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    invoke-static {v3, v9, v5}, Lccsansan/ai/getDownloadingList;->removeDownloadListener(BSB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x36

    aget-byte v5, v0, v5

    sub-int/2addr v5, v2

    int-to-byte v5, v5

    aget-byte v0, v0, v4

    int-to-byte v0, v0

    int-to-byte v4, v0

    invoke-static {v5, v0, v4}, Lccsansan/ai/getDownloadingList;->removeDownloadListener(BSB)Ljava/lang/String;

    move-result-object v0

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v12

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 19
    :try_start_3
    iget v12, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    .line 20
    iget-object v7, v0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23
    :cond_2
    invoke-static {p1, v6, v12, v7, v8}, Lccsansan/ai/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ai/getDownloadingList;->getDownloadingList(Lccsanandroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lccsansan/ai/getDownloadingList;->pause:Ljava/util/Set;

    .line 26
    new-instance p1, Lccsansan/bw/AdError;

    invoke-direct {p1, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string p0, "promotion_channel"

    .line 27
    invoke-virtual {p1, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsansan/ai/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    throw p1

    :cond_3
    throw p0

    .line 9
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    throw p1

    :cond_4
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 27
    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private static removeDownloadListener(BSB)Ljava/lang/String;
    .locals 5

    sget-object v0, Lccsansan/ai/getDownloadingList;->getDownloadedCount:[B

    rsub-int/lit8 p0, p0, 0x46

    add-int/lit8 p1, p1, 0xe

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    new-array v1, p1, [B

    const/4 v2, -0x1

    add-int/2addr p1, v2

    if-nez v0, :cond_0

    move-object v2, v1

    const/4 v3, -0x1

    move-object v1, v0

    move v0, p2

    move p2, p1

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    if-ne v2, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    aget-byte v3, v0, p0

    move v4, p2

    move p2, p1

    move p1, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    add-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x2

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_0
.end method
