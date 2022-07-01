.class public final Lccsancom/san/xz/base/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I


# instance fields
.field private IncentiveDownloadUtils:J

.field private final addDownloadListener:J

.field private getDownloadedRecordByUrl:J

.field private getDownloadingList:J

.field private final removeDownloadListener:J

.field private final unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lccsancom/san/xz/base/deleteDownItem;->addDownloadListener:J

    .line 3
    iput-wide p5, p0, Lccsancom/san/xz/base/deleteDownItem;->removeDownloadListener:J

    .line 4
    iput-wide p7, p0, Lccsancom/san/xz/base/deleteDownItem;->unifiedDownload:J

    .line 5
    iput-wide p3, p0, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedRecordByUrl:J

    .line 8
    invoke-direct {p0}, Lccsancom/san/xz/base/deleteDownItem;->getDownloadingList()V

    return-void
.end method

.method private getDownloadingList()V
    .locals 8

    .line 10
    sget v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x42

    or-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    .line 1
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const-wide/16 v4, 0x1f4

    packed-switch v2, :pswitch_data_0

    .line 10
    nop

    .line 1
    iget-wide v6, p0, Lccsancom/san/xz/base/deleteDownItem;->addDownloadListener:J

    cmp-long v2, v6, v4

    if-ltz v2, :cond_2

    goto :goto_2

    :pswitch_0
    iget-wide v6, p0, Lccsancom/san/xz/base/deleteDownItem;->addDownloadListener:J

    cmp-long v2, v6, v4

    if-ltz v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    const/16 v2, 0x62

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_2

    :pswitch_1
    goto :goto_7

    .line 10
    :goto_4
    :pswitch_2
    add-int/lit8 v0, v0, 0x17

    sub-int/2addr v0, v3

    or-int/lit8 v2, v0, -0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 1
    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 10
    const/16 v0, 0x341d

    goto :goto_6

    .line 1
    :pswitch_3
    const/16 v0, 0x1f4

    .line 10
    :cond_4
    :goto_6
    goto :goto_c

    .line 1
    :goto_7
    const-wide/16 v4, 0x64

    cmp-long v2, v6, v4

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_8

    :cond_5
    const/4 v2, 0x1

    :goto_8
    packed-switch v2, :pswitch_data_4

    const-wide/16 v4, 0xa

    cmp-long v2, v6, v4

    if-ltz v2, :cond_7

    goto :goto_9

    .line 10
    :pswitch_4
    and-int/lit8 v2, v0, 0x36

    or-int/lit8 v0, v0, 0x36

    add-int/2addr v2, v0

    or-int/lit8 v0, v2, -0x1

    shl-int/2addr v0, v3

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 1
    :cond_6
    const/16 v0, 0x64

    .line 10
    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    goto :goto_6

    .line 1
    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_7
    const/4 v2, 0x0

    :goto_a
    packed-switch v2, :pswitch_data_5

    const/4 v0, 0x1

    goto :goto_c

    .line 10
    :pswitch_5
    and-int/lit8 v2, v0, 0x53

    xor-int/lit8 v0, v0, 0x53

    or-int/2addr v0, v2

    or-int v4, v2, v0

    shl-int/2addr v4, v3

    xor-int/2addr v0, v2

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    .line 1
    const/4 v0, 0x0

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    :goto_b
    packed-switch v0, :pswitch_data_6

    .line 10
    const/16 v0, 0x10

    goto :goto_6

    .line 1
    :pswitch_6
    const/16 v0, 0xa

    goto :goto_6

    :goto_c
    int-to-long v4, v0

    .line 7
    div-long/2addr v6, v4

    iput-wide v6, p0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadingList:J

    .line 9
    iget-wide v4, p0, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    .line 1
    const/4 v1, 0x1

    goto :goto_d

    :cond_9
    nop

    :goto_d
    packed-switch v1, :pswitch_data_7

    .line 10
    sget v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    and-int/lit8 v1, v0, 0x1

    xor-int/lit8 v2, v1, -0x1

    or-int/2addr v0, v3

    and-int/2addr v0, v2

    shl-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    or-int v2, v0, v1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    :cond_a
    invoke-virtual {p0, v4, v5}, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils(J)V

    sget v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    :cond_b
    :pswitch_7
    sget v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final IncentiveDownloadUtils(J)V
    .locals 7

    .line 14
    sget v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0xb

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    and-int/lit8 v2, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 11
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v2

    const/16 v3, 0x37

    :try_start_0
    div-int/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    .line 14
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report progress: time elasped = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedRecordByUrl:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", bytes elapsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils:J

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProgressDamper"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    and-int/lit8 v3, v2, 0x2f

    xor-int/lit8 v2, v2, 0x2f

    or-int/2addr v2, v3

    neg-int v2, v2

    neg-int v2, v2

    and-int v4, v3, v2

    or-int/2addr v2, v3

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 11
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 13
    :cond_2
    :pswitch_1
    iput-wide p1, p0, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils:J

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedRecordByUrl:J

    sget p1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    xor-int/lit8 p2, p1, 0x55

    and-int/lit8 v2, p1, 0x55

    or-int/2addr p2, v2

    shl-int/2addr p2, v1

    and-int/lit8 v2, p1, -0x56

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x55

    or-int/2addr p1, v2

    neg-int p1, p1

    or-int v2, p2, p1

    shl-int/2addr v2, v1

    xor-int/2addr p1, p2

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 11
    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 14
    return-void

    :pswitch_2
    const/16 p1, 0x31

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

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

