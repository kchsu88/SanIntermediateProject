.class public Lccsansan/f/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static deleteDownItem:I

.field private static deleteDownList:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedCount:I

.field private static getDownloadedList:[B

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:[S

.field private static removeDownloadListener:Lccsansan/f/getDownloadingList;


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

.field private addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/xz/api/IDownloadResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

.field private getDownloadingRecordByUrl:Lccsancom/san/xz/api/unifiedDownload;

.field private unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    const/16 v0, 0x72

    sput v0, Lccsansan/f/getDownloadingList;->deleteDownItem:I

    const v0, 0x58c6d0d8

    sput v0, Lccsansan/f/getDownloadingList;->getDownloadStatusByUrl:I

    const v0, 0x1a5667d6

    sput v0, Lccsansan/f/getDownloadingList;->getDownloadedRecordByUrl:I

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/getDownloadingList;->getDownloadedList:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x1t
        0x6t
        -0xbt
        0x4t
        0xbt
        0x2t
        -0x15t
        0x13t
        0x45t
        -0x44t
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0x2bt
        -0x21t
        -0x8t
        -0x8t
        0x2t
        0xet
        -0xdt
        0x4ft
        0xdt
        -0xbt
        0x4t
        0x7t
        0x1dt
        -0x1dt
        0x2t
        -0x6t
        -0xdt
        0x4t
        0xdt
        0x12t
        -0x11t
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0x2bt
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/f/getDownloadingList;->unifiedDownload:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    .line 7
    new-instance v0, Lccsansan/f/getDownloadingList$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/f/getDownloadingList$unifiedDownload;-><init>(Lccsansan/f/getDownloadingList;)V

    iput-object v0, p0, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

    .line 44
    new-instance v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/f/getDownloadingList;)V

    iput-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingRecordByUrl:Lccsancom/san/xz/api/unifiedDownload;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/IDownloadService;
    .locals 2

    .line 1
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    iget-object p0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/f/getDownloadingList;Lccsancom/san/xz/api/IDownloadService;)Lccsancom/san/xz/api/IDownloadService;
    .locals 2

    .line 2
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput-object p1, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/2addr p0, v1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils()V
    .locals 4

    .line 18
    nop

    .line 16
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 17
    new-instance v1, Lccsanandroid/content/Intent;

    const-class v2, Lccsansan/f/removeDownloadListener;

    invoke-direct {v1, v0, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 18
    iget-object v2, p0, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    sget v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private addDownloadListener()V
    .locals 5

    .line 6
    sget v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    goto :goto_1

    .line 6
    :pswitch_0
    nop

    .line 2
    :goto_1
    iput-boolean v1, p0, Lccsansan/f/getDownloadingList;->unifiedDownload:Z

    .line 3
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    nop

    .line 4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 5
    instance-of v3, v2, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    if-eqz v3, :cond_2

    .line 4
    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 6
    :pswitch_1
    sget v3, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    :cond_3
    check-cast v2, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    invoke-interface {v2}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onDLServiceDisconnected()V

    goto :goto_2

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/f/getDownloadingList;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->addDownloadListener()V

    sget p0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/f/getDownloadingList;)Lccsancom/san/xz/api/unifiedDownload;
    .locals 2

    .line 1
    sget v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lccsansan/f/getDownloadingList;->getDownloadingRecordByUrl:Lccsancom/san/xz/api/unifiedDownload;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget v2, Lccsansan/f/getDownloadingList;->deleteDownItem:I

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
    sget-object p4, Lccsansan/f/getDownloadingList;->getDownloadedList:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/f/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/f/getDownloadingList;->getDownloadingCount:[S

    sget v6, Lccsansan/f/getDownloadingList;->getDownloadedRecordByUrl:I

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

    sget v2, Lccsansan/f/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/f/getDownloadingList;->getDownloadStatusByUrl:I

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
    sget-object p0, Lccsansan/f/getDownloadingList;->getDownloadedList:[B

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
    sget-object p0, Lccsansan/f/getDownloadingList;->getDownloadingCount:[S

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

.method public static getDownloadingList()Lccsansan/f/getDownloadingList;
    .locals 3

    .line 4
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    sget-object v0, Lccsansan/f/getDownloadingList;->removeDownloadListener:Lccsansan/f/getDownloadingList;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lccsansan/f/getDownloadingList;

    invoke-direct {v0}, Lccsansan/f/getDownloadingList;-><init>()V

    sput-object v0, Lccsansan/f/getDownloadingList;->removeDownloadListener:Lccsansan/f/getDownloadingList;

    .line 4
    :cond_1
    sget-object v0, Lccsansan/f/getDownloadingList;->removeDownloadListener:Lccsansan/f/getDownloadingList;

    sget v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v1, 0x62

    goto :goto_0

    :cond_2
    const/16 v1, 0x43

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x59

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/san/xz/api/IDownloadResultListener;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeDownloadListener()V
    .locals 6

    .line 6
    nop

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/f/getDownloadingList;->unifiedDownload:Z

    .line 3
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    sget v2, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    goto :goto_3

    :pswitch_1
    return-void

    .line 4
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 5
    instance-of v4, v2, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    if-eqz v4, :cond_1

    .line 6
    sget v4, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v4, v4, 0x2

    check-cast v2, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    invoke-interface {v2, v4}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onDLServiceConnected(Lccsancom/san/xz/api/IDownloadService;)V

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    iget-object v4, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    invoke-interface {v2, v4}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onDLServiceConnected(Lccsancom/san/xz/api/IDownloadService;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/f/getDownloadingList;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->removeDownloadListener()V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;
    .locals 2

    .line 1
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object p0

    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private unifiedDownload()V
    .locals 3

    .line 5
    sget v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    if-eqz v0, :cond_1

    .line 5
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 2
    :cond_2
    iget-object v1, p0, Lccsansan/f/getDownloadingList;->getDownloadingRecordByUrl:Lccsancom/san/xz/api/unifiedDownload;

    invoke-interface {v0, v1}, Lccsancom/san/xz/api/IDownloadService;->removeListener(Lccsancom/san/xz/api/unifiedDownload;)V

    .line 3
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    .line 5
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->addDownloadListener()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsancom/san/xz/api/IDownloadResultListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->unifiedDownload()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V
    .locals 3

    .line 13
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 13

    .line 25
    nop

    .line 13
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :pswitch_1
    goto :goto_3

    .line 13
    :catchall_0
    move-exception p1

    throw p1

    .line 11
    :goto_1
    const/16 v0, 0x2b

    goto :goto_2

    :cond_1
    const/16 v0, 0x9

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_8

    .line 25
    :goto_3
    sget v0, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 11
    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 13
    :try_start_1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    goto :goto_5

    :pswitch_2
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x5c

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_6

    .line 25
    :catchall_1
    move-exception p1

    throw p1

    .line 16
    :catch_0
    move-exception p1

    goto :goto_7

    .line 13
    :goto_5
    :try_start_3
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    if-nez p1, :cond_3

    .line 25
    :goto_6
    return-void

    .line 16
    :cond_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v3, Lccsansan/f/getDownloadingList$getDownloadingList;

    invoke-direct {v3, p0, p1}, Lccsansan/f/getDownloadingList$getDownloadingList;-><init>(Lccsansan/f/getDownloadingList;Lccsancom/san/xz/base/XzRecord;)V

    invoke-virtual {v0, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 25
    goto :goto_8

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, -0x1a5667d7

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    sub-int/2addr v3, v6

    const v6, -0x58c6d0b5

    invoke-static {v2, v2}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-string v11, ""

    cmp-long v12, v7, v9

    sub-int/2addr v1, v12

    int-to-short v1, v1

    invoke-static {v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    cmp-long v9, v7, v4

    int-to-byte v4, v9

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x58

    invoke-static {v3, v6, v1, v4, v5}, Lccsansan/f/getDownloadingList;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0x1a5667bd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    const v1, -0x58c6d094

    invoke-static {v2}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v11, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    int-to-short v3, v3

    const/high16 v4, -0x1000000

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    rsub-int/lit8 v2, v2, -0x5d

    invoke-static {v0, v1, v3, v4, v2}, Lccsansan/f/getDownloadingList;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsancom/san/xz/api/IDownloadResultListener;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lccsansan/f/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Lccsansan/f/getDownloadingList;->IncentiveDownloadUtils()V

    .line 9
    :cond_1
    iget-boolean v0, p0, Lccsansan/f/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_2

    .line 10
    instance-of v0, p1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    if-eqz v0, :cond_2

    .line 11
    check-cast p1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    iget-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    invoke-interface {p1, v0}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onDLServiceConnected(Lccsancom/san/xz/api/IDownloadService;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 15
    nop

    .line 14
    iget-object v0, p0, Lccsansan/f/getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/IDownloadService;

    if-eqz v0, :cond_0

    .line 15
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v1, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    goto :goto_2

    :cond_1
    const/16 v1, 0x36

    :goto_2
    invoke-interface {v0, p1}, Lccsancom/san/xz/api/IDownloadService;->pause(Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_1

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    :pswitch_1
    sget p1, Lccsansan/f/getDownloadingList;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/getDownloadingList;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch
.end method
