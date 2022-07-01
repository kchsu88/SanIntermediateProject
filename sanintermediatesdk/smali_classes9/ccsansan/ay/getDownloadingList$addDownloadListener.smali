.class final Lccsansan/ay/getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;ZLccsansan/ay/getDownloadingList$removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static deleteDownItem:I

.field private static deleteDownList:I

.field private static getDownloadStatusByUrl:[B

.field private static getDownloadedList:[S

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/aj/getDownloadingList;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->deleteDownList:I

    const/16 v0, 0x31

    sput v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    const v0, 0x3fb7ebc8

    sput v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->deleteDownItem:I

    const v0, -0x441de575

    sput v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        -0xbt
        0x3t
        0x8t
        -0x5t
        -0x6t
        0x0t
        0xbt
        -0x13t
        0x1t
        0x5t
        0x5t
        -0xat
        -0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(Lccsansan/aj/getDownloadingList;Lccsansan/ay/getDownloadingList$removeDownloadListener;Lccsanandroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iput-object p2, p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    iput-object p3, p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iput-boolean p4, p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->removeDownloadListener:Z

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

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
    sget v2, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

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
    sget-object p4, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/ay/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadedList:[S

    sget v6, Lccsansan/ay/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

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

    sget v2, Lccsansan/ay/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->deleteDownItem:I

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
    sget-object p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[B

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
    sget-object p0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadedList:[S

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


# virtual methods
.method public execute()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 89
    nop

    .line 1
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-static {v1}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsansan/aj/getDownloadingList;)V

    .line 2
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 26
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 2
    :pswitch_0
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    sget-object v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v2, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 4
    iget-wide v1, v1, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_1
    cmp-long v3, v1, v5

    if-gez v3, :cond_1

    const-wide/32 v7, 0xdbba00

    add-long/2addr v1, v7

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iput-wide v1, v3, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    .line 10
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v1, v2}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V

    .line 11
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const-string v2, "urlIsNull"

    invoke-static {v2, v1}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    .line 13
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    if-eqz v1, :cond_2

    const/4 v2, -0x3

    .line 14
    invoke-interface {v1, v2, v4}, Lccsansan/ay/getDownloadingList$removeDownloadListener;->getDownloadingList(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 19
    :cond_3
    :goto_2
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-wide v5, v1, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    invoke-static {v5, v6}, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 20
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    sget-object v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_STORAGE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v2, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 21
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v1, v2}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    .line 22
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const-string v2, "noEnoughStorage"

    invoke-static {v2, v1}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    .line 24
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-boolean v3, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->removeDownloadListener:Z

    invoke-static {v1, v2, v3}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Z)V

    .line 25
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    if-eqz v1, :cond_5

    .line 89
    sget v2, Lccsansan/ay/getDownloadingList$addDownloadListener;->deleteDownList:I

    const/16 v3, 0x7b

    add-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 26
    const/16 v2, 0x5e

    goto :goto_3

    :cond_4
    const/16 v2, 0x20

    :goto_3
    packed-switch v2, :pswitch_data_1

    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v2, v2, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    goto :goto_4

    :pswitch_1
    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v2, v2, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const/4 v3, -0x4

    :goto_4
    invoke-interface {v1, v3, v2}, Lccsansan/ay/getDownloadingList$removeDownloadListener;->getDownloadingList(ILjava/lang/String;)V

    :cond_5
    return-void

    .line 31
    :cond_6
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x41

    const-string v6, ""

    if-nez v1, :cond_7

    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32
    :cond_7
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-boolean v7, v1, Lccsansan/aj/getDownloadingList;->performAction:Z

    if-nez v7, :cond_9

    .line 33
    iput-object v6, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 34
    sget-object v2, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v2, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 35
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v1, v2}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    .line 36
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const-string v2, "goGP"

    invoke-static {v2, v1}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    .line 37
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    if-eqz v1, :cond_8

    .line 26
    goto :goto_5

    :cond_8
    const/16 v5, 0x16

    :goto_5
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 38
    :pswitch_2
    iget-object v2, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v2, v2, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const/4 v3, -0x5

    invoke-interface {v1, v3, v2}, Lccsansan/ay/getDownloadingList$removeDownloadListener;->getDownloadingList(ILjava/lang/String;)V

    :goto_6
    return-void

    .line 44
    :cond_9
    iget-boolean v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->removeDownloadListener:Z

    if-nez v1, :cond_a

    .line 89
    return-void

    .line 48
    :cond_a
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 89
    sget v1, Lccsansan/ay/getDownloadingList$addDownloadListener;->deleteDownList:I

    add-int/2addr v1, v5

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    .line 50
    :cond_b
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    .line 89
    move-object v10, v1

    goto :goto_7

    .line 49
    :cond_c
    move-object v10, v1

    .line 53
    :goto_7
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const-string v5, "rid"

    invoke-virtual {v1, v5}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 54
    invoke-static {v10}, Lccsansan/k/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/k/unifiedDownload;

    move-result-object v1

    .line 55
    invoke-static {v1, v10}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsansan/k/unifiedDownload;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 56
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const-string v4, "had_add_no_start"

    invoke-static {v4, v1}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    .line 57
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v4, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->DOWNLOADING:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-eq v4, v5, :cond_d

    .line 58
    iput-object v5, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 59
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    iget-object v4, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v1, v4}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V

    .line 89
    sget v1, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/ay/getDownloadingList$addDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_d

    .line 61
    :cond_d
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    if-eqz v1, :cond_e

    .line 26
    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    nop

    :goto_8
    packed-switch v3, :pswitch_data_3

    goto :goto_9

    .line 62
    :pswitch_3
    iget-object v3, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v3, v3, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lccsansan/ay/getDownloadingList$removeDownloadListener;->getDownloadingList(ILjava/lang/String;)V

    :goto_9
    return-void

    .line 67
    :cond_f
    iget-object v5, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v5, v5, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v12, -0x1

    cmp-long v5, v7, v12

    if-nez v5, :cond_11

    .line 69
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const-string v4, "no_content_length"

    invoke-static {v4, v1}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    .line 70
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    if-eqz v1, :cond_10

    .line 26
    goto :goto_a

    :cond_10
    const/4 v3, 0x1

    :goto_a
    packed-switch v3, :pswitch_data_4

    goto :goto_b

    .line 71
    :pswitch_4
    iget-object v3, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v3, v3, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lccsansan/ay/getDownloadingList$removeDownloadListener;->getDownloadingList(ILjava/lang/String;)V

    :goto_b
    return-void

    .line 76
    :cond_11
    iget-object v5, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v5, v5, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    const v7, 0x441de574

    const/16 v8, 0x30

    invoke-static {v6, v8, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v9

    sub-int/2addr v7, v9

    const v9, -0x3fb7eb53

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    sub-int/2addr v9, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    int-to-short v12, v12

    invoke-static {v3}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v14

    cmpl-float v13, v14, v13

    int-to-byte v13, v13

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    add-int/lit8 v14, v18, -0x23

    invoke-static {v7, v9, v12, v13, v14}, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 77
    iget-object v5, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    const v7, 0x441de575

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    add-int/2addr v9, v7

    const v7, -0x3fb7eb54

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v7

    invoke-static {v8}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    int-to-short v7, v7

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v13

    int-to-byte v13, v13

    invoke-static {v6, v8, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    add-int/lit8 v6, v6, -0x21

    invoke-static {v9, v12, v7, v13, v6}, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lccsansan/aj/getDownloadingList;->ActionTypeDownload:Ljava/lang/String;

    .line 80
    :cond_12
    iget-object v5, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v5, v5, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_c

    :cond_13
    iget-object v4, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v4, v4, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_c
    move-object v9, v4

    if-eqz v1, :cond_14

    .line 26
    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    nop

    :goto_d
    packed-switch v2, :pswitch_data_5

    .line 83
    invoke-virtual {v1}, Lccsansan/k/unifiedDownload;->removeDownloadListener()Lccsansan/k/unifiedDownload$unifiedDownload;

    move-result-object v1

    sget-object v2, Lccsansan/k/unifiedDownload$unifiedDownload;->USER_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    if-ne v1, v2, :cond_15

    .line 84
    invoke-static {v10}, Lccsansan/k/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_e

    .line 86
    :cond_15
    :pswitch_5
    iget-object v7, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v8, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v12, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    invoke-static/range {v7 .. v12}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/ay/getDownloadingList$removeDownloadListener;)V

    .line 89
    :goto_e
    iget-object v1, v0, Lccsansan/ay/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v1}, Lccsansan/aj/getDownloadingList;->unifiedDownload()J

    move-result-wide v2

    const-wide/16 v4, -0x3e8

    mul-long v2, v2, v4

    invoke-static {v1, v2, v3}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsansan/aj/getDownloadingList;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
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
.end method
