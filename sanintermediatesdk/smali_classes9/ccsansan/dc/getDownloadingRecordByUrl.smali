.class public Lccsansan/dc/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static deleteDownItem:[S

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:[B

.field private static unifiedDownload:Lccsansan/dc/getDownloadingRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    const/16 v0, 0x1e

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList:I

    const v0, 0x75cb74b

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->addDownloadListener:I

    const v0, -0x6f4393e1

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    const/16 v0, 0x6f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dc/getDownloadingRecordByUrl;->removeDownloadListener:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x7et
        0x1dt
        0x60t
        0x5ft
        -0x4ct
        0x20t
        0x63t
        0x5dt
        0x64t
        0x6ft
        0x51t
        0x65t
        0x69t
        -0x77t
        0x3dt
        0x64t
        -0x6dt
        0x32t
        0x6et
        -0x59t
        0x64t
        0x26t
        -0x79t
        0x40t
        0x5bt
        0x69t
        0x61t
        0x6at
        0x64t
        0x7bt
        0x40t
        0x6et
        -0x53t
        0x4at
        0x7et
        0x64t
        0x1ft
        0x56t
        0x6bt
        0x6ft
        0x5ft
        -0x56t
        0x20t
        -0x79t
        0x40t
        0x61t
        0x69t
        0x66t
        -0x7et
        0x30t
        0x6ct
        0x6bt
        0x79t
        0x49t
        0x71t
        0x62t
        -0x5ct
        0x45t
        0x79t
        0x18t
        0x5bt
        0x5at
        -0x51t
        0x1bt
        0x5et
        0x58t
        0x5ft
        0x6at
        0x4ct
        0x60t
        0x64t
        -0x7ct
        0x38t
        0x5ft
        -0x72t
        0x2dt
        0x69t
        -0x5et
        0x5ft
        0x21t
        -0x7et
        0x3bt
        0x56t
        0x64t
        0x5ct
        0x65t
        0x5ft
        0x76t
        0x3bt
        0x69t
        -0x58t
        0x45t
        0x79t
        0x5ft
        0x1at
        0x51t
        0x66t
        0x6at
        0x5at
        -0x5bt
        0x8t
        0x67t
        0x66t
        0x74t
        0x44t
        0x6ct
        0x5dt
        -0x61t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList:I

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
    sget-object p4, Lccsansan/dc/getDownloadingRecordByUrl;->removeDownloadListener:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/dc/getDownloadingRecordByUrl;->deleteDownItem:[S

    sget v6, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

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

    sget v2, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/dc/getDownloadingRecordByUrl;->addDownloadListener:I

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
    sget-object p0, Lccsansan/dc/getDownloadingRecordByUrl;->removeDownloadListener:[B

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
    sget-object p0, Lccsansan/dc/getDownloadingRecordByUrl;->deleteDownItem:[S

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

.method private deleteDownItem(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const/16 v0, 0x16

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/dc/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadStatusByUrl(Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadingCount()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadingCount()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/16 v0, 0x19

    goto :goto_1

    :cond_1
    const/16 v0, 0x12

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v0, 0x30

    goto :goto_3

    :cond_2
    const/16 v0, 0x2f

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadingCount()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    :cond_3
    :goto_5
    :pswitch_2
    const/4 v1, 0x1

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadedList(Lccsansan/dt/removeDownloadListener;)Lccsanandroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 96
    nop

    .line 18
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x2456

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->isIdle()Z

    move-result v2

    const-string v3, "Mads.Engine"

    if-eqz v2, :cond_1

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShowCacheAd false: isUnreached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x2457

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 28
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->isRunning()Z

    move-result v2

    const/16 v4, 0x2458

    if-eqz v2, :cond_2

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShowCacheAd false: isExpired"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p1, Lccsanandroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 33
    :cond_2
    invoke-direct {p0, p1}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    const/4 v5, -0x1

    if-nez v2, :cond_d

    .line 34
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadedRecordByUrl()I

    move-result v2

    .line 35
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadStatusByUrl()I

    move-result v6

    .line 36
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->resume()J

    move-result-wide v7

    .line 38
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadingRecordByUrl()I

    move-result v0

    .line 40
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v9

    invoke-virtual {v9}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v9

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasFinished()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-gez v11, :cond_3

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShowCacheAd false  : showInterval"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p1, Lccsanandroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 45
    :cond_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasSucceedByPassingRestrictions()I

    move-result v4

    if-lt v4, v0, :cond_4

    if-eq v0, v5, :cond_4

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShowCacheAd false  : totalClickCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x2459

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 50
    :cond_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime()I

    move-result v0

    if-lt v0, v2, :cond_5

    if-eq v2, v5, :cond_5

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShowCacheAd false  : totalShowCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x245a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 55
    :cond_5
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLocalExtras()I

    move-result v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-lt v0, v6, :cond_6

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 55
    if-eq v6, v5, :cond_7

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShowCacheAd false  : dayShowCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x245b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 60
    :cond_7
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_8

    .line 96
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_1

    .line 61
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x6f4393e1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    sub-int/2addr v1, v2

    const v2, -0x75cb728

    invoke-static {v4, v4}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    sub-int/2addr v2, v4

    const-string v4, ""

    invoke-static {v4}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x63

    int-to-short v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    add-int/lit8 v6, v6, 0x1c

    invoke-static {v1, v2, v4, v5, v6}, Lccsansan/dc/getDownloadingRecordByUrl;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x245c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 66
    :cond_9
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 96
    sget v6, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v7, v6, 0x4b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    :try_start_0
    array-length v7, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    :cond_a
    packed-switch v2, :pswitch_data_2

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 66
    :cond_b
    if-eqz v0, :cond_d

    .line 96
    :pswitch_2
    add-int/lit8 v6, v6, 0x73

    rem-int/lit16 v2, v6, 0x80

    sput v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_c

    .line 67
    :cond_c
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lccsancom/san/bridge/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 68
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 v0, 0x245d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    return-object p1

    .line 73
    :cond_d
    :goto_2
    invoke-static {p1}, Lccsansan/bw/valueOf;->deleteDownItem(Lccsansan/dt/removeDownloadListener;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 74
    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v10

    iget-object v2, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    invoke-static/range {v6 .. v11}, Lccsansan/bn/getDownloadingRecordByUrl;->unifiedDownload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 75
    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 77
    iget-object v4, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    const-string v6, "image"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v5, 0x245e

    goto :goto_3

    .line 79
    :cond_e
    iget-object v4, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    const-string v7, "video"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v5, 0x245f

    .line 96
    sget v4, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x49

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 81
    :cond_f
    iget-object v4, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    const-string v7, "landingpage"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v5, 0x2460

    :cond_10
    :goto_3
    if-nez v2, :cond_12

    .line 96
    sget v4, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x63

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_11

    .line 85
    :cond_11
    iget-object v4, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v4

    if-nez v4, :cond_12

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 87
    invoke-static {p1}, Lccsansan/bw/valueOf;->getDownloadingRecordByUrl(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    const/16 v5, 0x2461

    .line 89
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v9

    move v6, v2

    invoke-static/range {v6 .. v11}, Lccsansan/bn/getDownloadingRecordByUrl;->unifiedDownload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4

    :cond_12
    nop

    .line 96
    nop

    .line 89
    :goto_4
    if-eqz v2, :cond_13

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result tru, adid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 94
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#canShowCacheAd checkHasReady: result = false; SourceDownResult =  false  type =  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    :goto_5
    new-instance p1, Lccsanandroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/dc/getDownloadingRecordByUrl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/dc/getDownloadingRecordByUrl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/dc/getDownloadingRecordByUrl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/dc/getDownloadingRecordByUrl;

    invoke-direct {v1}, Lccsansan/dc/getDownloadingRecordByUrl;-><init>()V

    sput-object v1, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/dc/getDownloadingRecordByUrl;

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
    sget-object v0, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/dc/getDownloadingRecordByUrl;

    return-object v0
.end method

.method private unifiedDownload(Ljava/util/List;)Lccsansan/dt/removeDownloadListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;)",
            "Lccsansan/dt/removeDownloadListener;"
        }
    .end annotation

    .line 169
    nop

    .line 162
    invoke-static {p1}, Lccsansan/dc/unifiedDownload;->getDownloadingList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 163
    sget-object v0, Lccsansan/bw/getErrorMessage;->IncentiveDownloadUtils:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    invoke-static {p1}, Lccsansan/dc/unifiedDownload;->addDownloadListener(Ljava/util/List;)V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_2

    .line 169
    :pswitch_0
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 165
    return-object v1

    .line 169
    :pswitch_1
    :try_start_0
    array-length p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    throw p1

    .line 168
    :goto_2
    :pswitch_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dc/unifiedDownload;

    .line 169
    invoke-virtual {v0}, Lccsansan/dc/unifiedDownload;->getDownloadStatusByUrl()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x42

    goto :goto_3

    :cond_2
    const/16 v2, 0x14

    :goto_3
    packed-switch v2, :pswitch_data_2

    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 161
    nop

    .line 80
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/dc/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_b

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 125
    sget v3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v3, v3, 0xb

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 86
    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/removeDownloadListener;

    .line 85
    invoke-virtual {v3, p2}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3, p3}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/removeDownloadListener;

    .line 85
    invoke-virtual {v3, p2}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3, p3}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    :try_start_0
    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception p1

    throw p1

    .line 88
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/dt/removeDownloadListener;

    .line 90
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 91
    invoke-static {v6}, Lccsansan/bw/removeDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v3, 0x2455

    .line 161
    :goto_3
    goto :goto_2

    .line 95
    :cond_3
    invoke-direct {p0, v6}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList(Lccsansan/dt/removeDownloadListener;)Lccsanandroid/util/Pair;

    move-result-object v7

    .line 96
    iget-object v8, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    .line 161
    sget v3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x73

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    .line 97
    :cond_4
    iget-object v3, v7, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 98
    invoke-direct {p0, v6}, Lccsansan/dc/getDownloadingRecordByUrl;->deleteDownItem(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_2

    .line 101
    :cond_5
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cptAds size = "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v6, "Mads.Engine"

    invoke-static {v6, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    .line 125
    sget p3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p3, p3, 0x23

    rem-int/lit16 v3, p3, 0x80

    sput v3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    .line 105
    :cond_7
    invoke-direct {p0, p2}, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload(Ljava/util/List;)Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    if-nez p2, :cond_8

    const/16 v3, 0x2462

    goto :goto_4

    .line 109
    :cond_8
    new-instance p1, Lccsanandroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget p2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p2, p2, 0x33

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_9

    :try_start_1
    array-length p2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    .line 161
    :cond_9
    return-object p1

    .line 112
    :cond_a
    :goto_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 161
    nop

    .line 113
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    const/16 v0, 0x3b

    goto :goto_6

    :cond_b
    const/16 v0, 0x52

    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 113
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dt/removeDownloadListener;

    .line 114
    invoke-direct {p0, v0}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList(Lccsansan/dt/removeDownloadListener;)Lccsanandroid/util/Pair;

    move-result-object v7

    .line 115
    iget-object v8, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_16

    goto/16 :goto_a

    .line 123
    :pswitch_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 161
    sget v7, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v7, v7, 0x45

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v7, v7, 0x2

    const-string v8, "; "

    const-string v9, "_"

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsansan/dt/removeDownloadListener;

    .line 125
    invoke-virtual {v7}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    .line 161
    :catchall_2
    move-exception p1

    throw p1

    .line 124
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsansan/dt/removeDownloadListener;

    .line 125
    invoke-virtual {v7}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 127
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adIds = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p3

    invoke-virtual {p3, p1}, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/dt/getDownloadingRecordByUrl;

    move-result-object p3

    const-string v0, "placementId = "

    if-nez p3, :cond_f

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; queue is null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p2}, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload(Ljava/util/List;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-nez p1, :cond_e

    .line 134
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 p2, 0x2464

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 136
    :cond_e
    new-instance p2, Lccsanandroid/util/Pair;

    const/16 p3, 0x2465

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 139
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; queue = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; position = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result v0

    .line 143
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/removeDownloadListener;

    .line 144
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 86
    const/4 v8, 0x0

    goto :goto_9

    :cond_11
    const/4 v8, 0x1

    :goto_9
    packed-switch v8, :pswitch_data_2

    .line 161
    sget v8, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_12

    .line 144
    :cond_12
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current position = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/getDownloadingRecordByUrl;)Z

    .line 147
    new-instance p1, Lccsanandroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_13
    :pswitch_2
    const/16 v3, 0x2466

    goto :goto_8

    .line 152
    :cond_14
    invoke-static {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/getDownloadingRecordByUrl;)Lccsansan/dt/getDownloadingRecordByUrl;

    move-result-object p3

    const-string v7, "getPreCacheAd ad is null"

    if-nez p3, :cond_15

    .line 154
    invoke-static {v6, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 p2, 0x2467

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 157
    :cond_15
    invoke-virtual {p3}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result v8

    if-ne v8, v0, :cond_10

    .line 158
    invoke-static {v6, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance p1, Lccsanandroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 116
    :goto_a
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 118
    :cond_16
    iget-object v3, v7, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 119
    invoke-direct {p0, v0}, Lccsansan/dc/getDownloadingRecordByUrl;->deleteDownItem(Lccsansan/dt/removeDownloadListener;)V

    goto/16 :goto_5

    .line 161
    :cond_17
    :goto_b
    new-instance p1, Lccsanandroid/util/Pair;

    const/16 p2, 0x2454

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/dc/unifiedDownload;",
            ">;"
        }
    .end annotation

    .line 17
    nop

    .line 1
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/dc/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List Active Native AdsII, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", placementId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Mads.Engine"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const/16 v1, 0x34

    goto :goto_1

    :cond_0
    const/16 v1, 0x43

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 15
    invoke-static {p1}, Lccsansan/dc/unifiedDownload;->getDownloadingList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 16
    sget-object v0, Lccsansan/bw/getErrorMessage;->IncentiveDownloadUtils:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    invoke-static {p1}, Lccsansan/dc/unifiedDownload;->addDownloadListener(Ljava/util/List;)V

    return-object p1

    .line 4
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dt/removeDownloadListener;

    .line 5
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    const/16 v2, 0x11

    goto :goto_2

    :cond_1
    const/16 v2, 0x1f

    :goto_2
    packed-switch v2, :pswitch_data_1

    :goto_3
    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->resume()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lccsansan/dc/getDownloadingRecordByUrl;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    const/16 v2, 0x21

    goto :goto_4

    :cond_3
    const/16 v2, 0x1d

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :pswitch_2
    sget v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 9
    :cond_4
    invoke-direct {p0, v1}, Lccsansan/dc/getDownloadingRecordByUrl;->deleteDownItem(Lccsansan/dt/removeDownloadListener;)V

    .line 17
    sget v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    :cond_5
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 3
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPlacementId()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1
    :cond_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPlacementId()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPlacementId()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)Z

    move-result p1

    return p1

    :goto_1
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)Lccsansan/dt/removeDownloadListener;
    .locals 3

    .line 14
    nop

    .line 9
    invoke-virtual {p0, p1}, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 14
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 14
    sget v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 13
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dc/unifiedDownload;

    .line 14
    invoke-virtual {v1}, Lccsansan/dc/unifiedDownload;->getDownloadStatusByUrl()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0xf

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object v1

    :cond_3
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 3
    nop

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPassengerHBParams()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_5

    :pswitch_0
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x7

    goto :goto_2

    :cond_1
    const/16 v0, 0x1c

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPassengerHBParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3

    .line 1
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPassengerHBParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 3
    :goto_3
    const/16 v2, 0x5f

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1
    :goto_4
    nop

    .line 3
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPassengerHBParams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 3
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    const/16 v2, 0x5e

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 3
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x55

    goto :goto_1

    :cond_2
    const/16 v0, 0x41

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_4

    :goto_2
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->deleteDownList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x19

    goto :goto_3

    :cond_3
    const/16 p1, 0x33

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 3
    goto :goto_4

    :cond_4
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/deleteDownList;->deleteDownList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)Z

    move-result p1

    return p1

    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 4

    .line 3
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_4

    :goto_3
    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    goto :goto_2

    :goto_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadingCount()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    goto :goto_6

    :cond_2
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/deleteDownList;->getDownloadingCount()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)Z

    move-result p1

    .line 1
    sget v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0xe

    goto :goto_5

    :cond_3
    const/16 v0, 0x5f

    :goto_5
    packed-switch v0, :pswitch_data_2

    .line 3
    return p1

    .line 1
    :pswitch_1
    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    .line 3
    :cond_4
    :goto_6
    :pswitch_2
    return v1

    :catchall_1
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 12

    .line 79
    nop

    .line 15
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_13

    goto/16 :goto_7

    .line 18
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->isIdle()Z

    move-result v3

    const-string v4, "Mads.Engine"

    if-eqz v3, :cond_1

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShow false: isUnreached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShow false: isExpired"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 29
    :cond_2
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadedRecordByUrl()I

    move-result v3

    .line 30
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadStatusByUrl()I

    move-result v5

    .line 31
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->resume()J

    move-result-wide v6

    .line 33
    invoke-virtual {v0}, Lccsansan/dt/deleteDownList;->getDownloadingRecordByUrl()I

    move-result v0

    .line 35
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v8

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasFinished()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gez v10, :cond_3

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#canShow false  , showInterval:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", current showInterval:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 41
    :cond_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasSucceedByPassingRestrictions()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-lt v6, v0, :cond_6

    .line 79
    sget v6, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v6, v6, 0x65

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    .line 41
    :cond_4
    if-eq v0, v8, :cond_6

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#canShow false  , totalClickCount:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ClickCount:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasSucceedByPassingRestrictions()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    return v1

    .line 46
    :cond_6
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime()I

    move-result v0

    if-lt v0, v3, :cond_7

    if-eq v3, v8, :cond_7

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#canShow false  , totalShowCount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ShowCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v1

    .line 51
    :cond_7
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLocalExtras()I

    move-result v0

    if-lt v0, v5, :cond_8

    .line 79
    const/16 v0, 0xf

    goto :goto_1

    :cond_8
    const/16 v0, 0x3d

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 51
    if-eq v5, v8, :cond_9

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#canShow false  : totalDayShowCount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DayShowCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLocalExtras()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 56
    :cond_9
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_b

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 79
    sget v3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x71

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    :try_start_1
    array-length v3, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_b

    goto :goto_2

    :catchall_1
    move-exception p1

    throw p1

    .line 57
    :cond_a
    if-eqz v0, :cond_b

    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x6f43941b

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    add-int/2addr v3, v2

    const v2, -0x75cb727

    const/16 v5, 0x30

    const-string v6, ""

    invoke-static {v6, v5, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x5f

    int-to-short v2, v2

    invoke-static {v6, v6, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x16

    invoke-static {v3, v5, v2, v6, v7}, Lccsansan/dc/getDownloadingRecordByUrl;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v1

    .line 62
    :cond_b
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 79
    sget v3, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v5, v3, 0x69

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_c

    const/16 v5, 0x58

    :try_start_2
    div-int/2addr v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_f

    goto :goto_3

    :catchall_2
    move-exception p1

    throw p1

    .line 62
    :cond_c
    if-eqz v0, :cond_f

    .line 79
    :goto_3
    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_d

    .line 63
    :cond_d
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lccsancom/san/bridge/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#canShow false  : reserve ad had been booked or don\'t support reserve ad in Gp version, adId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    nop

    .line 79
    sget p1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return v0

    .line 70
    :cond_f
    invoke-static {p1}, Lccsansan/bw/valueOf;->deleteDownItem(Lccsansan/dt/removeDownloadListener;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 71
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v9

    iget-object v1, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    invoke-static/range {v5 .. v10}, Lccsansan/bn/getDownloadingRecordByUrl;->unifiedDownload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_10

    .line 79
    const/16 v3, 0x49

    goto :goto_4

    :cond_10
    const/16 v3, 0x4e

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    .line 73
    :pswitch_2
    iget-object v3, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v3

    if-nez v3, :cond_11

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 75
    invoke-static {p1}, Lccsansan/bw/valueOf;->getDownloadingRecordByUrl(Lccsansan/dt/removeDownloadListener;)Z

    move-result v1

    .line 76
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v8

    move v5, v1

    invoke-static/range {v5 .. v10}, Lccsansan/bn/getDownloadingRecordByUrl;->unifiedDownload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_6

    :cond_11
    :goto_5
    nop

    :goto_6
    if-nez v1, :cond_12

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#canShow checkHasReady SourceDownResult = false ; type =  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return v1

    :goto_7
    const/16 p1, 0x41

    goto :goto_8

    :cond_13
    const/16 p1, 0x2b

    :goto_8
    packed-switch p1, :pswitch_data_3

    .line 15
    return v1

    .line 79
    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x49
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_3
    .end packed-switch
.end method
