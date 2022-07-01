.class public Lccsansan/cv/getDownloadedList;
.super Lccsansan/aw/getDownloadedRecordByUrl;
.source ""

# interfaces
.implements Lccsansan/aw/addDownloadListener;


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static final getDownloadedRecordByUrl:I

.field private static getDownloadingRecordByUrl:[C

.field private static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/cv/getDownloadedList;->IncentiveDownloadUtils()V

    .line 1
    invoke-static {}, Lccsansan/cl/unifiedDownload;->resume()I

    move-result v0

    sput v0, Lccsansan/cv/getDownloadedList;->unifiedDownload:I

    .line 2
    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadedCount()I

    move-result v0

    sput v0, Lccsansan/cv/getDownloadedList;->getDownloadedRecordByUrl:I

    sget v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "sourceload"

    invoke-direct {p0, v0}, Lccsansan/aw/getDownloadedRecordByUrl;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/aw/addDownloadListener;)V

    .line 3
    new-instance v0, Lccsansan/cv/getDownloadingRecordByUrl;

    invoke-direct {v0}, Lccsansan/cv/getDownloadingRecordByUrl;-><init>()V

    invoke-virtual {p0, v0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/aw/getDownloadingList;)V

    return-void
.end method

.method static IncentiveDownloadUtils()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cv/getDownloadedList;->getDownloadingRecordByUrl:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x6es
        0x6es
        0x64s
        0x6cs
        0x74s
        0x6cs
        0x42s
        0x42s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x42s
        0x49s
        0x6bs
        0x6cs
        0x74s
        0x70s
        0x70s
        0x4as
        0x20s
        0x44s
        0x64s
        0x6as
        0x49s
        0x48s
        0x68s
        0x69s
        0x73s
        0x4as
        0x43s
        0x63s
        0x65s
        0x6as
        0x68s
        0x64s
        0x42s
        0x2ds
        0x2ds
        0x100s
        0x10es
        0x10bs
        0x10ds
        0x116s
        0x10es
        0x103s
        0xbfs
        0xd9s
        0xbfs
        0x111s
        0x10es
        0x111s
        0x111s
        0x104s
        0xbfs
        0x111s
        0x104s
        0x103s
    .end array-data
.end method

