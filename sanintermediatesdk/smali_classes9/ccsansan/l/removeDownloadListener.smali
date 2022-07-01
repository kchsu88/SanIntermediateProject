.class public Lccsansan/l/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:[F

.field private static addDownloadListener:Lccsansan/y/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/l/removeDownloadListener;->IncentiveDownloadUtils:[F

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const-string v0, "unable to resolve host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Unable to resolve host"

    return-object p0

    .line 65
    :cond_1
    const-string v0, "read time out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Read time out"

    return-object p0

    .line 67
    :cond_2
    const-string v0, "ssl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SSL handshake aborted"

    return-object p0

    .line 69
    :cond_3
    const-string v0, "time out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Connection time out"

    return-object p0

    .line 71
    :cond_4
    const-string v0, "refuse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Connection refused"

    return-object p0

    :cond_5
    const-string p0, "other error"

    return-object p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;ZLjava/lang/Exception;Ljava/lang/String;J)V
    .locals 9

    .line 2
    const-string v0, "Stats.Upload"

    sget-object v1, Lccsansan/l/removeDownloadListener;->addDownloadListener:Lccsansan/y/unifiedDownload;

    if-eqz v1, :cond_5

    const/16 v2, 0x64

    .line 4
    :try_start_0
    invoke-static {v2}, Lccsansan/dl/getDownloadingList;->getDownloadingList(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "MadsStats_UploadSuccess"

    goto :goto_0

    :cond_1
    const-string v2, "MadsStats_UploadFailedEx"

    :goto_0
    if-eqz p1, :cond_2

    const-string v3, "success"

    goto :goto_1

    :cond_2
    const-string v3, "failed"

    :goto_1
    const/4 v4, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 9
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/l/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v4

    .line 11
    :goto_2
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "result"

    .line 12
    invoke-virtual {p2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "error"

    .line 13
    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "portal"

    .line 14
    invoke-virtual {p2, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "duration"

    const-wide/16 v6, 0x0

    cmp-long v8, p4, v6

    if-lez v8, :cond_4

    long-to-float p4, p4

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p4, p5

    .line 15
    :try_start_2
    sget-object p5, Lccsansan/l/removeDownloadListener;->IncentiveDownloadUtils:[F

    invoke-static {p4, p5}, Lccsansan/bw/AdFormat;->unifiedDownload(F[F)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "trackUploadResult, [event:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", result:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", error:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", portal:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0, v2, p2}, Lccsansan/y/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackUploadResult error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;J)V
    .locals 11

    .line 20
    const-string v0, "Stats.Upload"

    :try_start_0
    sget-object v1, Lccsansan/l/removeDownloadListener;->addDownloadListener:Lccsansan/y/unifiedDownload;

    if-nez v1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 26
    invoke-static {}, Lccsansan/bw/getErrorCode;->getDownloadedCount()Z

    move-result v4

    if-nez v4, :cond_1

    .line 27
    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils(J)V

    .line 29
    :cond_1
    invoke-static {}, Lccsansan/bw/getErrorCode;->resume()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-nez v8, :cond_2

    .line 30
    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->getDownloadedRecordByUrl(J)J

    move-result-wide p1

    .line 31
    :cond_2
    invoke-static {p1, p2}, Lccsansan/bw/getErrorCode;->getDownloadingRecordByUrl(J)V

    sub-long v4, v2, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v10, v4, v8

    if-gez v10, :cond_3

    return-void

    .line 35
    :cond_3
    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils(J)V

    sub-long/2addr v2, p1

    cmp-long p1, v2, v8

    if-ltz p1, :cond_4

    .line 38
    div-long/2addr v2, v8

    .line 39
    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->getDownloadedList(J)V

    return-void

    :cond_4
    nop

    .line 44
    invoke-static {v6, v7}, Lccsansan/bw/getErrorCode;->getDownloadStatusByUrl(J)J

    move-result-wide p1

    cmp-long v2, p1, v6

    if-nez v2, :cond_5

    return-void

    .line 47
    :cond_5
    invoke-static {}, Lccsansan/bw/getErrorCode;->deleteDownList()V

    const/16 v2, 0x64

    .line 49
    invoke-static {v2}, Lccsansan/dl/getDownloadingList;->getDownloadingList(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_6

    return-void

    :cond_6
    const-wide/16 v2, 0x14

    cmp-long v4, p1, v2

    if-lez v4, :cond_7

    const-string p1, ">20"

    goto :goto_0

    .line 51
    :cond_7
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const-string p2, "MadsStats_NoUploadTime"

    .line 53
    :try_start_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "days"

    .line 54
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackNoUploadTime, [event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", days:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p0, p2, v2}, Lccsansan/y/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackNoUploadTime error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static unifiedDownload(Lccsansan/y/unifiedDownload;)V
    .locals 0

    .line 1
    sput-object p0, Lccsansan/l/removeDownloadListener;->addDownloadListener:Lccsansan/y/unifiedDownload;

    return-void
.end method
