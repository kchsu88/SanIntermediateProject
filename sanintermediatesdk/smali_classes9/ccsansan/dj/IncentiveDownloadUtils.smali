.class public Lccsansan/dj/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static deleteDownList:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedCount:[B

.field private static getDownloadedList:I

.field private static getDownloadingCount:I

.field private static pause:[S

.field private static resume:I


# instance fields
.field private final IncentiveDownloadUtils:I

.field addDownloadListener:Ljava/util/concurrent/ExecutorService;

.field private final deleteDownItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dj/getDownloadingList;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedRecordByUrl:I

.field getDownloadingList:Ljava/util/concurrent/CountDownLatch;

.field private final getDownloadingRecordByUrl:Lccsansan/cs/unifiedDownload;

.field private final removeDownloadListener:J

.field private final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    const/16 v0, 0x31

    sput v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const v0, -0x56772245

    sput v0, Lccsansan/dj/IncentiveDownloadUtils;->resume:I

    const v0, 0x2db4fb8b

    sput v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedList:I

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedCount:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        0x39t
        -0x38t
        0x35t
        0x3ct
        -0x3dt
        -0x40t
        -0x32t
        0x3dt
        0x3et
        -0x3dt
        0x3ct
        -0x3dt
        0x3dt
        0x7ft
        0x79t
        -0x7dt
        -0x78t
        0x7bt
        -0x3at
        0x3ct
        -0x7dt
        0x72t
        -0x7dt
        0x7et
        0x77t
        -0x78t
        -0x75t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lccsansan/cs/unifiedDownload;JIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownItem:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsansan/cs/unifiedDownload;

    .line 9
    iput-wide p2, p0, Lccsansan/dj/IncentiveDownloadUtils;->removeDownloadListener:J

    .line 10
    iput p4, p0, Lccsansan/dj/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 11
    iput p5, p0, Lccsansan/dj/IncentiveDownloadUtils;->unifiedDownload:I

    .line 12
    iput p6, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 13
    invoke-static {p7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dj/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private addDownloadListener(JILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 96
    sget v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v1, v0, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    int-to-long v1, p3

    .line 65
    div-long v1, p1, v1

    long-to-int v2, v1

    long-to-double v3, p1

    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    const-wide/32 v5, 0x800000

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    const-wide/32 v5, 0x10000

    div-long/2addr v3, v5

    mul-long v5, v5, v3

    :goto_0
    long-to-int v1, v5

    const/4 v3, 0x1

    if-gt v1, v2, :cond_3

    .line 96
    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 71
    :pswitch_0
    goto :goto_3

    .line 96
    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_3
    move v1, v2

    goto :goto_4

    .line 96
    :catchall_0
    move-exception p1

    throw p1

    .line 79
    :cond_3
    :goto_4
    new-instance v0, Lccsansan/cs/removeDownloadListener;

    add-int/lit8 v4, v1, -0x1

    int-to-long v7, v4

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lccsansan/cs/removeDownloadListener;-><init>(JJJ)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v2, :cond_4

    .line 96
    const/16 v0, 0x3c

    goto :goto_5

    :cond_4
    const/16 v0, 0x61

    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 79
    int-to-long v4, v1

    sub-long v4, p1, v4

    .line 82
    iget-wide v6, p0, Lccsansan/dj/IncentiveDownloadUtils;->removeDownloadListener:J

    div-long v6, v4, v6

    long-to-int p3, v6

    iget v0, p0, Lccsansan/dj/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    sub-int/2addr v0, v3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-long v6, p3

    .line 83
    div-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr p3, v3

    :pswitch_1
    nop

    :goto_6
    if-ge v3, p3, :cond_7

    .line 96
    sget v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 83
    :cond_5
    add-int/lit8 v0, v3, -0x1

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    int-to-long v5, v0

    int-to-long v7, v2

    add-long/2addr v7, v5

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p3, :cond_6

    sub-long v7, p1, v9

    .line 95
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " end : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "bytes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MultiPartExecutor"

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lccsansan/cs/removeDownloadListener;

    const-wide/16 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lccsansan/cs/removeDownloadListener;-><init>(JJJ)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;J)V
    .locals 6

    .line 50
    nop

    .line 0
    const/4 v0, 0x0

    .line 44
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object p1

    const-string v2, "rwd"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    .line 50
    const/16 p1, 0x5f

    goto :goto_0

    :cond_0
    const/16 p1, 0x35

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 45
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v3, p2

    if-nez p1, :cond_2

    .line 50
    sget p1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 45
    :goto_2
    const/4 v0, 0x1

    :cond_2
    :try_start_2
    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 46
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 50
    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    .line 46
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_3
    const-string p2, "MultiPartExecutor"

    const-string p3, "open temp file failed!"

    .line 48
    invoke-static {p2, p3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    sget p1, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    :cond_3
    move-object v1, v0

    :goto_4
    invoke-static {v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    :goto_5
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
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
    sget v2, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

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
    sget-object p4, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedCount:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/dj/IncentiveDownloadUtils;->pause:[S

    sget v6, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedList:I

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

    sget v2, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/dj/IncentiveDownloadUtils;->resume:I

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
    sget-object p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedCount:[B

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
    sget-object p0, Lccsansan/dj/IncentiveDownloadUtils;->pause:[S

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

.method private getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/aw/IncentiveDownloadUtils;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 12
    nop

    .line 11
    sget v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 11
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 12
    sget v2, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v2

    const/16 v4, 0x5f

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_3
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3
    :goto_2
    :pswitch_0
    invoke-direct {p0, p1}, Lccsansan/dj/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)J

    move-result-wide v4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multi task is not exist, split the file length!, length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiPartExecutor"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 12
    sget v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 8
    invoke-direct {p0, p1, v4, v5}, Lccsansan/dj/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;J)V

    .line 9
    invoke-virtual {p0, v4, v5}, Lccsansan/dj/IncentiveDownloadUtils;->unifiedDownload(J)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;)V

    const/16 p1, 0x25

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 12
    :catchall_1
    move-exception p1

    throw p1

    .line 8
    :cond_4
    invoke-direct {p0, p1, v4, v5}, Lccsansan/dj/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;J)V

    .line 9
    invoke-virtual {p0, v4, v5}, Lccsansan/dj/IncentiveDownloadUtils;->unifiedDownload(J)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;)V

    .line 12
    :cond_5
    :goto_3
    goto :goto_4

    :cond_6
    new-instance p1, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string v0, "can not get content length!"

    invoke-direct {p1, v1, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw p1

    .line 11
    :cond_7
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(JILjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p3

    .line 21
    sget v1, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 0
    const/4 v1, 0x1

    goto :goto_1

    .line 21
    :pswitch_0
    const/4 v1, 0x0

    .line 0
    :goto_1
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_1

    .line 21
    const/16 v2, 0x33

    goto :goto_2

    :cond_1
    const/16 v2, 0xf

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 0
    add-int/lit8 v2, v1, -0x1

    int-to-long v2, v2

    .line 13
    move-object v4, p0

    iget-wide v5, v4, Lccsansan/dj/IncentiveDownloadUtils;->removeDownloadListener:J

    mul-long v8, v2, v5

    add-long/2addr v5, v8

    const-wide/16 v2, 0x1

    sub-long/2addr v5, v2

    if-ne v1, v0, :cond_3

    goto :goto_5

    .line 21
    :pswitch_1
    sget v0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x2c

    goto :goto_3

    :cond_2
    const/16 v0, 0x1f

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return-void

    :goto_4
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 13
    :goto_5
    sub-long v2, p1, v2

    .line 21
    move-wide v10, v2

    goto :goto_6

    .line 13
    :cond_3
    move-wide v10, v5

    .line 20
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiPartExecutor"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v2, Lccsansan/cs/removeDownloadListener;

    const-wide/16 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lccsansan/cs/removeDownloadListener;-><init>(JJJ)V

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_2
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)J
    .locals 10

    .line 43
    sget v0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const v0, -0x2db4fb8c

    const-string v1, ""

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    sub-int/2addr v0, v4

    const v4, 0x567722b1

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    invoke-static {v3}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x35

    int-to-byte v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, -0x23

    invoke-static {v0, v4, v1, v2, v5}, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 37
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3a98

    const/16 v9, 0x3a98

    invoke-static/range {v4 .. v9}, Lccsansan/bw/getAdFormat;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;II)Lccsansan/x/addDownloadListener;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lccsansan/x/addDownloadListener;->getDownloadingList()Ljava/util/Map;

    move-result-object p1

    const-string v2, "content-length"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 39
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 43
    sget v4, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v4, v4, 0x2f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 39
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    goto :goto_3

    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_4

    :goto_2
    goto :goto_4

    :goto_3
    const/4 v5, 0x0

    :try_start_2
    array-length v5, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    goto :goto_2

    .line 43
    :goto_4
    sget p1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 39
    goto :goto_5

    :cond_3
    const/4 v3, 0x1

    :goto_5
    packed-switch v3, :pswitch_data_2

    .line 43
    :pswitch_1
    nop

    .line 41
    :pswitch_2
    return-wide v0

    :cond_4
    :try_start_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-wide v0

    .line 43
    :catchall_0
    move-exception p1

    throw p1

    .line 41
    :catch_0
    move-exception p1

    .line 43
    const-string v2, "MultiPartExecutor"

    const-string v3, "get content length failed!"

    invoke-static {v2, v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cs/removeDownloadListener;

    .line 4
    new-instance v3, Lccsansan/dj/getDownloadingList;

    invoke-direct {v3, v2}, Lccsansan/dj/getDownloadingList;-><init>(Lccsansan/cs/removeDownloadListener;)V

    .line 5
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lccsansan/dj/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    .line 7
    iput-object p2, v3, Lccsansan/dj/getDownloadingList;->removeDownloadListener:Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;

    .line 8
    iget-object v2, p0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownItem:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownItem:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 14
    :cond_1
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x0

    .line 16
    :goto_1
    iget-object v1, p0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 17
    iget-object v1, p0, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownItem:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dj/getDownloadingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "MultiPartExecutor"

    .line 18
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThreadId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Part :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes  --  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "bytes completed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lccsansan/dj/getDownloadingList;->getDownloadingList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    iget-object v1, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    .line 23
    :cond_2
    iget-object v9, p0, Lccsansan/dj/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lccsansan/dj/removeDownloadListener;

    iget-object v6, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/concurrent/CountDownLatch;

    iget v7, p0, Lccsansan/dj/IncentiveDownloadUtils;->unifiedDownload:I

    iget v8, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    move-object v2, v10

    move v3, p2

    move-object v4, p1

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lccsansan/dj/removeDownloadListener;-><init>(ILccsansan/aw/IncentiveDownloadUtils;Lccsansan/dj/getDownloadingList;Ljava/util/concurrent/CountDownLatch;II)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 24
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v2

    .line 30
    :goto_2
    :try_start_3
    monitor-exit v1

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 33
    :cond_3
    iget-object p1, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "MultiPartExecutor"

    const v1, -0x2db4fb7d

    invoke-static {v0}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    add-int/2addr v2, v1

    const v1, 0x567722a9

    invoke-static {v0}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    const/high16 v3, -0x1000000

    invoke-static {v0, v0, v0}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v0}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    invoke-static {v0}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, -0x21

    invoke-static {v2, v1, v3, v4, v9}, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p2, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    new-instance p2, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-direct {p2, v0, p1}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public unifiedDownload(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 64
    nop

    .line 52
    const-string v0, "MultiPartExecutor"

    const-string v1, "create multi part record."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-wide v1, p0, Lccsansan/dj/IncentiveDownloadUtils;->removeDownloadListener:J

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 55
    new-instance v1, Lccsansan/cs/removeDownloadListener;

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object v4, v1

    move-wide v7, p1

    invoke-direct/range {v4 .. v10}, Lccsansan/cs/removeDownloadListener;-><init>(JJJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget p1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x53

    goto :goto_0

    :cond_0
    const/16 p1, 0xe

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    .line 59
    :cond_1
    div-long v1, p1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v2, v1

    iget v1, p0, Lccsansan/dj/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 61
    sget-object v2, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    iget-object v3, p0, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsansan/cs/unifiedDownload;

    if-ne v2, v3, :cond_2

    .line 62
    invoke-direct {p0, p1, p2, v1, v0}, Lccsansan/dj/IncentiveDownloadUtils;->addDownloadListener(JILjava/util/List;)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-direct {p0, p1, p2, v1, v0}, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingList(JILjava/util/List;)V

    :goto_2
    sget p1, Lccsansan/dj/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dj/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v0

    :goto_4
    const/16 p1, 0x52

    :try_start_1
    div-int/2addr p1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
