.class public Lccsansan/az/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:J

.field private static final addDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static deleteDownItem:J

.field private static getDownloadStatusByUrl:J

.field static final synthetic getDownloadingList:Z

.field private static getDownloadingRecordByUrl:J

.field private static removeDownloadListener:Lccsansan/az/IncentiveDownloadUtils;

.field private static unifiedDownload:J


# instance fields
.field private IncentiveSDK:Z

.field private deleteDownList:Ljava/lang/String;

.field private getDownloadedCount:Lccsansan/bw/AdError;

.field private final getDownloadedList:Lccsanandroid/os/Handler;

.field private final getDownloadedRecordByUrl:Ljava/text/SimpleDateFormat;

.field private getDownloadingCount:Ljava/lang/String;

.field private getPackageNameByRecord:Ljava/lang/String;

.field private getThumbPathByRecord:Ljava/lang/String;

.field private pause:I

.field private resume:Ljava/lang/String;

.field private trackReportClick:Ljava/lang/String;

.field private trackReportShow:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$LOVDilc9St5npOZaDhtAys1KLyw(Lccsansan/az/IncentiveDownloadUtils;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList:Z

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/az/IncentiveDownloadUtils;->IncentiveSDK:Z

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/text/SimpleDateFormat;

    .line 7
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "a_r"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 9
    new-instance v1, Lccsansan/az/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lccsansan/az/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/az/IncentiveDownloadUtils;Lccsanandroid/os/Looper;)V

    iput-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/os/Handler;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/az/IncentiveDownloadUtils;)I
    .locals 2

    .line 1
    iget v0, p0, Lccsansan/az/IncentiveDownloadUtils;->pause:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lccsansan/az/IncentiveDownloadUtils;->pause:I

    return v0
.end method

.method static synthetic IncentiveDownloadUtils()J
    .locals 2

    .line 2
    sget-wide v0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    return-wide v0
.end method

.method private declared-synchronized IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "alive_t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#updateInfoByDay has no record["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AliveRecorder"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "alive_t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    .line 43
    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "alive_dur"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 44
    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "active_t"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v1

    .line 45
    iget-object v2, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "active_dur"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v2

    div-long/2addr v2, v8

    .line 46
    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "alive_t"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "alive_dur"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "active_t"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "active_dur"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "day"

    .line 52
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "y_a_t"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "y_a_d"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "y_act_t"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "y_act_d"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ALIVE_INFO"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AliveRecorder"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "ALIVE_INFO"

    invoke-static {p1, v0, v4}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic addDownloadListener(J)J
    .locals 0

    .line 3
    sput-wide p0, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    return-wide p0
.end method

