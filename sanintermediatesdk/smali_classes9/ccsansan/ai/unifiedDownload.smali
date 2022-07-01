.class public final Lccsansan/ai/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static unifiedDownload:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils()J
    .locals 5

    .line 6
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-wide v0, Lccsansan/ai/unifiedDownload;->unifiedDownload:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 9
    :cond_1
    const-class v0, Lccsansan/ai/unifiedDownload;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-wide v1, Lccsansan/ai/unifiedDownload;->unifiedDownload:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lccsansan/ai/unifiedDownload;->unifiedDownload:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static IncentiveDownloadUtils(Lccsansan/am/IncentiveDownloadUtils;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v0, v1}, Lccsansan/bw/getErrorCode;->addDownloadListener(J)V

    return-void
.end method

.method private static addDownloadListener()J
    .locals 6

    .line 10
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 11
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 13
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 14
    const-string v0, "1%01d%02d%02d%02d%02d%02d0000000"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide v0, 0xde0b6b3a7640000L

    return-wide v0
.end method

.method public static unifiedDownload(Lccsansan/am/IncentiveDownloadUtils;)V
    .locals 5

    .line 1
    const-class v0, Lccsansan/ai/unifiedDownload;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lccsansan/bw/getErrorCode;->getDownloadStatusByUrl()J

    move-result-wide v1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    .line 6
    invoke-static {}, Lccsansan/ai/unifiedDownload;->addDownloadListener()J

    move-result-wide v1

    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 8
    sput-wide v1, Lccsansan/ai/unifiedDownload;->unifiedDownload:J

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
