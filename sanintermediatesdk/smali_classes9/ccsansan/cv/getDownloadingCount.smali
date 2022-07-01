.class public Lccsansan/cv/getDownloadingCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cv/getDownloadingCount$addDownloadListener;
    }
.end annotation


# static fields
.field private static deleteDownItem:C

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedCount:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C

.field private static final getDownloadingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static getDownloadingRecordByUrl:C

.field private static final removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/cv/resume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

.field private final addDownloadListener:Lccsansan/cv/getDownloadedList;

.field private final unifiedDownload:Lccsansan/aw/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    const/4 v1, 0x1

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    invoke-static {}, Lccsansan/cv/getDownloadingCount;->removeDownloadListener()V

    .line 1
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lccsansan/cv/getDownloadingCount;->removeDownloadListener:Ljava/util/Map;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lccsansan/cv/getDownloadingCount;->getDownloadingList:Ljava/util/HashMap;

    sget v2, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;-><init>(Lccsansan/cv/getDownloadingCount;)V

    iput-object v0, p0, Lccsansan/cv/getDownloadingCount;->unifiedDownload:Lccsansan/aw/unifiedDownload;

    .line 97
    sget-object v1, Lccsansan/cs/unifiedDownload;->PIC:Lccsansan/cs/unifiedDownload;

    invoke-static {v1}, Lccsansan/cv/unifiedDownload;->unifiedDownload(Lccsansan/cs/unifiedDownload;)Lccsansan/aw/getDownloadedRecordByUrl;

    move-result-object v1

    check-cast v1, Lccsansan/cv/getDownloadedList;

    iput-object v1, p0, Lccsansan/cv/getDownloadingCount;->addDownloadListener:Lccsansan/cv/getDownloadedList;

    .line 98
    invoke-virtual {v1, v0}, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/aw/unifiedDownload;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/cv/getDownloadingCount;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils()Ljava/util/Map;
    .locals 3

    .line 1
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/cv/getDownloadingCount;->removeDownloadListener:Ljava/util/Map;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/cv/getDownloadingCount;->removeDownloadListener:Ljava/util/Map;

    goto :goto_2

    :goto_1
    const/16 v2, 0x60

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;)Z
    .locals 7

    .line 56
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 45
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/16 v0, 0x56

    goto :goto_0

    :cond_1
    const/16 v0, 0x45

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 48
    sget-object v0, Lccsansan/cv/getDownloadingCount;->getDownloadingList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 45
    :pswitch_0
    return v1

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 53
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 56
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/16 v3, 0x16

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 53
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 54
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_4

    .line 56
    :goto_3
    nop

    .line 54
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v2, v3, v5

    if-lez v2, :cond_5

    .line 56
    sget v2, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_5
    const/4 p0, 0x1

    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/cv/getDownloadingCount;->deleteDownItem:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/cv/getDownloadingCount;->getDownloadStatusByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/cv/getDownloadingCount;->getDownloadingRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/cv/getDownloadingCount;->getDownloadedRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static removeDownloadListener()V
    .locals 1

    const v0, 0xf857

    sput-char v0, Lccsansan/cv/getDownloadingCount;->getDownloadedRecordByUrl:C

    const v0, 0xf11e

    sput-char v0, Lccsansan/cv/getDownloadingCount;->deleteDownItem:C

    const v0, 0xf57f

    sput-char v0, Lccsansan/cv/getDownloadingCount;->getDownloadStatusByUrl:C

    const v0, 0x85a1

    sput-char v0, Lccsansan/cv/getDownloadingCount;->getDownloadingRecordByUrl:C

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/cv/getDownloadingCount;)Lccsansan/aw/unifiedDownload;
    .locals 2

    .line 2
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/cv/getDownloadingCount;->unifiedDownload:Lccsansan/aw/unifiedDownload;

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload()Lccsansan/cv/getDownloadingCount;
    .locals 4

    .line 1
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x53

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/cv/getDownloadingCount$addDownloadListener;->unifiedDownload()Lccsansan/cv/getDownloadingCount;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/cv/getDownloadingCount$addDownloadListener;->unifiedDownload()Lccsansan/cv/getDownloadingCount;

    move-result-object v0

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v2, 0x20

    goto :goto_2

    :cond_1
    const/16 v2, 0x1a

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/util/List;Lccsansan/cv/getDownloadedList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/addDownloadListener;",
            ">;",
            "Lccsansan/cv/getDownloadedList;",
            "J)V"
        }
    .end annotation

    .line 43
    nop

    .line 27
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 33
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x58

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 43
    sget v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cs/addDownloadListener;

    .line 27
    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    :try_start_2
    array-length v4, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_2

    .line 43
    :catchall_0
    move-exception p1

    throw p1

    .line 26
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cs/addDownloadListener;

    .line 27
    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/cv/getDownloadingCount;->addDownloadListener(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_6

    .line 27
    sget v1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 43
    :cond_5
    goto :goto_0

    .line 32
    :cond_6
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v3, :cond_1

    .line 27
    sget v3, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    .line 33
    :try_start_5
    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/cv/deleteDownItem;->addDownloadListener(Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v4, 0xf

    :try_start_6
    div-int/2addr v4, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_8

    goto :goto_3

    .line 27
    :catchall_1
    move-exception p1

    throw p1

    .line 33
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/cv/deleteDownItem;->addDownloadListener(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_3
    goto/16 :goto_0

    .line 35
    :cond_8
    new-instance v3, Lccsansan/cv/pause;

    invoke-direct {v3, v1}, Lccsansan/cv/pause;-><init>(Lccsansan/cs/addDownloadListener;)V

    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_9

    .line 33
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    nop

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 37
    invoke-direct {p0, p2, p3, p4, v3}, Lccsansan/cv/getDownloadingCount;->unifiedDownload(Lccsansan/cv/getDownloadedList;JLccsansan/cv/pause;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 27
    sget v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    .line 39
    :pswitch_0
    :try_start_8
    invoke-virtual {p2, v3}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 43
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v0}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x15

    const-string p3, "\u0e12\uf26f\u978b\ub425\u6c14\ua48a\u8896\u5973\ud8d7\ucae1\ub74e\udc25\ucabe\u5730\u4d31\ua1ac\ucee4\u7861\ud705\udf09\u24f8\u5f86"

    invoke-static {p3, p2}, Lccsansan/cv/getDownloadingCount;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/cv/getDownloadedList;JLccsansan/cv/pause;)V
    .locals 8

    .line 44
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/cv/getDownloadingCount$getDownloadingList;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsansan/cv/getDownloadingCount$getDownloadingList;-><init>(Lccsansan/cv/getDownloadingCount;JLccsansan/cv/getDownloadedList;Lccsansan/cv/pause;)V

    iget-object p1, p0, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v7, p1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;Ljava/util/concurrent/ExecutorService;)V

    sget p1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

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

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized IncentiveDownloadUtils(Lccsansan/cs/addDownloadListener;Lccsansan/cv/resume;J)V
    .locals 1

    monitor-enter p0

    .line 5
    nop

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0, p2, p3, p4}, Lccsansan/cv/getDownloadingCount;->getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;J)V

    sget p1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    monitor-exit p0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/addDownloadListener;",
            ">;",
            "Lccsansan/cv/resume;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, v1, v2}, Lccsansan/cv/getDownloadingCount;->getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;J)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v1, v2}, Lccsansan/cv/getDownloadingCount;->getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    .line 6
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/addDownloadListener;",
            ">;",
            "Lccsansan/cv/resume;",
            "J)V"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 18
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 25
    :catchall_0
    move-exception p1

    :goto_1
    :try_start_2
    throw p1

    .line 0
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto/16 :goto_6

    .line 7
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    sget p1, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_b

    goto/16 :goto_6

    .line 13
    :cond_3
    invoke-static {}, Lccsansan/cv/getDownloadStatusByUrl;->addDownloadListener()Z

    move-result v0

    const/16 v2, 0xc

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    .line 15
    invoke-static {v2}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v3, v1, v2, p1}, Lccsansan/cv/resume;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    nop

    .line 15
    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    if-eqz p2, :cond_a

    .line 25
    :try_start_3
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {p2}, Lccsansan/cv/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v1, 0x28

    :try_start_4
    div-int/2addr v1, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_6

    const/16 v2, 0x10

    :cond_6
    packed-switch v2, :pswitch_data_2

    goto :goto_4

    .line 25
    :catchall_1
    move-exception p1

    goto :goto_1

    .line 18
    :cond_7
    :try_start_5
    invoke-interface {p2}, Lccsansan/cv/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    :goto_4
    sget v0, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 19
    :cond_8
    invoke-interface {p2}, Lccsansan/cv/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_statistic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    const/16 v0, 0xa

    goto :goto_5

    :cond_9
    const/16 v0, 0x35

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 19
    sget-object v0, Lccsansan/cv/getDownloadingCount;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {p2}, Lccsansan/cv/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    :pswitch_1
    sget-object v0, Lccsansan/cv/getDownloadingCount;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {p2}, Lccsansan/cv/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_a
    :pswitch_2
    iget-object p2, p0, Lccsansan/cv/getDownloadingCount;->addDownloadListener:Lccsansan/cv/getDownloadedList;

    invoke-direct {p0, p1, p2, p3, p4}, Lccsansan/cv/getDownloadingCount;->unifiedDownload(Ljava/util/List;Lccsansan/cv/getDownloadedList;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :cond_b
    :goto_6
    if-eqz p2, :cond_c

    .line 18
    const/4 p1, 0x0

    goto :goto_7

    :cond_c
    const/4 p1, 0x1

    :goto_7
    packed-switch p1, :pswitch_data_4

    .line 25
    :try_start_6
    sget p1, Lccsansan/cv/getDownloadingCount;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/cv/getDownloadingCount;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_d

    invoke-static {v2}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, v1, v3, p1}, Lccsansan/cv/resume;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;ILjava/lang/String;)V

    goto :goto_8

    .line 24
    :cond_d
    nop

    .line 25
    invoke-static {v3}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v3, v1, v3, p1}, Lccsansan/cv/resume;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_8
    :pswitch_3
    monitor-exit p0

    return-void

    .line 6
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