.method static synthetic addDownloadListener(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    return-object p0
.end method

.method public static addDownloadListener()Lccsansan/az/IncentiveDownloadUtils;
    .locals 2

    .line 2
    sget-object v0, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/az/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lccsansan/az/IncentiveDownloadUtils;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/az/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lccsansan/az/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/az/IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/az/IncentiveDownloadUtils;

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

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/az/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/az/IncentiveDownloadUtils;

    return-object v0
.end method

.method static synthetic addDownloadListener(Lccsansan/az/IncentiveDownloadUtils;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lccsansan/az/IncentiveDownloadUtils;->IncentiveSDK:Z

    return p1
.end method

.method static synthetic getDownloadStatusByUrl(Lccsansan/az/IncentiveDownloadUtils;)I
    .locals 2

    .line 1
    iget v0, p0, Lccsansan/az/IncentiveDownloadUtils;->pause:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lccsansan/az/IncentiveDownloadUtils;->pause:I

    return v0
.end method

.method private declared-synchronized getDownloadStatusByUrl()V
    .locals 6

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    const-string v1, "UPLOADED_DAY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-boolean v1, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingList:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#updateHistoryInfo has record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliveRecorder"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x5a

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 10
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_1
    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    const-string v2, "UPLOADED_DAY"

    invoke-virtual {v1, v2, v0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/os/Handler;

    new-instance v1, Lccsansan/az/IncentiveDownloadUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/az/IncentiveDownloadUtils$$ExternalSyntheticLambda0;-><init>(Lccsansan/az/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic getDownloadedList(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/az/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic getDownloadedList()V
    .locals 5

    .line 2
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    invoke-virtual {v0}, Lccsansan/bw/AdError;->getDownloadingList()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UPLOADED_DAY"

    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#updateHistoryInfo dayList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AliveRecorder"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-direct {p0, v1}, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/az/IncentiveDownloadUtils;->deleteDownList:Ljava/lang/String;

    return-object p0
.end method

.method private getDownloadedRecordByUrl()V
    .locals 3

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#resetPrimaryValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliveRecorder"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 6
    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "alive_dur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportShow:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "alive_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active_dur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    .line 15
    sput-wide v0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    return-void
.end method

.method static synthetic getDownloadingList()J
    .locals 2

    .line 2
    sget-wide v0, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method static synthetic getDownloadingList(Lccsansan/az/IncentiveDownloadUtils;)Lccsansan/bw/AdError;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    return-object p0
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsansan/az/IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/az/IncentiveDownloadUtils;->pause:I

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;I)I
    .locals 0

    .line 5
    iput p1, p0, Lccsansan/az/IncentiveDownloadUtils;->pause:I

    return p1
.end method

.method static synthetic removeDownloadListener()J
    .locals 2

    .line 2
    sget-wide v0, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload:J

    return-wide v0
.end method

.method static synthetic removeDownloadListener(J)J
    .locals 0

    .line 3
    sput-wide p0, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload:J

    return-wide p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lccsansan/az/IncentiveDownloadUtils;->deleteDownList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/az/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/az/IncentiveDownloadUtils;->unifiedDownload()V

    return-void
.end method

.method static synthetic unifiedDownload(J)J
    .locals 0

    .line 3
    sput-wide p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    return-wide p0
.end method

.method static synthetic unifiedDownload(Lccsansan/az/IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized unifiedDownload()V
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    const-wide/16 v1, 0x7530

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#handleTimer sp = null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AliveRecorder"

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-static {v0, v4}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportShow:Ljava/lang/String;

    sget-wide v5, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    invoke-virtual {v0, v4, v5, v6}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    .line 11
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/String;

    sget-wide v5, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    invoke-virtual {v0, v4, v5, v6}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    .line 13
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccsansan/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl()V

    .line 19
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lccsansan/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    sub-long/2addr v4, v6

    sput-wide v4, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    .line 23
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v6, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v0, v6, v4, v5}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#handleTimer aliveDuration = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " isBackground = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lccsansan/az/IncentiveDownloadUtils;->IncentiveSDK:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AliveRecorder"

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/os/Handler;

    iget-boolean v4, p0, Lccsansan/az/IncentiveDownloadUtils;->IncentiveSDK:Z

    if-eqz v4, :cond_2

    const-wide/32 v1, 0x493e0

    :cond_2
    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 8

    .line 7
    sget-object v0, Lccsansan/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v3, "AliveRecorder"

    if-nez v0, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#startSession AGAIN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl()V

    .line 13
    new-instance v0, Lccsansan/bw/AdError;

    const-string v4, "san_a_r"

    invoke-direct {v0, p1, v4}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    .line 15
    invoke-direct {p0}, Lccsansan/az/IncentiveDownloadUtils;->getDownloadStatusByUrl()V

    .line 17
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v0, v4}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    .line 19
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportShow:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    .line 20
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {p1, v0, v4, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    sub-long/2addr v4, v6

    sput-wide v4, Lccsansan/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    .line 22
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#startSession["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], savedAliveTimes "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v2, p0, Lccsansan/az/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", savedAliveDuration "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lccsansan/az/IncentiveDownloadUtils;->deleteDownItem:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", savedActiveTimes "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedCount:Lccsansan/bw/AdError;

    iget-object v2, p0, Lccsansan/az/IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", savedActiveDuration "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lccsansan/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    div-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    iget-object p1, p0, Lccsansan/az/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p1

    new-instance v0, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/az/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/az/IncentiveDownloadUtils;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/CommonActivityLifecycle;->addActivityStatsCallBack(Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;)V

    return-void
.end method
