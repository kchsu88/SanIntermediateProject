.class public Lccsansan/dj/removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# static fields
.field private static addDownloadListener:Lccsansan/dn/IncentiveDownloadUtils;

.field private static deleteDownList:C

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedList:C

.field private static getDownloadingCount:I

.field private static pause:I

.field private static resume:C


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

.field private final deleteDownItem:Ljava/lang/Object;

.field private getDownloadedRecordByUrl:I

.field private getDownloadingList:I

.field private getDownloadingRecordByUrl:I

.field private removeDownloadListener:Ljava/util/concurrent/CountDownLatch;

.field private unifiedDownload:Lccsansan/dj/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dj/removeDownloadListener;->pause:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    invoke-static {}, Lccsansan/dj/removeDownloadListener;->unifiedDownload()V

    sget v0, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(ILccsansan/aw/IncentiveDownloadUtils;Lccsansan/dj/getDownloadingList;Ljava/util/concurrent/CountDownLatch;II)V
    .locals 1

    .line 1
    const-string v0, "multipart"

    invoke-direct {p0, v0}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    .line 2
    const/16 v0, 0x7530

    iput v0, p0, Lccsansan/dj/removeDownloadListener;->getDownloadedRecordByUrl:I

    .line 3
    iput v0, p0, Lccsansan/dj/removeDownloadListener;->getDownloadingRecordByUrl:I

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/dj/removeDownloadListener;->deleteDownItem:Ljava/lang/Object;

    .line 80
    iput p1, p0, Lccsansan/dj/removeDownloadListener;->getDownloadingList:I

    .line 81
    iput-object p3, p0, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    .line 82
    iput-object p4, p0, Lccsansan/dj/removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/CountDownLatch;

    .line 83
    iput-object p2, p0, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    .line 84
    iput p5, p0, Lccsansan/dj/removeDownloadListener;->getDownloadedRecordByUrl:I

    .line 85
    iput p6, p0, Lccsansan/dj/removeDownloadListener;->getDownloadingRecordByUrl:I

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsansan/dj/removeDownloadListener;->resume:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dj/removeDownloadListener;->deleteDownList:C

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

    sget-char v11, Lccsansan/dj/removeDownloadListener;->getDownloadStatusByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dj/removeDownloadListener;->getDownloadedList:C

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

.method static synthetic addDownloadListener(Lccsansan/dj/removeDownloadListener;)Lccsansan/aw/IncentiveDownloadUtils;
    .locals 3

    .line 1
    sget v0, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

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

.method private addDownloadListener()Lccsansan/cv/IncentiveDownloadUtils;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 6
    nop

    .line 2
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Lccsansan/cv/IncentiveDownloadUtils;

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v5, v4, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v4}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v9

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v11

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v13

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZJJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget v4, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v4, v4, 0x6b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2
    :catch_0
    move-exception v0

    .line 4
    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    .line 6
    new-instance v0, Lccsansan/cv/IncentiveDownloadUtils;

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v10, v4, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v4}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v11

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v14

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v16

    iget-object v4, v1, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    iget-object v4, v4, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v18

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZJJJ)V

    sget v4, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v4, v4, 0xb

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dj/removeDownloadListener;->pause:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :cond_1
    :goto_0
    sget v4, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v4, v4, 0x27

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dj/removeDownloadListener;->pause:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-object v0

    :goto_2
    const/16 v2, 0x5a

    :try_start_1
    div-int/2addr v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_3
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()Lccsansan/dn/IncentiveDownloadUtils;
    .locals 4

    .line 2
    sget-object v0, Lccsansan/dj/removeDownloadListener;->addDownloadListener:Lccsansan/dn/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lccsansan/dj/removeDownloadListener;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lccsansan/dj/removeDownloadListener;->addDownloadListener:Lccsansan/dn/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lccsansan/dn/addDownloadListener;

    iget v2, p0, Lccsansan/dj/removeDownloadListener;->getDownloadedRecordByUrl:I

    iget v3, p0, Lccsansan/dj/removeDownloadListener;->getDownloadingRecordByUrl:I

    invoke-direct {v1, v2, v3}, Lccsansan/dn/addDownloadListener;-><init>(II)V

    sput-object v1, Lccsansan/dj/removeDownloadListener;->addDownloadListener:Lccsansan/dn/IncentiveDownloadUtils;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/dj/removeDownloadListener;->addDownloadListener:Lccsansan/dn/IncentiveDownloadUtils;

    return-object v0
.end method

.method static synthetic removeDownloadListener(Lccsansan/dj/removeDownloadListener;)I
    .locals 2

    .line 1
    sget v0, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget p0, p0, Lccsansan/dj/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dj/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/16 v1, 0x59

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/dj/removeDownloadListener;)Lccsansan/dj/getDownloadingList;
    .locals 2

    .line 1
    sget v0, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/dj/removeDownloadListener;->unifiedDownload:Lccsansan/dj/getDownloadingList;

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dj/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static unifiedDownload()V
    .locals 1

    const v0, 0x952e

    sput-char v0, Lccsansan/dj/removeDownloadListener;->getDownloadedList:C

    const v0, 0xdc8d

    sput-char v0, Lccsansan/dj/removeDownloadListener;->resume:C

    const/16 v0, 0x9b2

    sput-char v0, Lccsansan/dj/removeDownloadListener;->deleteDownList:C

    const/16 v0, 0x4dfe

    sput-char v0, Lccsansan/dj/removeDownloadListener;->getDownloadStatusByUrl:C

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    sget v0, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public run()V
    .locals 7

    .line 46
    nop

    .line 1
    const/16 v0, 0x17

    :try_start_0
    invoke-direct {p0}, Lccsansan/dj/removeDownloadListener;->addDownloadListener()Lccsansan/cv/IncentiveDownloadUtils;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ufc7c\u6977\u5817\uc2e3\u39c8\u5fd5\u1c8e\u9fcf\u5dab\uce97\u95f8\uaca1\ueeb1\u46a2\u04c0\u6729"

    const-string v4, ""

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xf

    invoke-static {v3, v4}, Lccsansan/dj/removeDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    invoke-virtual {v3}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    .line 3
    :try_start_1
    invoke-direct {p0}, Lccsansan/dj/removeDownloadListener;->getDownloadingList()Lccsansan/dn/IncentiveDownloadUtils;

    move-result-object v4

    iget-object v5, p0, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    new-instance v6, Lccsansan/dj/removeDownloadListener$getDownloadingList;

    invoke-direct {v6, p0}, Lccsansan/dj/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/dj/removeDownloadListener;)V

    .line 4
    invoke-virtual/range {v1 .. v6}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 42
    :try_start_2
    iget-object v2, p0, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    invoke-virtual {v2, v1}, Lccsansan/aw/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/Exception;)V

    .line 43
    iget-object v2, p0, Lccsansan/dj/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/aw/IncentiveDownloadUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int/lit8 v2, v2, 0x17

    const-string v3, "\u2e5c\uce39\u4b0c\ub165\u417a\u24e6\u901c\u2fec\ubb93\u9d0a\u25ed\uad29\u6181\ucdb7\uca96\u8b15\ueb8f\ubdb0\uccd8\u6966\u4241\ud7f2\u9c95\u60b0"

    invoke-static {v3, v2}, Lccsansan/dj/removeDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 44
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :goto_0
    iget-object v1, p0, Lccsansan/dj/removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget v1, Lccsansan/dj/removeDownloadListener;->pause:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dj/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x30

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x34

    :try_start_4
    div-int/lit8 v0, v0, 0x0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :goto_2
    iget-object v1, p0, Lccsansan/dj/removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method
