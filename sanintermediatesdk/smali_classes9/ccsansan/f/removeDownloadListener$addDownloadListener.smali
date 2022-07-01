.class Lccsansan/f/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/aw/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static getDownloadingList:[C

.field private static removeDownloadListener:I


# instance fields
.field final synthetic unifiedDownload:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/removeDownloadListener$addDownloadListener;->getDownloadingList:[C

    const-wide v0, -0x555e1749d2b93db8L

    sput-wide v0, Lccsansan/f/removeDownloadListener$addDownloadListener;->addDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x43fcs
        0x7e67s
        0x38a7s
        -0x50as
        -0x4af4s
        0x7747s
        0x3191s
        -0xc24s
        -0x51ads
        0x68ads
        0x2ae2s
        -0x1ad2s
        -0x58b7s
        0x618bs
        0x23d5s
        0x2eb2s
        -0x130fs
        -0x55cfs
        0x6860s
        0x279as
        -0x1a2fs
        -0x5cf9s
        0x614as
        0x3cb6s
        -0x5d6s
        -0x4799s
        0x77bds
        0x35dds
        -0xca2s
        -0x4ebbs
        0x4c81s
        0xa3bs
        -0x3792s
        -0x7856s
        0x45ebs
        0x302s
        -0x3ea5s
    .end array-data
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unifiedDownload(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/f/removeDownloadListener$addDownloadListener;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/f/removeDownloadListener$addDownloadListener;->addDownloadListener:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;JJ)V
    .locals 15

    move-wide/from16 v9, p4

    .line 86
    sget v0, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 60
    :cond_0
    move-object/from16 v11, p1

    check-cast v11, Lccsansan/f/IncentiveDownloadUtils;

    .line 63
    invoke-virtual {v11, v9, v10}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 64
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getProgressDamper()Lccsancom/san/xz/base/deleteDownItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    new-instance v12, Lccsancom/san/xz/base/deleteDownItem;

    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x320

    move-object v0, v12

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v8}, Lccsancom/san/xz/base/deleteDownItem;-><init>(JJJJ)V

    .line 67
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0, v12}, Lccsancom/san/xz/base/XzRecord;->setProgressDamper(Lccsancom/san/xz/base/deleteDownItem;)V

    move-object v0, v12

    .line 69
    :cond_1
    invoke-virtual {v0, v9, v10}, Lccsancom/san/xz/base/deleteDownItem;->unifiedDownload(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    sget v0, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 71
    :cond_2
    invoke-virtual {v0, v9, v10}, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils(J)V

    .line 73
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lccsancom/san/xz/base/XzRecord;->setCompletedSize(J)V

    .line 74
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    sget-object v1, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    const/16 v12, 0x11

    if-eq v0, v1, :cond_4

    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    sget-object v1, Lccsancom/san/xz/base/XzRecord$Status;->PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq v0, v1, :cond_3

    .line 86
    const/16 v0, 0x1a

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 75
    :pswitch_0
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 77
    :cond_4
    :goto_1
    move-object v13, p0

    iget-object v0, v13, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;JJ)V

    .line 79
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getStoreProgressDmaper()Lccsancom/san/xz/base/deleteDownItem;

    move-result-object v0

    if-nez v0, :cond_5

    .line 81
    new-instance v14, Lccsancom/san/xz/base/deleteDownItem;

    const-wide/16 v5, 0x7d0

    const-wide/16 v7, 0x1388

    move-object v0, v14

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v8}, Lccsancom/san/xz/base/deleteDownItem;-><init>(JJJJ)V

    .line 82
    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0, v14}, Lccsancom/san/xz/base/XzRecord;->setStoreProgressDamper(Lccsancom/san/xz/base/deleteDownItem;)V

    .line 86
    move-object v0, v14

    .line 84
    :cond_5
    invoke-virtual {v0, v9, v10}, Lccsancom/san/xz/base/deleteDownItem;->unifiedDownload(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    goto :goto_2

    :cond_6
    const/16 v12, 0x36

    :goto_2
    packed-switch v12, :pswitch_data_1

    .line 85
    invoke-virtual {v0, v9, v10}, Lccsancom/san/xz/base/deleteDownItem;->IncentiveDownloadUtils(J)V

    .line 86
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v11}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;I)V
    .locals 9

    .line 152
    nop

    .line 143
    check-cast p1, Lccsansan/f/IncentiveDownloadUtils;

    .line 145
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p2, v0}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 146
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lccsancom/san/xz/base/XzRecord;->setCompleteTime(J)V

    .line 147
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 148
    iget-object p2, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    instance-of v1, p1, Lccsansan/f/getDownloadStatusByUrl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v0, v3, v1, v2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V

    const/16 p2, 0x30

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p2

    rsub-int/lit8 p2, p2, -0x1

    const v2, 0xbc40

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v2, v4

    int-to-char v2, v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, 0xf

    invoke-static {p2, v2, v4}, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v1}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-static {v0, v0, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit16 v0, v0, 0x2ed6

    int-to-char v0, v0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    add-int/lit8 v8, v8, 0x15

    invoke-static {v2, v0, v8}, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p2}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object p2

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsansan/f/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    const/16 p1, 0x3f

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    goto :goto_6

    :pswitch_1
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_3
    goto :goto_5

    .line 151
    :pswitch_2
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_3

    :goto_5
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;)V

    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_1

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;Ljava/lang/Exception;)Z
    .locals 7

    .line 142
    nop

    .line 87
    instance-of v0, p2, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 88
    check-cast p2, Lccsansan/aw/getDownloadingRecordByUrl;

    .line 89
    move-object v0, p1

    check-cast v0, Lccsansan/f/IncentiveDownloadUtils;

    .line 90
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 91
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 102
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 92
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/f/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto/16 :goto_e

    .line 98
    :pswitch_0
    invoke-virtual {p2}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result p1

    const/16 v3, 0xf

    if-ne p1, v3, :cond_4

    .line 142
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 102
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 99
    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    sget-object p2, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1, p2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 100
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 101
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    .line 102
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/f/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :pswitch_1
    goto :goto_3

    .line 99
    :pswitch_2
    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    sget-object p2, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1, p2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 100
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 101
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    .line 102
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/f/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0x4c

    :try_start_0
    div-int/2addr p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/16 p1, 0x4c

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    :goto_2
    packed-switch p1, :pswitch_data_2

    goto :goto_4

    .line 142
    :catchall_0
    move-exception p1

    throw p1

    .line 102
    :goto_3
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;)V

    :cond_3
    :goto_4
    return v2

    .line 108
    :cond_4
    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object p1

    .line 109
    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq p1, v3, :cond_7

    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq p1, v3, :cond_5

    .line 102
    const/16 v3, 0x46

    goto :goto_5

    :cond_5
    const/16 v3, 0x30

    :goto_5
    packed-switch v3, :pswitch_data_3

    goto :goto_6

    .line 109
    :pswitch_3
    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne p1, v3, :cond_6

    goto :goto_6

    .line 142
    :cond_6
    const/4 p1, 0x0

    goto :goto_7

    .line 109
    :cond_7
    :goto_6
    const/4 p1, 0x1

    .line 111
    :goto_7
    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK$1()I

    move-result v3

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_9

    if-nez p1, :cond_9

    .line 142
    sget v3, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v3

    :try_start_1
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_9

    goto :goto_8

    :catchall_1
    move-exception p1

    throw p1

    .line 111
    :cond_8
    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    const/4 v3, 0x1

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_a

    .line 113
    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    sget-object p2, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1, p2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 114
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 115
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    const-wide/16 p1, 0x7d0

    .line 116
    invoke-virtual {v0, p1, p2}, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload(J)V

    .line 142
    return v1

    .line 120
    :cond_a
    invoke-virtual {v0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v3

    if-nez p1, :cond_e

    .line 121
    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_b

    .line 123
    :cond_b
    invoke-virtual {p2}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_c

    .line 124
    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v3, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 125
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 126
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    instance-of v4, v0, Lccsansan/f/getDownloadStatusByUrl;

    invoke-static {p1, v3, v2, v4, p2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V

    .line 142
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_f

    goto :goto_c

    .line 126
    :cond_c
    if-nez p1, :cond_f

    .line 127
    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result p1

    if-nez p1, :cond_d

    .line 102
    const/16 p1, 0x51

    goto :goto_a

    :cond_d
    const/16 p1, 0x5c

    :goto_a
    packed-switch p1, :pswitch_data_4

    goto :goto_c

    .line 128
    :pswitch_4
    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->ERROR:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v3, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 129
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 130
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    instance-of v4, v0, Lccsansan/f/getDownloadStatusByUrl;

    invoke-static {p1, v3, v2, v4, p2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V

    goto :goto_c

    .line 131
    :cond_e
    :goto_b
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1, v3}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    .line 141
    :cond_f
    :goto_c
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object p1

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/f/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 142
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_10

    .line 141
    :cond_10
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 142
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_11

    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;)V

    :try_start_2
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p1

    throw p1

    :cond_11
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;)V

    :cond_12
    :goto_d
    return v2

    :goto_e
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    .line 92
    :cond_13
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 102
    const/16 p1, 0x5b

    goto :goto_f

    :cond_14
    const/16 p1, 0x36

    :goto_f
    packed-switch p1, :pswitch_data_5

    .line 93
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;)V

    :cond_15
    :pswitch_5
    nop

    .line 142
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_16

    const/16 p1, 0x48

    :try_start_3
    div-int/2addr p1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return v2

    :catchall_3
    move-exception p1

    throw p1

    :cond_16
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x51
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x36
        :pswitch_5
    .end packed-switch