.method private IncentiveDownloadUtils(Lccsansan/cv/pause;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 59
    nop

    .line 15
    sget-object v0, Lccsansan/cs/unifiedDownload;->PIC:Lccsansan/cs/unifiedDownload;

    invoke-static {v0}, Lccsansan/cv/unifiedDownload;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Lccsansan/dj/IncentiveDownloadUtils;

    move-result-object v0

    .line 16
    new-instance v1, Lccsansan/cv/getDownloadedList$removeDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/cv/getDownloadedList$removeDownloadListener;-><init>(Lccsansan/cv/getDownloadedList;Lccsansan/cv/pause;)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lccsansan/cv/pause;->IncentiveDownloadUtils(Z)V

    .line 55
    invoke-virtual {v0, p1, v1}, Lccsansan/dj/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v3, "\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000"

    invoke-static {v1, v3, v2}, Lccsansan/cv/getDownloadedList;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/cv/pause;->removeDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SourceLoadManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lccsansan/cv/pause;->removeDownloadListener()Z

    move-result v0

    const/16 v1, 0x49

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    :cond_1
    invoke-virtual {p1}, Lccsansan/cv/pause;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsansan/cv/getDownloadedList;->getDownloadingList(Lccsansan/cv/pause;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    sget p1, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/2addr p1, v2

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x2b
        0x0
        0x0
    .end array-data
.end method

.method private getDownloadingList(Lccsansan/cv/pause;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    move-object/from16 v1, p1

    const-string v2, "_move/copy cache failed!"

    const-string v3, " is not exist!"

    const-string v4, " failed!"

    const-string v5, "rename c  ache to "

    const-string v6, "rename cache failed!"

    const-string v7, "rename or copy failed!"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    const/4 v8, 0x2

    const/4 v10, 0x1

    const-string v11, "SourceLoadManager"

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 88
    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    packed-switch v12, :pswitch_data_0

    :cond_1
    goto :goto_2

    :pswitch_0
    sget v12, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    add-int/lit8 v12, v12, 0x35

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    rem-int/2addr v12, v8

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_2

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v15

    cmp-long v0, v15, v13

    if-lez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v15

    cmp-long v0, v15, v13

    if-lez v0, :cond_3

    :goto_1
    nop

    .line 3
    const-string v0, "cache file already exists"

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3
    :goto_2
    const/16 v12, 0xc

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v13

    .line 9
    invoke-virtual {v13}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    :goto_4
    goto :goto_5

    .line 10
    :pswitch_1
    invoke-virtual {v13}, Lccsansan/da/removeDownloadListener;->resume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_4

    .line 15
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Target file name : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " cache exit : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lccsansan/dn/addDownloadListener;

    sget v14, Lccsansan/cv/getDownloadedList;->unifiedDownload:I

    sget v15, Lccsansan/cv/getDownloadedList;->getDownloadedRecordByUrl:I

    invoke-direct {v0, v14, v15}, Lccsansan/dn/addDownloadListener;-><init>(II)V

    .line 18
    new-instance v14, Lccsansan/cv/IncentiveDownloadUtils;

    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13, v10}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;Z)V

    .line 19
    invoke-virtual {v14}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 22
    const/4 v9, 0x0

    :try_start_1
    new-instance v10, Lccsansan/cv/getDownloadedList$addDownloadListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v15, p0

    :try_start_2
    invoke-direct {v10, v15, v1}, Lccsansan/cv/getDownloadedList$addDownloadListener;-><init>(Lccsansan/cv/getDownloadedList;Lccsansan/cv/pause;)V

    invoke-virtual {v14, v0, v9, v10}, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    invoke-virtual {v14}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {v13, v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 53
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v13, v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    sget v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_5

    goto :goto_6

    .line 56
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_5
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    .line 62
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-direct {v0, v12, v7, v7}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_7
    nop

    .line 88
    sget v0, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    rem-int/2addr v0, v8

    if-eqz v0, :cond_8

    const/16 v16, 0x1

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    :goto_8
    packed-switch v16, :pswitch_data_2

    goto :goto_9

    :pswitch_2
    return-void

    :goto_9
    :try_start_4
    array-length v0, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 64
    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    :goto_a
    move-object v8, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    .line 65
    :goto_b
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x4

    new-array v12, v12, [I

    const/16 v18, 0x2b

    const/16 v17, 0x0

    aput v18, v12, v17

    const/16 v17, 0x13

    const/16 v16, 0x1

    aput v17, v12, v16

    const/16 v17, 0x9f

    aput v17, v12, v8

    const/4 v8, 0x3

    const/16 v17, 0x7

    aput v17, v12, v8

    const/4 v8, 0x1

    invoke-static {v12, v9, v8}, Lccsansan/cv/getDownloadedList;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    :goto_c
    invoke-virtual {v14}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 69
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v13, v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 73
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v13, v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 88
    goto :goto_d

    .line 76
    :catch_3
    move-exception v0

    .line 78
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_9
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_a

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lccsansan/cv/pause;->getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v7, v7}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    throw v8

    :catch_4
    move-exception v0

    move-object/from16 v15, p0

    .line 88
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string v1, "create cache file failed!"

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/cv/pause;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 69
    sget p0, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {p1, p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rename cache to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SourceLoadManager"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-static {p1, p2}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    sget p0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsansan/cv/getDownloadedList;->getDownloadingRecordByUrl:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    sget v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    const/16 v1, 0xb

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lccsansan/cv/pause;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    goto :goto_3

    :pswitch_0
    instance-of v0, p1, Lccsansan/cv/pause;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    goto :goto_1

    :cond_1
    const/16 v0, 0x54

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_6

    :goto_3
    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 7
    :pswitch_1
    check-cast p1, Lccsansan/cv/pause;

    .line 9
    invoke-virtual {p1}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1
    sget v0, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lccsansan/cv/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/cv/pause;)V

    .line 1
    sget p1, Lccsansan/cv/getDownloadedList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_5

    .line 12
    :cond_4
    invoke-direct {p0, p1}, Lccsansan/cv/getDownloadedList;->getDownloadingList(Lccsansan/cv/pause;)V

    :goto_5
    return-void

    :goto_6
    nop

    .line 13
    const-string p1, "SourceLoadManager"

    const-string v0, "_task is not SourceTask return "

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string v0, "task is not SourceTask for source xz!"

    invoke-direct {p1, v2, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
