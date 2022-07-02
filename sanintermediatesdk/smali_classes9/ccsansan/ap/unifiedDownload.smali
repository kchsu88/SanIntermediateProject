.class public Lccsansan/ap/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final addDownloadListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lccsansan/cs/unifiedDownload;",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static deleteDownItem:[B

.field private static deleteDownList:[S

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedCount:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static final getDownloadingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final getDownloadingRecordByUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lccsansan/cs/unifiedDownload;",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static pause:I

.field public static final removeDownloadListener:[B

.field public static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ap/unifiedDownload;->pause:I

    invoke-static {}, Lccsansan/ap/unifiedDownload;->getDownloadingList()V

    invoke-static {}, Lccsansan/ap/unifiedDownload;->addDownloadListener()V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingList:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/ap/unifiedDownload;->addDownloadListener:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/HashMap;

    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;
    .locals 6

    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    int-to-byte v0, v0

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    neg-int v3, v2

    int-to-byte v3, v3

    :try_start_1
    invoke-static {v0, v2, v3}, Lccsansan/ap/unifiedDownload;->addDownloadListener(ISB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lccsansan/ap/unifiedDownload;->removeDownloadListener:[B

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    const/4 v5, 0x4

    aget-byte v2, v2, v5

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v3, v4, v2}, Lccsansan/ap/unifiedDownload;->addDownloadListener(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0xc

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(ISB)Ljava/lang/String;
    .locals 7

    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, 0x4

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x67

    sget-object v1, Lccsansan/ap/unifiedDownload;->removeDownloadListener:[B

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x17

    new-array v2, p0, [B

    add-int/lit8 p0, p0, -0x1

    if-nez v1, :cond_0

    const/16 v3, 0x63

    goto :goto_0

    :cond_0
    const/16 v3, 0x33

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x0

    move v6, p1

    move p1, p0

    move p0, v6

    goto :goto_4

    :goto_1
    add-int/lit8 v3, v3, 0x37

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v0, p2

    const/4 v3, 0x0

    move p2, p1

    move p1, p0

    :goto_3
    neg-int p2, p2

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    :goto_4
    int-to-byte v0, p0

    aput-byte v0, v2, v3

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 p2, v3, 0x1

    if-ne v3, p1, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte v3, v1, v0

    move v6, v3

    move v3, p2

    move p2, v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ap/unifiedDownload;->removeDownloadListener:[B

    const/16 v0, 0x4a

    sput v0, Lccsansan/ap/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x7dt
        0x43t
        -0x4et
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

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 4

    .line 4
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    sget-object v0, Lccsansan/ap/unifiedDownload;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    if-eqz v1, :cond_1

    .line 4
    const/16 v2, 0x4f

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v2, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 2
    :cond_2
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    const/16 v1, 0x46

    goto :goto_2

    :cond_3
    const/16 v1, 0x20

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/ap/unifiedDownload$getDownloadingList;

    invoke-direct {v1, p0, p1}, Lccsansan/ap/unifiedDownload$getDownloadingList;-><init>(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)V
    .locals 2

    .line 5
    nop

    .line 4
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsansan/cs/unifiedDownload;)V

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/ap/unifiedDownload$removeDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/ap/unifiedDownload$removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
    .locals 4

    .line 31
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :pswitch_1
    goto :goto_2

    .line 31
    :catchall_0
    move-exception p0

    throw p0

    .line 29
    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 31
    :goto_2
    sget v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    :cond_2
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/cs/unifiedDownload;)V
    .locals 5

    .line 39
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 39
    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 39
    :goto_1
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    :goto_2
    return-void

    .line 33
    :cond_1
    sget-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 39
    sget v3, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v3, v3, 0x7d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 39
    :catchall_0
    move-exception p0

    throw p0

    .line 35
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 39
    :goto_3
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 37
    :cond_3
    sget-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_4

    .line 35
    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 39
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :goto_5
    return-void

    :catchall_1
    move-exception p0

    throw p0

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

.method private static deleteDownItem(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 8

    .line 20
    nop

    .line 3
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :goto_1
    return-void

    .line 1
    :cond_1
    sget-object v0, Lccsansan/ap/unifiedDownload;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/xz/base/XzRecord;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 3
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 20
    sget v1, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_3

    .line 4
    :pswitch_1
    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    return-void

    .line 3
    :goto_3
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x28

    :try_start_1
    div-int/2addr v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 20
    :catchall_1
    move-exception p0

    throw p0

    .line 3
    :cond_3
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_4
    nop

    .line 7
    :cond_4
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 9
    const-string v1, "xzai"

    invoke-static {p0, v1}, Lccsansan/bz/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    const v3, -0x570ea2c1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    shr-int/2addr v5, v2

    sub-int/2addr v3, v5

    const v5, 0x365c1e2d

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    shr-int/lit8 v2, v6, 0x10

    rsub-int/lit8 v2, v2, -0x3b

    int-to-short v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, -0x58

    int-to-byte v6, v6

    invoke-static {v4}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x2a

    invoke-static {v3, v5, v2, v6, v7}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 12
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadedList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-virtual {v1, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 16
    invoke-static {p0}, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x20000000

    .line 17
    invoke-virtual {p1, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 18
    invoke-static {p0, v0, p1, v2}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 20
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v2, Lccsansan/ap/unifiedDownload$addDownloadListener;

    invoke-direct {v2, p0, v1, v0}, Lccsansan/ap/unifiedDownload$addDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/app/NotificationCompat$Builder;I)V

    invoke-virtual {p1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadedList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/widget/RemoteViews;
    .locals 9

    .line 33
    nop

    .line 2
    new-instance v0, Lccsanandroid/widget/RemoteViews;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ccsan_san_xz_notification_progress_layout"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_1

    .line 33
    sget v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    const/4 v2, 0x0

    goto :goto_1

    .line 33
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v2, v1

    :goto_1
    nop

    .line 4
    const-string v1, "san_progress_bar"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2, v6}, Lccsanandroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 5
    const-string v1, "san_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, -0x570ea2b3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    add-int/2addr v4, v3

    const v3, 0x365c1e2d

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    add-int/2addr v7, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x11

    int-to-short v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v5, v8

    int-to-byte v5, v5

    invoke-static {v6, v6}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x2a

    invoke-static {v4, v7, v3, v5, v6}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7
    sget-object v1, Lccsansan/ap/unifiedDownload$getDownloadedList;->removeDownloadListener:[I

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 18
    :pswitch_1
    const-string v1, "san_common_tip_waiting"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :pswitch_2
    nop

    .line 33
    sget p0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_2

    :cond_2
    const/16 p0, 0x45

    :goto_2
    packed-switch p0, :pswitch_data_2

    .line 19
    :pswitch_3
    const-string p0, "Caching Paused"

    goto :goto_3

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getSpeed()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsansan/bt/IncentiveDownloadUtils;->getDownloadingList(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    nop

    .line 31
    const-string v1, "san_status"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsansan/bt/IncentiveDownloadUtils;->getDownloadingList(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsansan/bt/IncentiveDownloadUtils;->getDownloadingList(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    const-string p1, "san_size"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadedRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/widget/RemoteViews;
    .locals 13

    .line 28
    nop

    .line 1
    new-instance v0, Lccsanandroid/widget/RemoteViews;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ccsan_san_xz_notification_complete_layout"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    const v3, 0x365c1e2f

    const-string v4, "san_title"

    const-string v5, ""

    const/4 v6, 0x0

    if-eq v1, v2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, -0x570ea2a6

    invoke-static {v6, v6}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v7

    sub-int/2addr v2, v7

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    sub-int v7, v3, v7

    invoke-static {v5}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v8

    rsub-int/lit8 v8, v8, -0x73

    int-to-short v8, v8

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v9

    shr-int/lit8 v9, v9, 0x16

    rsub-int/lit8 v9, v9, -0x69

    int-to-byte v9, v9

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v10

    shr-int/lit8 v10, v10, 0x16

    rsub-int/lit8 v10, v10, -0x2a

    invoke-static {v2, v7, v8, v9, v10}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, -0x570ea293

    invoke-static {v6}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v7

    sub-int/2addr v2, v7

    const v7, 0x365c1e2d

    const/4 v8, 0x0

    invoke-static {v8, v8}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v9

    cmpl-float v8, v9, v8

    add-int/2addr v8, v7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    rsub-int/lit8 v7, v7, -0x13

    int-to-short v7, v7

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v9

    rsub-int/lit8 v9, v9, -0x1a

    int-to-byte v9, v9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, -0x2a

    invoke-static {v2, v8, v7, v9, v10}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 12
    :goto_0
    sget-object v1, Lccsansan/ap/unifiedDownload;->getDownloadingList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Ljava/util/Map;)I

    move-result v2

    .line 13
    sget-object v4, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Ljava/util/Map;)I

    move-result v4

    .line 14
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v7

    invoke-static {p0, v7}, Lccsancom/san/xz/base/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)Ljava/lang/String;

    move-result-object p0

    const/16 v7, 0x5a

    if-nez v2, :cond_1

    .line 28
    const/16 v8, 0x8

    goto :goto_1

    :cond_1
    const/16 v8, 0x5a

    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    packed-switch v8, :pswitch_data_0

    .line 17
    if-nez v4, :cond_2

    goto :goto_2

    .line 14
    :pswitch_0
    nop

    .line 17
    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object p0, v2, v11

    const p0, -0x570ea27b

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr p0, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x4a

    int-to-short v3, v3

    invoke-static {v6, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v7

    cmp-long v5, v7, v9

    rsub-int/lit8 v5, v5, -0x3b

    int-to-byte v5, v5

    invoke-static {v6}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x2a

    invoke-static {p0, v4, v3, v5, v7}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 28
    goto/16 :goto_4

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 20
    const/4 v3, 0x3

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    aput-object p0, v3, v11

    aput-object p0, v3, v12

    const p0, -0x570ea224

    invoke-static {v6}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/2addr v2, p0

    const p0, 0x365c1e0e    # 3.2800049E-6f

    invoke-static {v6}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr p0, v4

    invoke-static {v5}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v7

    int-to-short v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x32

    int-to-byte v7, v7

    invoke-static {v5}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x2b

    invoke-static {v2, p0, v4, v7, v5}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 28
    :pswitch_1
    sget v3, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/2addr v3, v12

    if-nez v3, :cond_3

    .line 17
    :cond_3
    nop

    .line 20
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    aput-object p0, v3, v11

    const p0, -0x570ea252

    invoke-static {v9, v10}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    sub-int/2addr p0, v2

    const v2, 0x365c1e0d    # 3.2800046E-6f

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v4

    int-to-byte v4, v4

    sub-int/2addr v2, v4

    invoke-static {v6, v6}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x47

    int-to-short v4, v4

    invoke-static {v6, v6}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x5c

    int-to-byte v5, v5

    const v7, -0x100002a

    invoke-static {v6, v6, v6}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {p0, v2, v4, v5, v7}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 23
    :goto_4
    nop

    .line 25
    const-string v2, "san_msg"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p0}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    const-string p0, "san_notification_big_icon"

    invoke-static {p0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p0

    .line 27
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Ljava/util/Map;)Z

    move-result p1

    const-string v1, "ccsan_san_cpi_notification_xz_failure"

    if-eqz p1, :cond_5

    .line 28
    sget p1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/2addr p1, v12

    if-nez p1, :cond_4

    const/4 v11, 0x0

    :cond_4
    packed-switch v11, :pswitch_data_2

    .line 27
    goto :goto_5

    .line 28
    :pswitch_2
    const/16 p1, 0x5c

    :try_start_0
    div-int/2addr p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    const-string v1, "ccsan_san_cpi_notification_xz_success"

    .line 27
    :goto_5
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result p1

    .line 28
    invoke-virtual {v0, p0, p1}, Lccsanandroid/widget/RemoteViews;->setImageViewResource(II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)I"
        }
    .end annotation

    .line 26
    nop

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 26
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    :cond_2
    :goto_2
    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/cs/unifiedDownload;)I
    .locals 2

    .line 3
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/ap/unifiedDownload;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)I

    move-result p0

    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method private static getDownloadingList(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/ap/unifiedDownload;->getDownloadedRecordByUrl:I

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
    sget-object p4, Lccsansan/ap/unifiedDownload;->deleteDownItem:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/ap/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/ap/unifiedDownload;->deleteDownList:[S

    sget v6, Lccsansan/ap/unifiedDownload;->getDownloadStatusByUrl:I

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

    sget v2, Lccsansan/ap/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedList:I

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
    sget-object p0, Lccsansan/ap/unifiedDownload;->deleteDownItem:[B

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
    sget-object p0, Lccsansan/ap/unifiedDownload;->deleteDownList:[S

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

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x29

    sput v0, Lccsansan/ap/unifiedDownload;->getDownloadedRecordByUrl:I

    const v0, -0x365c1de9

    sput v0, Lccsansan/ap/unifiedDownload;->getDownloadedList:I

    const v0, 0x570ea2c1

    sput v0, Lccsansan/ap/unifiedDownload;->getDownloadStatusByUrl:I

    const/16 v0, 0xf7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ap/unifiedDownload;->deleteDownItem:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x20t
        -0x6ct
        -0x17t
        -0x24t
        -0x3bt
        -0x3at
        0x4ft
        -0x1at
        -0x6bt
        -0x1at
        -0x6ft
        -0x66t
        -0x25t
        -0x42t
        -0x1dt
        -0x24t
        -0x4at
        0x2at
        0x2at
        0x2ct
        -0x45t
        0x2ct
        -0x51t
        -0x48t
        0x25t
        0x4t
        -0x16t
        -0x4dt
        0x6t
        -0x29t
        0x6t
        -0x25t
        -0x2et
        0x11t
        0xet
        0x45t
        -0x68t
        -0x22t
        0x35t
        -0x63t
        -0x26t
        -0x20t
        0x6t
        0x11t
        -0x2t
        -0x11t
        0x3at
        -0x2t
        -0x7t
        0x24t
        -0x4t
        0x28t
        -0x7t
        -0x5t
        -0x9t
        -0x7t
        0x1bt
        -0x9t
        -0x38t
        0x6dt
        0x2ct
        -0x6t
        -0x8t
        0x27t
        -0x8t
        0x2bt
        0x24t
        0x1t
        -0x20t
        0x0t
        0x1et
        -0x7ct
        0x7ft
        -0x26t
        -0x3ft
        -0x79t
        -0x24t
        -0x40t
        0x13t
        0x15t
        0x3ct
        0x7et
        -0x39t
        -0x2dt
        0x7et
        0x15t
        0xdt
        -0x4bt
        -0x2dt
        0x7ft
        0x14t
        0xdt
        -0x3ct
        0xft
        0x7et
        0xft
        -0x7et
        0x7bt
        0x18t
        0x17t
        -0x34t
        -0x3ft
        -0x79t
        -0x24t
        -0x3ct
        -0x7dt
        -0x77t
        0xft
        0x18t
        0x27t
        0x5t
        0x6ft
        0x11t
        0x10t
        -0x55t
        -0x32t
        0x18t
        -0x57t
        -0x33t
        0x64t
        0x62t
        0x49t
        0xft
        -0x36t
        0x62t
        0x5dt
        0xct
        0x64t
        0x10t
        0x5dt
        0x63t
        0x5ft
        0x5dt
        0x3t
        0x5ft
        -0x50t
        -0x2ft
        0x14t
        0x5et
        0x60t
        0xft
        0x60t
        0x13t
        0xct
        0x65t
        0x68t
        -0x67t
        -0x3et
        -0x5ct
        0xft
        0x62t
        0x5at
        -0x3et
        -0x5ct
        0x10t
        0x61t
        0x1dt
        -0x3at
        0x74t
        0x67t
        0xat
        0x29t
        0x6ft
        0xct
        0x28t
        -0x1dt
        -0x1bt
        -0x54t
        0x66t
        -0x62t
        0x73t
        0x71t
        -0x29t
        -0x20t
        0x6ft
        0x1at
        0x45t
        0x23t
        0x69t
        -0x1et
        -0x23t
        0x2ft
        0x75t
        0x6ct
        0xct
        0x2et
        0x6bt
        0x23t
        0x2ft
        0x70t
        0x72t
        -0x2ct
        -0x43t
        0x2dt
        -0x1bt
        -0x28t
        0x6bt
        -0x1dt
        0x67t
        -0x28t
        -0x1et
        -0x2at
        -0x28t
        -0x7et
        -0x2at
        0x7t
        0x34t
        0x73t
        -0x27t
        -0x29t
        0x66t
        -0x29t
        0x72t
        0x6bt
        -0x20t
        -0x21t
        0x1ct
        0x45t
        0x23t
        0x66t
        -0x1bt
        -0x23t
        0x45t
        0x23t
        0x67t
        -0x1ct
        -0x15t
        0x2dt
        -0xat
        0x27t
        0x9t
        0x2et
        0x32t
        -0x7t
        0x2ft
        0x27t
        -0x9t
        -0x25t
        0x22t
        -0x7t
        0x2at
        -0x7t
        0x2et
        0x25t
        0x4t
        -0x1ft
    .end array-data
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 2

    .line 37
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p0, :cond_1

    goto :goto_1

    .line 37
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :goto_1
    return-void

    .line 1
    :cond_1
    sget-object v0, Lccsansan/ap/unifiedDownload$getDownloadedList;->removeDownloadListener:[I

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 24
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 25
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_2

    .line 26
    :pswitch_1
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 27
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 28
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_2

    .line 29
    :pswitch_2
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;)V

    .line 30
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 31
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 37
    sget p0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_2

    .line 32
    :pswitch_3
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 33
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->deleteDownItem(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_2

    .line 34
    :pswitch_4
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 35
    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;)V

    .line 36
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 37
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    sget p0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 11

    .line 20
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p0, :cond_1

    goto :goto_1

    .line 20
    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :goto_1
    return-void

    .line 1
    :cond_1
    sget-object v0, Lccsansan/ap/unifiedDownload;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/xz/base/XzRecord;

    if-nez v3, :cond_2

    .line 3
    const/16 v4, 0x9

    goto :goto_2

    :cond_2
    const/16 v4, 0x41

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 4
    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 20
    :pswitch_1
    sget v3, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 3
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 20
    :catchall_1
    move-exception p0

    throw p0

    .line 3
    :cond_3
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_3
    goto :goto_5

    :goto_4
    return-void

    .line 7
    :cond_4
    :goto_5
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 9
    const-string v2, "xzai"

    invoke-static {p0, v2}, Lccsansan/bz/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    const v3, -0x570ea2c0

    const-string v4, ""

    invoke-static {v4}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v3

    const v3, 0x365c1e2d

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v3

    invoke-static {v4}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3a

    int-to-short v3, v3

    invoke-static {v1, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    add-int/lit8 v4, v4, -0x57

    int-to-byte v4, v4

    invoke-static {v9, v10}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x2a

    invoke-static {v5, v6, v3, v4, v7}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 12
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadedList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-virtual {v2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 16
    invoke-static {p0}, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x20000000

    .line 17
    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 18
    invoke-static {p0, v0, p1, v1}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 20
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v1, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v1, p0, v0, v2}, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {p1, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsansan/cs/unifiedDownload;)I
    .locals 5

    .line 1
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/16 v3, 0x5f

    const/4 v4, -0x1

    if-nez v1, :cond_1

    const/16 v1, 0x33

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x5f

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-nez p0, :cond_2

    .line 1
    const/16 v1, 0x32

    goto :goto_1

    :cond_2
    const/16 v1, 0x46

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    :goto_2
    :pswitch_1
    add-int/2addr v0, v3

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/2addr v0, v2

    return v4

    :goto_3
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne p0, v0, :cond_3

    const p0, 0x332fbab

    return p0

    :cond_3
    return v4

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener()Ljava/util/HashMap;
    .locals 2

    .line 1
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    :goto_0
    sget-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/HashMap;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x2b

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 3

    .line 40
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 40
    :goto_1
    const/16 v0, 0x39

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/ap/unifiedDownload$deleteDownItem;

    invoke-direct {v1, p0}, Lccsansan/ap/unifiedDownload$deleteDownItem;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 12

    .line 14
    sget v0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_2

    .line 14
    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

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

    .line 1
    :cond_2
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ap/unifiedDownload;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)I

    move-result v0

    .line 3
    new-instance v3, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v4, "xzai"

    invoke-direct {v3, p0, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const v4, -0x570ea2c2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    sub-int/2addr v4, v7

    const v7, 0x365c1e2d

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v7

    const-string v7, ""

    invoke-static {v7, v7, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x3b

    int-to-short v7, v7

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    rsub-int/lit8 v9, v9, -0x58

    int-to-byte v9, v9

    invoke-static {v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    cmp-long v2, v10, v5

    rsub-int/lit8 v2, v2, -0x2a

    invoke-static {v4, v8, v7, v9, v2}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 5
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 6
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 8
    invoke-virtual {v3, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 10
    invoke-static {p0}, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    .line 11
    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 12
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object p1

    invoke-static {p1}, Lccsansan/ap/unifiedDownload;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)I

    move-result p1

    const/high16 v2, 0x8000000

    invoke-static {p0, p1, v1, v2}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v3, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v1, Lccsansan/ap/unifiedDownload$unifiedDownload;

    invoke-direct {v1, p0, v0, v3}, Lccsansan/ap/unifiedDownload$unifiedDownload;-><init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {p1, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 6

    .line 14
    nop

    .line 0
    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 14
    const/16 v1, 0x5a

    goto :goto_0

    :cond_1
    const/16 v1, 0x5c

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getPortal()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsansan/f/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_8

    goto :goto_8

    .line 11
    :pswitch_0
    invoke-static {v0}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    sget-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/16 v0, 0x4a

    goto :goto_3

    :cond_3
    const/16 v0, 0x34

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    .line 11
    :cond_4
    sget-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lccsansan/ap/unifiedDownload;->unifiedDownload(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    nop

    :goto_4
    packed-switch v2, :pswitch_data_3

    :goto_5
    goto :goto_6

    .line 12
    :pswitch_1
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object p1

    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)V

    .line 14
    sget p0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/16 p0, 0x5f

    goto :goto_7

    :cond_6
    const/16 p0, 0x2a

    goto :goto_7

    :cond_7
    :goto_6
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    :goto_7
    return-void

    :goto_8
    const/16 v5, 0x16

    goto :goto_9

    :cond_8
    const/16 v5, 0x23

    :goto_9
    packed-switch v5, :pswitch_data_4

    goto/16 :goto_1

    .line 6
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsancom/san/xz/base/XzRecord;)V
    .locals 6

    .line 25
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 25
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 9
    sget-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->ERROR:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne v1, v2, :cond_2

    .line 25
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal status : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, -0x570ea1de

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v1, v0

    const v0, 0x365c1e2d

    invoke-static {v4, v4}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x15

    int-to-short v2, v2

    invoke-static {v4, v4}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x19

    int-to-byte v3, v3

    const/4 v5, 0x0

    invoke-static {v4, v5, v5}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, -0x2a

    invoke-static {v1, v0, v2, v3, v4}, Lccsansan/ap/unifiedDownload;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :pswitch_1
    sget-object v0, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_3
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 11
    :goto_2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lccsansan/ap/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_3
    sget p0, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/ap/unifiedDownload;->pause:I

    rem-int/lit8 p0, p0, 0x2

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

.method private static unifiedDownload(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)Z"
        }
    .end annotation

    .line 32
    nop

    .line 0
    if-eqz p0, :cond_0

    .line 32
    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    sget v0, Lccsansan/ap/unifiedDownload;->pause:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ap/unifiedDownload;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_3

    :goto_2
    const/4 p0, 0x1

    :cond_3
    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method