.method public final unifiedDownload(J)Z
    .locals 16

    move-object/from16 v1, p0

    .line 5
    sget v0, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    and-int/lit8 v2, v0, 0x16

    or-int/lit8 v0, v0, 0x16

    add-int/2addr v2, v0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    iget-wide v4, v1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedRecordByUrl:J

    sub-long/2addr v2, v4

    .line 3
    iget-wide v4, v1, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils:J

    sub-long v6, p1, v4

    const/16 v8, 0x55

    const-wide/16 v9, 0x0

    cmp-long v11, p1, v9

    if-lez v11, :cond_1

    .line 5
    const/16 v11, 0x55

    goto :goto_0

    :cond_1
    const/16 v11, 0x2c

    :goto_0
    const/16 v12, 0x3b

    const/4 v13, 0x0

    packed-switch v11, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v11, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    and-int/lit8 v14, v11, 0x43

    xor-int/lit8 v11, v11, 0x43

    or-int/2addr v11, v14

    neg-int v11, v11

    neg-int v11, v11

    xor-int v15, v14, v11

    and-int/2addr v11, v14

    shl-int/2addr v11, v0

    add-int/2addr v15, v11

    rem-int/lit16 v11, v15, 0x80

    sput v11, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_2

    .line 3
    :cond_2
    cmp-long v11, v4, v9

    if-eqz v11, :cond_3

    .line 5
    const/16 v4, 0x30

    goto :goto_2

    :cond_3
    const/16 v4, 0x32

    :goto_2
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    :goto_3
    iget-wide v4, v1, Lccsancom/san/xz/base/deleteDownItem;->addDownloadListener:J

    cmp-long v11, p1, v4

    if-eqz v11, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    packed-switch v4, :pswitch_data_2

    :cond_5
    :goto_5
    :pswitch_1
    goto/16 :goto_a

    :pswitch_2
    sget v4, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    xor-int/lit8 v5, v4, 0x75

    and-int/lit8 v11, v4, 0x75

    shl-int/2addr v11, v0

    add-int/2addr v5, v11

    rem-int/lit16 v11, v5, 0x80

    sput v11, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    :cond_6
    iget-wide v14, v1, Lccsancom/san/xz/base/deleteDownItem;->unifiedDownload:J

    cmp-long v5, v2, v14

    if-lez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const/4 v5, 0x1

    :goto_6
    packed-switch v5, :pswitch_data_3

    xor-int/lit8 v5, v4, 0x31

    and-int/lit8 v11, v4, 0x31

    shl-int/2addr v11, v0

    add-int/2addr v5, v11

    rem-int/lit16 v11, v5, 0x80

    sput v11, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_8

    :cond_8
    cmp-long v5, v6, v9

    if-gtz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    const/4 v5, 0x1

    :goto_7
    packed-switch v5, :pswitch_data_4

    :pswitch_3
    iget-wide v9, v1, Lccsancom/san/xz/base/deleteDownItem;->removeDownloadListener:J

    cmp-long v5, v2, v9

    if-lez v5, :cond_a

    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v2, 0x1

    :goto_8
    packed-switch v2, :pswitch_data_5

    :cond_b
    goto :goto_9

    :pswitch_4
    and-int/lit8 v2, v4, 0x55

    or-int/lit8 v3, v4, 0x55

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    :cond_c
    iget-wide v4, v1, Lccsancom/san/xz/base/deleteDownItem;->getDownloadingList:J

    cmp-long v2, v6, v4

    if-ltz v2, :cond_b

    and-int/lit8 v2, v3, 0x35

    or-int/lit8 v3, v3, 0x35

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    goto :goto_5

    :goto_9
    sget v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x6e

    sub-int/2addr v2, v0

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    goto :goto_c

    :goto_a
    sget v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    const/16 v3, 0x13

    and-int/lit8 v4, v2, -0x14

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    and-int/2addr v2, v3

    shl-int/2addr v2, v0

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    goto :goto_b

    :cond_d
    const/16 v8, 0x3b

    :goto_b
    packed-switch v8, :pswitch_data_6

    :pswitch_5
    const/4 v13, 0x1

    :cond_e
    :goto_c
    sget v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadedList:I

    and-int/lit8 v3, v2, 0x45

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v2, v2, 0x45

    and-int/2addr v2, v4

    shl-int/2addr v3, v0

    neg-int v3, v3

    neg-int v3, v3

    or-int v4, v2, v3

    shl-int/lit8 v0, v4, 0x1

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/deleteDownItem;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    const/4 v12, 0x7

    :cond_f
    packed-switch v12, :pswitch_data_7

    return v13

    :pswitch_6
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v13

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_e

    :goto_d
    throw v2

    :goto_e
    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3b
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x7
        :pswitch_6
    .end packed-switch
.end method