.end method

.method public getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z
    .locals 7

    .line 59
    nop

    .line 1
    check-cast p1, Lccsansan/f/IncentiveDownloadUtils;

    .line 2
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    .line 3
    instance-of v1, p1, Lccsansan/f/getDownloadStatusByUrl;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_8

    .line 4
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v5

    sget-object v6, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne v5, v6, :cond_0

    .line 59
    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    goto/16 :goto_3

    .line 8
    :pswitch_0
    invoke-static {}, Lccsansan/f/removeDownloadListener;->unifiedDownload()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 59
    sget v5, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/2addr v5, v3

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v5

    const/16 v6, 0x59

    :try_start_0
    div-int/2addr v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_1
    nop

    .line 59
    goto :goto_2

    .line 15
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_5

    .line 59
    sget v5, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x5b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 15
    :cond_3
    invoke-static {}, Lccsansan/aa/getDownloadingList;->addDownloadListener()Z

    move-result v5

    if-nez v5, :cond_5

    .line 59
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 16
    :cond_4
    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 17
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 18
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1, v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    return v4

    .line 22
    :cond_5
    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v5

    if-nez v5, :cond_8

    .line 23
    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 24
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 25
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    const/4 v3, 0x7

    const-string v5, "prepare failed!"

    invoke-direct {v2, v3, v5}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0, v4, v1, v2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V

    return v4

    .line 26
    :cond_6
    :goto_2
    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 27
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 28
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1, v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    return v4

    .line 5
    :cond_7
    :goto_3
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1, v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    .line 59
    return v4

    .line 46
    :cond_8
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->ActionTypeDetailPage()V

    .line 49
    sget-object p1, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 50
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->isReallyStart()Z

    move-result p1

    if-nez p1, :cond_d

    .line 59
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v5, p1, 0x80

    sput v5, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    const/4 p1, 0x1

    :goto_4
    packed-switch p1, :pswitch_data_1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result p1

    goto :goto_5

    .line 50
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result p1

    if-ne p1, v2, :cond_c

    goto :goto_7

    .line 59
    :goto_5
    const/16 v5, 0x9

    :try_start_1
    div-int/2addr v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v2, :cond_a

    const/16 p1, 0x41

    goto :goto_6

    :cond_a
    const/16 p1, 0x25

    :goto_6
    packed-switch p1, :pswitch_data_2

    goto :goto_8

    :goto_7
    :pswitch_2
    sget p1, Lccsansan/f/removeDownloadListener$addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_b

    .line 50
    :cond_b
    if-eqz v1, :cond_d

    .line 51
    :cond_c
    :goto_8
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->setReallyStart()V

    .line 52
    invoke-static {v0}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_9

    .line 59
    :catchall_1
    move-exception p1

    throw p1

    .line 54
    :cond_d
    :goto_9
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 56
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1, v0}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V

    .line 58
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 59
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;)V

    :cond_e
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch
.end method
