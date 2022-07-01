.class public Lccsansan/cv/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;,
        Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;,
        Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static getThumbPathByRecord:J

.field private static shouldTryHandlingAction:I

.field private static trackReportShow:I


# instance fields
.field protected IncentiveDownloadUtils:J

.field private IncentiveSDK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected addDownloadListener:J

.field protected deleteDownItem:J

.field protected deleteDownList:J

.field protected getDownloadStatusByUrl:J

.field private getDownloadedCount:Z

.field protected getDownloadedList:Z

.field protected getDownloadedRecordByUrl:Z

.field protected getDownloadingCount:J

.field protected getDownloadingList:I

.field protected getDownloadingRecordByUrl:J

.field private getPackageNameByRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pause:Z

.field protected final removeDownloadListener:Lccsansan/da/removeDownloadListener;

.field protected resume:Lccsansan/cv/getDownloadedCount;

.field private trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

.field protected unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    const-wide v0, -0x1b0902e1e1f23b3aL    # -2.3289096161959896E178

    sput-wide v0, Lccsansan/cv/IncentiveDownloadUtils;->getThumbPathByRecord:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;Z)V
    .locals 8

    .line 1
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZJJ)V
    .locals 9

    .line 3
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZ)V
    .locals 9

    .line 2
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZJJ)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x3e8

    iput v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 58
    iput-boolean v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    .line 61
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownItem:J

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingCount:J

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveSDK:Ljava/util/List;

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/util/List;

    .line 120
    new-instance v3, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v3}, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;-><init>()V

    iput-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    .line 122
    iput-boolean v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->pause:Z

    .line 190
    new-instance v0, Lccsansan/cv/getDownloadedCount;

    invoke-direct {v0}, Lccsansan/cv/getDownloadedCount;-><init>()V

    iput-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    .line 191
    iput-object p1, p0, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 194
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v1

    :cond_0
    iput-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 195
    iput-boolean p3, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    .line 196
    iput-boolean p4, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 198
    iput-wide p5, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    .line 199
    iput-wide p7, p0, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZJJJ)V
    .locals 3

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/16 v0, 0x3e8

    iput v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList:I

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 254
    iput-boolean v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    .line 257
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownItem:J

    .line 260
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingCount:J

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveSDK:Ljava/util/List;

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/util/List;

    .line 316
    new-instance v1, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v1}, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;-><init>()V

    iput-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    .line 318
    iput-boolean v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->pause:Z

    .line 386
    new-instance v0, Lccsansan/cv/getDownloadedCount;

    invoke-direct {v0}, Lccsansan/cv/getDownloadedCount;-><init>()V

    iput-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    .line 387
    iput-object p1, p0, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    .line 388
    iput-object p2, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 390
    iput-wide p9, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 391
    iput-boolean p3, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    .line 392
    iput-boolean p4, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 394
    iput-wide p5, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    .line 395
    iput-wide p7, p0, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    return-void
.end method

.method protected static IncentiveDownloadUtils(J)I
    .locals 6

    .line 357
    nop

    .line 352
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    const-wide/32 v2, 0x40000

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    cmp-long v0, p0, v2

    const/16 v2, 0x13

    :try_start_0
    div-int/2addr v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    cmp-long v0, p0, v2

    if-gez v0, :cond_2

    .line 352
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_5

    .line 357
    :goto_2
    :pswitch_1
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 352
    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    packed-switch v4, :pswitch_data_2

    .line 357
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v0

    goto :goto_4

    .line 0
    :pswitch_2
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    .line 352
    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_8

    :goto_5
    const/4 p0, 0x4

    .line 357
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    .line 352
    sget p0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    goto :goto_6

    :cond_4
    const/4 v4, 0x0

    :goto_6
    packed-switch v4, :pswitch_data_3

    .line 357
    const/16 p0, 0x8

    goto :goto_7

    .line 352
    :pswitch_3
    const/4 p0, 0x3

    .line 357
    :cond_5
    :goto_7
    const-wide/16 v2, 0x200

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    .line 352
    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    .line 357
    :cond_6
    mul-int/lit8 p0, p0, 0x2

    :cond_7
    const-wide/16 v2, 0x400

    cmp-long p1, v0, v2

    if-lez p1, :cond_8

    mul-int/lit8 p0, p0, 0x2

    :cond_8
    :goto_8
    return p0

    :pswitch_data_0
    .packed-switch 0x60
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

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/cv/IncentiveDownloadUtils;->getThumbPathByRecord:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private addDownloadListener()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 395
    nop

    .line 370
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 368
    :cond_0
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 370
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 395
    sget v3, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/2addr v3, v2

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 370
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    packed-switch v1, :pswitch_data_1

    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    :pswitch_0
    nop

    .line 370
    :pswitch_1
    if-eqz v0, :cond_3

    const/16 v1, 0x1a

    goto :goto_2

    :cond_3
    const/16 v1, 0x48

    :goto_2
    packed-switch v1, :pswitch_data_2

    goto :goto_3

    .line 371
    :pswitch_2
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 374
    :cond_4
    :goto_3
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    .line 377
    :try_start_1
    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    sget-object v2, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-virtual {v1, v2}, Lccsansan/da/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {v1, v2, v4}, Lccsansan/bn/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Ljava/lang/Throwable;)V

    if-nez v0, :cond_5

    .line 386
    :try_start_2
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 387
    :cond_5
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 370
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 387
    :catch_0
    move-exception v0

    :goto_4
    nop

    .line 395
    return-void

    .line 387
    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v4, v1

    .line 388
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v3, "dl_checkwritabe"

    invoke-static {v1, v2, v4, v3}, Lccsansan/bn/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 389
    new-instance v1, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v2, 0xc

    const-string v3, "target file could not write"

    invoke-direct {v1, v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :goto_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {v2, v3, v4}, Lccsansan/bn/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Ljava/lang/Throwable;)V

    if-nez v0, :cond_6

    .line 394
    :try_start_4
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 395
    :cond_6
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_6
    throw v1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener(Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Z
    .locals 7

    .line 153
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 139
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveSDK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 153
    :pswitch_0
    nop

    .line 139
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveSDK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 153
    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget v4, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v4, v4, 0x7d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 141
    const/16 v4, 0x20

    goto :goto_2

    :cond_1
    const/16 v4, 0x43

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 153
    :pswitch_1
    nop

    .line 139
    move-object v4, v3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_2

    :goto_4
    goto :goto_5

    .line 139
    :pswitch_2
    sget v4, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v4, v4, 0x39

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v4}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x46

    :try_start_1
    div-int/2addr v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_2

    goto :goto_4

    .line 139
    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v4}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    .line 145
    :goto_5
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 141
    const/16 p1, 0x41

    goto :goto_6

    :cond_5
    const/16 p1, 0x3c

    :goto_6
    packed-switch p1, :pswitch_data_3

    .line 153
    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    goto :goto_8

    .line 148
    :pswitch_3
    iget-object p1, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {p0, p1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)[B

    move-result-object p1

    if-eqz p1, :cond_9

    .line 139
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 149
    :cond_6
    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_7

    .line 151
    :cond_7
    invoke-static {p1}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find check sum header value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", do md5 value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    shr-int/lit8 v1, v1, 0x6

    rsub-int v1, v1, 0x7d39

    const-string v2, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    invoke-static {v2, v1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v4, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 141
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return p1

    :catchall_2
    move-exception p1

    throw p1

    .line 153
    :cond_8
    return p1

    :cond_9
    :goto_7
    return v2

    .line 141
    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    nop

    :goto_9
    packed-switch v2, :pswitch_data_4

    .line 145
    goto :goto_a

    .line 153
    :pswitch_4
    nop

    :goto_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method protected static getDownloadingList(Ljava/io/InputStream;[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    if-ge v1, p3, :cond_7

    add-int v2, p2, v1

    sub-int v3, p3, v1

    .line 358
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_6

    .line 363
    sget p0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x1

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 358
    if-lez v1, :cond_3

    goto :goto_1

    .line 363
    :pswitch_0
    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_4

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    const/4 p0, 0x7

    goto :goto_2

    :cond_3
    const/4 p0, 0x6

    :goto_2
    packed-switch p0, :pswitch_data_1

    :goto_3
    goto :goto_4

    .line 358
    :cond_4
    :pswitch_1
    move v1, v2

    goto :goto_7

    .line 363
    :goto_4
    sget p0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p3, p0, 0x80

    sput p3, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 358
    :pswitch_2
    goto :goto_6

    .line 363
    :goto_5
    :try_start_1
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    nop

    .line 358
    :goto_7
    nop

    .line 363
    return v1

    :catchall_1
    move-exception p0

    throw p0

    .line 358
    :cond_6
    add-int/2addr v1, v2

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 367
    nop

    .line 0
    const/16 v0, 0x100

    .line 364
    new-array v0, v0, [B

    .line 366
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    .line 367
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 p0, 0x5

    :try_start_1
    div-int/2addr p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Z
    .locals 9

    .line 350
    nop

    .line 330
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v6, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception p1

    throw p1

    .line 317
    :cond_0
    :try_start_2
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    sget v3, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v3, v3, 0x65

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 319
    const/16 v3, 0x1a

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 317
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 318
    invoke-virtual {p1, v3}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :pswitch_1
    goto :goto_4

    .line 317
    :goto_2
    check-cast v3, Ljava/lang/String;

    .line 318
    invoke-virtual {p1, v3}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v8, 0x45

    :try_start_4
    div-int/2addr v8, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 317
    :catchall_1
    move-exception p1

    throw p1

    .line 323
    :cond_4
    :goto_4
    :try_start_5
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 319
    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    const/16 p1, 0x45

    :goto_5
    packed-switch p1, :pswitch_data_2

    .line 323
    const-string p1, "crc32c="

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez p1, :cond_6

    .line 336
    :pswitch_2
    invoke-static {v7}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    rsub-int p1, p1, 0x7d39

    invoke-static {v4, p1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 337
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crc32c header value:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return v5

    .line 323
    :cond_6
    const/4 p1, 0x7

    .line 328
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-static {v0}, Lccsansan/cv/addDownloadListener;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v0, :cond_7

    .line 319
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    :goto_6
    packed-switch v3, :pswitch_data_3

    goto :goto_8

    .line 350
    :pswitch_3
    sget v3, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 330
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/16 v6, 0x5b

    :try_start_8
    div-int/2addr v6, v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v3, :cond_9

    goto :goto_7

    .line 350
    :catchall_2
    move-exception p1

    throw p1

    .line 330
    :cond_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v3, :cond_9

    :goto_7
    goto :goto_8

    :cond_9
    invoke-static {v7}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x7d39

    invoke-static {v4, v3}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 334
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find check sum header value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", do crc32c value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return p1

    :goto_8
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    cmp-long p1, v6, v1

    rsub-int p1, p1, 0x7d3a

    invoke-static {v4, p1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 336
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crc32c do value:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return v5

    .line 337
    :catch_0
    move-exception p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    cmp-long v0, v6, v1

    rsub-int v0, v0, 0x7d3a

    invoke-static {v4, v0}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;
    .locals 2

    .line 2
    nop

    .line 1
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add crc32c check key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d39

    const-string v1, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    invoke-static {v1, v0}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method protected IncentiveDownloadUtils(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 315
    nop

    .line 0
    const/16 v0, 0x2000

    .line 263
    new-array v2, v0, [B

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide v5, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gez v9, :cond_1

    .line 268
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_1
    sget v3, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v3, v3, 0x5b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 265
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_3
    if-eqz p4, :cond_6

    .line 315
    sget v3, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 268
    invoke-interface/range {p4 .. p4}, Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;->deleteDownItem()Z

    move-result v3

    const/4 v5, 0x0

    :try_start_0
    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    goto :goto_2

    .line 315
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 268
    :cond_4
    invoke-interface/range {p4 .. p4}, Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;->deleteDownItem()Z

    move-result v3

    if-nez v3, :cond_5

    .line 315
    :goto_2
    goto :goto_3

    .line 269
    :cond_5
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v2, 0x8

    const-string v3, "canceled by small file task when start"

    invoke-direct {v0, v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    const/4 v3, 0x0

    :cond_7
    :goto_4
    const-string v5, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    if-ge v3, v0, :cond_d

    .line 273
    :try_start_1
    iget-wide v9, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    int-to-long v11, v3

    add-long/2addr v9, v11

    iget-wide v11, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_8

    .line 268
    const/16 v6, 0x41

    goto :goto_5

    :cond_8
    const/16 v6, 0x22

    :goto_5
    packed-switch v6, :pswitch_data_1

    move-object/from16 v9, p1

    goto/16 :goto_a

    .line 273
    :pswitch_2
    rsub-int v6, v3, 0x2000

    .line 274
    move-object/from16 v9, p1

    invoke-virtual {v9, v2, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_9

    .line 268
    const/16 v10, 0x39

    goto :goto_6

    :cond_9
    const/16 v10, 0x15

    :goto_6
    packed-switch v10, :pswitch_data_2

    .line 274
    if-nez v3, :cond_e

    goto :goto_8

    :pswitch_3
    add-int/2addr v3, v6

    if-eqz p4, :cond_a

    .line 268
    const/16 v6, 0x14

    goto :goto_7

    :cond_a
    const/16 v6, 0x57

    :goto_7
    packed-switch v6, :pswitch_data_3

    goto :goto_4

    .line 282
    :pswitch_4
    invoke-interface/range {p4 .. p4}, Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;->deleteDownItem()Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_7

    goto :goto_a

    .line 274
    :goto_8
    if-gez v6, :cond_b

    .line 268
    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    packed-switch v6, :pswitch_data_4

    .line 274
    const/4 v3, -0x1

    .line 268
    sget v6, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v6, v6, 0x1b

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/2addr v6, v4

    if-nez v6, :cond_c

    .line 315
    :cond_c
    goto :goto_a

    .line 282
    :catch_0
    move-exception v0

    invoke-static {v8, v8, v8}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    add-int/lit16 v2, v2, 0x7d39

    invoke-static {v5, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v3, "read error while read from network"

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-direct {v2, v4, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    const v2, -0xff82c7

    invoke-static {v8, v8, v8}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 291
    const-string v3, "error while read from network"

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-direct {v2, v4, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 269
    :cond_d
    move-object/from16 v9, p1

    .line 292
    :cond_e
    :goto_a
    :pswitch_5
    if-gez v3, :cond_f

    goto :goto_c

    :cond_f
    if-nez v3, :cond_10

    goto/16 :goto_0

    .line 304
    :cond_10
    :try_start_2
    invoke-virtual {v1, v2, v8, v3}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    iget-wide v5, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    int-to-long v10, v3

    add-long v14, v5, v10

    iput-wide v14, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 312
    iget-boolean v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    if-eqz v3, :cond_0

    if-eqz p5, :cond_11

    .line 268
    const/16 v3, 0xe

    goto :goto_b

    :cond_11
    const/16 v3, 0x59

    :goto_b
    packed-switch v3, :pswitch_data_5

    .line 315
    sget v3, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/2addr v3, v7

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 313
    :cond_12
    iget-object v13, v1, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    move-object/from16 v12, p5

    move-wide/from16 v16, v3

    invoke-interface/range {v12 .. v17}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    const-string v0, "error while write to file"

    cmp-long v8, v3, v6

    rsub-int v3, v8, 0x7d3a

    invoke-static {v5, v3}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method protected IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)[B
    .locals 2

    .line 351
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p1}, Lccsansan/cb/getDownloadingList;->getDownloadingList(Lccsansan/da/removeDownloadListener;)[B

    move-result-object p1

    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public addDownloadListener(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;
    .locals 2

    .line 2
    nop

    .line 1
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveSDK:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add md5 check key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x7d39

    const-string v1, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    invoke-static {v1, v0}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method protected addDownloadListener(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 260
    nop

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    add-int/lit16 v1, v1, 0x7d39

    const-string v2, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    invoke-static {v2, v1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 220
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doReceiveFile seek pos : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    sget-object v3, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-virtual {v1, v3}, Lccsansan/da/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V

    .line 222
    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    iget-wide v4, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingCount:J

    add-long/2addr v4, p2

    invoke-virtual {v1, v3, v4, v5}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v0}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x7d39

    invoke-static {v2, v1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 231
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do receive file, is large:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", fastspeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedList:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-boolean v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 260
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 232
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedList:Z

    if-eqz v1, :cond_2

    .line 260
    const/16 v1, 0x24

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 233
    invoke-virtual/range {p0 .. p6}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;I)V

    goto :goto_2

    .line 235
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/2addr p1, v3

    .line 237
    :goto_2
    iget-object p1, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    .line 244
    iget-wide p1, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide p3, p0, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long p5, p1, p3

    if-ltz p5, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x7d39

    invoke-static {v2, p1}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 245
    const-string p2, "Completed size less than file size"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance p1, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string p2, "Completed size less than file size!"

    invoke-direct {p1, v3, p2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 247
    :try_start_3
    instance-of p2, p1, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_4

    .line 248
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string p4, "dl_recfile"

    invoke-static {p2, p3, p1, p4}, Lccsansan/bn/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 249
    new-instance p2, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 p3, 0xc

    const-string p4, "Create file failed"

    invoke-direct {p2, p3, p1, p4}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    .line 251
    :cond_4
    new-instance p2, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string p3, "Seek file failed"

    invoke-direct {p2, v0, p1, p3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    :goto_3
    iget-object p2, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()J
    .locals 4

    .line 3
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;
    .locals 2

    .line 2
    nop

    .line 1
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveSDK:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove md5 check key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int v0, v0, 0x7d39

    const-string v1, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    invoke-static {v1, v0}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(I)V
    .locals 3

    .line 316
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput p1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 3
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v7, 0x0

    .line 3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;Z)V

    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;Z)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 219
    move-object/from16 v8, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p5

    const-string v10, " ms"

    const-string v11, "\uc4b2\u81d6\u4e4c\u14da\ud156\u9f9d\u6458\u22d0\uef49\ub5df\u725c\u38dc\u8553\u43d1\u0814\ud6c3\u935f\u59c4\u264d\uec91\ua90a"

    const-string v12, ":"

    .line 0
    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    const-string v5, "completed:"

    const-string v6, ", request start:"

    const-string v7, ", request end:"

    cmpl-float v2, v2, v3

    add-int/lit16 v2, v2, 0x7d38

    invoke-static {v4, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 142
    sget v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 7
    :cond_0
    invoke-interface/range {p4 .. p4}, Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;->deleteDownItem()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v2, 0x8

    const-string v3, "canceled by task when start"

    invoke-direct {v1, v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    :goto_0
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_26

    .line 11
    invoke-direct/range {p0 .. p0}, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener()V

    .line 14
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v2}, Lccsansan/cv/getDownloadedCount;->removeDownloadListener()V

    .line 17
    const-wide/32 v16, 0xf4240

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_35
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    :try_start_1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\uc494\u6724\u83a9\u2e37\u4aa3\uf545\u1198\ubc18\ud8de\u7b1d\ua7ef\uc27c\u6efc\u8971\u35cb\u504e\ufcd2\u1f11"

    const v19, 0xa387

    invoke-static {v14, v3, v3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v20

    cmpl-float v3, v20, v3

    sub-int v3, v19, v3

    invoke-static {v7, v3}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsansan/dn/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_35
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    :try_start_2
    const-string v2, "Accept-Ranges"

    const-string v3, "bytes"

    .line 20
    invoke-virtual {v7, v2, v3}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_31
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    if-nez v2, :cond_3

    :try_start_3
    const-string v2, "portal"

    .line 22
    move-object/from16 v3, p1

    invoke-virtual {v7, v2, v3}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    goto :goto_5

    .line 150
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v4

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    const/4 v15, 0x1

    :goto_1
    move-object v10, v0

    goto/16 :goto_3f

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    :goto_2
    const/4 v15, 0x1

    goto/16 :goto_3b

    .line 190
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object v10, v12

    move-object/from16 v27, v13

    :goto_3
    const/4 v15, 0x1

    goto/16 :goto_3d

    .line 191
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_3e

    .line 23
    :cond_3
    :goto_5
    :try_start_4
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_33
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_31
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    if-nez v2, :cond_4

    :try_start_5
    const-string v2, "trace_id"

    .line 24
    move-object/from16 v3, p2

    invoke-virtual {v7, v2, v3}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p6, :cond_5

    const-string v2, "Connection"

    const-string v3, "Close"

    .line 26
    invoke-virtual {v7, v2, v3}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    :cond_5
    :try_start_6
    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_33
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_31
    .catchall {:try_start_6 .. :try_end_6} :catchall_11

    const-wide/16 v19, -0x1

    cmp-long v21, v2, v4

    if-gtz v21, :cond_9

    .line 219
    sget v2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v3, v2, 0x73

    rem-int/lit16 v15, v3, 0x80

    sput v15, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 27
    :cond_6
    :try_start_7
    iget-wide v14, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v3, v14, v4

    if-gtz v3, :cond_7

    .line 142
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    :goto_6
    packed-switch v3, :pswitch_data_0

    goto :goto_9

    .line 219
    :pswitch_0
    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 142
    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_1

    .line 219
    :try_start_8
    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    goto :goto_8

    .line 27
    :pswitch_1
    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    cmp-long v14, v2, v19

    if-eqz v14, :cond_a

    goto :goto_9

    .line 219
    :goto_8
    cmp-long v14, v2, v19

    :try_start_9
    array-length v2, v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v14, :cond_a

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 27
    :cond_9
    :goto_9
    nop

    .line 29
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRange  start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_31
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    :try_start_b
    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    add-long/2addr v14, v4

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    add-long/2addr v2, v4

    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    invoke-virtual {v7, v2, v3, v4, v5}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload(JJ)V

    .line 33
    :cond_a
    invoke-interface {v1, v7}, Lccsansan/dn/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;)Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;

    move-result-object v14

    const-string v2, "Content-Type"

    .line 34
    invoke-virtual {v14, v2}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    invoke-virtual {v14}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList()I

    move-result v2

    .line 36
    iget-object v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v3}, Lccsansan/cv/getDownloadedCount;->unifiedDownload()V

    .line 39
    invoke-virtual {v8, v14}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Z

    move-result v3
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_30
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2e
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    if-nez v3, :cond_f

    .line 41
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v3, 0x194

    const/4 v4, 0x5

    if-eq v2, v3, :cond_b

    .line 142
    const/16 v3, 0x5d

    goto :goto_a

    :cond_b
    const/4 v3, 0x5

    :goto_a
    packed-switch v3, :pswitch_data_2

    :pswitch_2
    goto :goto_d

    .line 41
    :pswitch_3
    const/16 v3, 0x193

    if-eq v2, v3, :cond_c

    .line 142
    const/4 v3, 0x1

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    :goto_b
    packed-switch v3, :pswitch_data_3

    .line 41
    const/16 v3, 0x19a

    if-eq v2, v3, :cond_d

    .line 142
    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    const/16 v3, 0xd

    :goto_c
    packed-switch v3, :pswitch_data_4

    .line 41
    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_e

    const/16 v2, 0x11

    .line 52
    :try_start_d
    iget-object v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v3}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 53
    const-wide/16 v3, 0x0

    iput-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_e

    :goto_d
    nop

    .line 54
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v2, 0x5

    goto :goto_e

    .line 53
    :catch_4
    move-exception v0

    const/4 v2, 0x5

    .line 65
    :cond_e
    :goto_e
    :try_start_f
    new-instance v3, Lccsansan/aw/getDownloadingRecordByUrl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 150
    :catchall_2
    move-exception v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    :goto_f
    const/4 v15, 0x1

    const-wide/16 v22, 0x0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    :goto_10
    const-wide/16 v4, 0x0

    goto/16 :goto_2

    .line 190
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object v10, v12

    move-object/from16 v27, v13

    :goto_11
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    .line 191
    :catch_7
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    :goto_12
    const-wide/16 v4, 0x0

    goto/16 :goto_4

    .line 65
    :cond_f
    :try_start_10
    const-string v3, "Content-Length"

    .line 70
    invoke-virtual {v14, v3}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2e
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    if-eqz v3, :cond_11

    :try_start_11
    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownItem:J
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const-wide/16 v22, 0x0

    cmp-long v5, v3, v22

    if-lez v5, :cond_10

    .line 142
    const/4 v5, 0x1

    goto :goto_13

    :cond_10
    const/4 v5, 0x0

    :goto_13
    packed-switch v5, :pswitch_data_5

    move-object v15, v7

    goto :goto_18

    .line 70
    :pswitch_4
    move-object v15, v7

    :try_start_12
    iget-wide v6, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    sub-long/2addr v3, v6

    goto :goto_19

    .line 150
    :catchall_3
    move-exception v0

    goto :goto_14

    :catch_8
    move-exception v0

    goto :goto_15

    .line 190
    :catch_9
    move-exception v0

    goto :goto_16

    .line 191
    :catch_a
    move-exception v0

    goto :goto_17

    .line 150
    :catchall_4
    move-exception v0

    move-object v15, v7

    :goto_14
    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    move-object v6, v15

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v15, v7

    :goto_15
    move-object v1, v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v6, v15

    goto :goto_10

    .line 190
    :catch_c
    move-exception v0

    move-object v15, v7

    :goto_16
    move-object v1, v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object v10, v12

    move-object/from16 v27, v13

    move-object v6, v15

    goto :goto_11

    .line 191
    :catch_d
    move-exception v0

    move-object v15, v7

    :goto_17
    move-object v1, v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    move-object v6, v15

    goto :goto_12

    .line 70
    :cond_11
    move-object v15, v7

    :goto_18
    :try_start_13
    invoke-virtual {v14}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v3

    .line 71
    :goto_19
    iput-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_2d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2b
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    const/16 v5, 0xce

    const-string v6, "Content-Range"

    if-ne v2, v5, :cond_13

    .line 73
    :try_start_14
    invoke-virtual {v14, v6}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    :try_start_15
    invoke-virtual {v14}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Lccsansan/bw/getAdFormat;->removeDownloadListener(Ljava/lang/String;J)Lccsanandroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 78
    iget-object v7, v5, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 79
    :try_start_16
    iget-object v7, v5, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-wide/from16 p1, v10

    :try_start_17
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "partial  start : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " filesize : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " content-range : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 219
    sget v5, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v5, v5, 0x35

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v5, v5, 0x2

    .line 82
    move-wide/from16 v10, p1

    goto/16 :goto_1e

    .line 150
    :catchall_5
    move-exception v0

    goto :goto_1a

    :catch_e
    move-exception v0

    goto :goto_1b

    .line 190
    :catch_f
    move-exception v0

    goto :goto_1c

    .line 191
    :catch_10
    move-exception v0

    goto :goto_1d

    .line 150
    :catchall_6
    move-exception v0

    move-wide/from16 p1, v10

    :goto_1a
    move-wide/from16 v22, p1

    move-object v10, v0

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    const/4 v15, 0x1

    goto/16 :goto_3f

    :catch_11
    move-exception v0

    move-wide/from16 p1, v10

    :goto_1b
    move-wide/from16 v4, p1

    move-object v1, v0

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    goto/16 :goto_2

    .line 190
    :catch_12
    move-exception v0

    move-wide/from16 p1, v10

    :goto_1c
    move-wide/from16 v4, p1

    move-object v1, v0

    move-object v10, v12

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    goto/16 :goto_3

    .line 191
    :catch_13
    move-exception v0

    move-wide/from16 p1, v10

    :goto_1d
    move-wide/from16 v4, p1

    move-object v1, v0

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    goto/16 :goto_4

    .line 80
    :cond_12
    nop

    .line 81
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uc485\u9b66\u7b36\udbdf\ubb9f\u1ba3\ufa68\u5a42\u3aec\u9ae0\u7abe\ud944\ub917\u1965\uf9fa\u5988\u3842\u9859\u782e\ud8f4\ub89f\u1f53\uff68\u5f7f\u3fc1\u9f83\u7fe0\ude71\ube03\u1ed1\ufea4\u5eb1\u3d49\u9d1b\u7dd5\uddea\ubdae\u1c0d\ufc15\u5c21\u3cbe\u9c80\u7310\ud371\ub333\u13cb\uf393\u53a2\u3236\u923d\u72c7\ud28c\ub2a4\u1171\uf103\u51de\u31ea\u91f1\u7052\ud016\ub031\u10e5\uf08b\u5759\u3775\u972c\u77b4\ud7cb\ub64f\u167f\uf630\u568f\u36c3\u96e1"

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x5fcf

    invoke-static {v2, v4}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lccsansan/aw/getDownloadingRecordByUrl;

    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    const-string v3, "Bad range header"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 150
    :catchall_7
    move-exception v0

    move-object v10, v0

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    const/4 v15, 0x1

    const-wide/16 v22, 0x0

    goto/16 :goto_3f

    :catch_14
    move-exception v0

    move-object v1, v0

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    goto/16 :goto_10

    .line 190
    :catch_15
    move-exception v0

    move-object v1, v0

    move-object v10, v12

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    goto/16 :goto_11

    .line 191
    :catch_16
    move-exception v0

    move-object v1, v0

    move-object/from16 v27, v13

    move-object v6, v15

    move-object/from16 v7, v25

    goto/16 :goto_12

    .line 71
    :cond_13
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const-wide/16 v10, 0x0

    .line 82
    :goto_1e
    const-string v7, ""

    const-wide/16 v22, 0x0

    cmp-long v5, v3, v22

    if-ltz v5, :cond_20

    .line 88
    move-wide/from16 p1, v10

    :try_start_19
    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    cmp-long v5, v10, v22

    if-ltz v5, :cond_1f

    .line 91
    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    add-long/2addr v10, v3

    iput-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file size:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", mLength="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", length="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", completed="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " <- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_22
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    if-eqz v9, :cond_16

    .line 142
    sget v5, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v5, v5, 0x2d

    rem-int/lit16 v10, v5, 0x80

    sput v10, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_14

    .line 96
    :cond_14
    :try_start_1a
    iget-object v5, v8, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    iput-wide v3, v5, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:J

    .line 97
    iput v2, v5, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    .line 98
    invoke-virtual {v14, v6}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 99
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    invoke-static {v2, v14}, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;

    .line 100
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    iput-wide v3, v2, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadStatusByUrl:J

    .line 101
    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    iput-wide v3, v2, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:J

    .line 102
    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iput-wide v3, v2, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:J

    .line 103
    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    iput-wide v3, v2, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:J

    .line 104
    iget-object v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iput-object v3, v2, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_1f

    :catch_17
    move-exception v0

    .line 108
    :goto_1f
    :try_start_1b
    iget-object v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_18
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object/from16 v2, p5

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-wide/from16 v12, v22

    move-object/from16 v28, v7

    move-object/from16 v18, v15

    const/4 v15, 0x1

    move-wide v6, v10

    :try_start_1c
    invoke-interface/range {v2 .. v7}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;JJ)V

    .line 109
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v2}, Lccsansan/cv/getDownloadedCount;->getDownloadingList()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_1b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 142
    sget v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_15

    const/4 v7, 0x1

    goto :goto_20

    :cond_15
    const/4 v7, 0x0

    :goto_20
    packed-switch v7, :pswitch_data_6

    goto :goto_24

    .line 219
    :pswitch_5
    goto :goto_24

    .line 150
    :catchall_8
    move-exception v0

    move-object/from16 v18, v15

    const/4 v15, 0x1

    move-wide/from16 v22, p1

    move-object v10, v0

    move-object/from16 v27, v13

    :goto_21
    move-object/from16 v6, v18

    move-object/from16 v7, v25

    goto/16 :goto_3f

    :catch_18
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v18, v15

    const/4 v15, 0x1

    move-wide/from16 v4, p1

    move-object v1, v0

    move-object/from16 v27, v13

    :goto_22
    move-object/from16 v6, v18

    move-object/from16 v7, v25

    goto/16 :goto_3b

    .line 190
    :catch_19
    move-exception v0

    move-object/from16 v18, v15

    const/4 v15, 0x1

    move-wide/from16 v4, p1

    move-object v1, v0

    move-object v10, v12

    move-object/from16 v27, v13

    move-object/from16 v6, v18

    move-object/from16 v7, v25

    goto/16 :goto_3d

    .line 191
    :catch_1a
    move-exception v0

    move-object/from16 v18, v15

    const/4 v15, 0x1

    move-wide/from16 v4, p1

    move-object v1, v0

    move-object/from16 v27, v13

    :goto_23
    move-object/from16 v6, v18

    move-object/from16 v7, v25

    goto/16 :goto_3e

    .line 92
    :cond_16
    move-object/from16 v28, v7

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v18, v15

    move-wide/from16 v12, v22

    const/4 v15, 0x1

    .line 112
    :goto_24
    :try_start_1d
    invoke-virtual {v14}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lccsansan/dn/IncentiveDownloadUtils;->unifiedDownload()I

    move-result v7

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;I)V

    .line 113
    iget-wide v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadStatusByUrl:J
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    cmp-long v3, v1, v12

    if-nez v3, :cond_1a

    :try_start_1e
    iget-wide v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->deleteDownList:J

    cmp-long v3, v1, v19

    if-eqz v3, :cond_17

    .line 142
    const/16 v3, 0x43

    goto :goto_25

    :cond_17
    const/16 v3, 0x41

    :goto_25
    packed-switch v3, :pswitch_data_7

    .line 113
    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    :pswitch_6
    invoke-direct {v8, v14}, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {v8, v14}, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 114
    :cond_18
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 115
    iput-wide v12, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    if-eqz v9, :cond_19

    .line 117
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v5, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    const-wide/16 v3, 0x0

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v6}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    .line 119
    :cond_19
    new-instance v1, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check sum failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 150
    :catchall_9
    move-exception v0

    move-wide/from16 v22, p1

    move-object v10, v0

    goto/16 :goto_21

    :catch_1b
    move-exception v0

    move-wide/from16 v4, p1

    move-object v1, v0

    goto/16 :goto_22

    .line 190
    :catch_1c
    move-exception v0

    move-wide/from16 v4, p1

    move-object v1, v0

    move-object/from16 v6, v18

    move-object/from16 v7, v25

    goto/16 :goto_39

    .line 191
    :catch_1d
    move-exception v0

    move-wide/from16 v4, p1

    move-object v1, v0

    goto/16 :goto_23

    .line 119
    :cond_1a
    nop

    .line 121
    :try_start_1f
    iput-boolean v15, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_21
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 132
    :try_start_20
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iput-wide v2, v1, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception v0

    :goto_26
    if-eqz v18, :cond_1b

    .line 137
    invoke-virtual/range {v18 .. v18}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    :cond_1b
    if-eqz v9, :cond_1e

    .line 141
    iget-boolean v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    if-eqz v1, :cond_1c

    .line 142
    const/4 v14, 0x1

    goto :goto_27

    :cond_1c
    const/4 v14, 0x0

    :goto_27
    packed-switch v14, :pswitch_data_8

    :goto_28
    goto :goto_29

    .line 219
    :pswitch_7
    sget v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1d

    .line 142
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide v5, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v6}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    const/4 v1, 0x0

    :try_start_21
    array-length v1, v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_28

    .line 219
    :catchall_a
    move-exception v0

    move-object v1, v0

    throw v1

    .line 142
    :cond_1d
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide v5, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v6}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    .line 144
    :goto_29
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-boolean v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    invoke-interface {v9, v1, v2}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Z)V

    .line 145
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v1}, Lccsansan/cv/getDownloadedCount;->getDownloadedRecordByUrl()V

    .line 148
    :cond_1e
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    move-wide/from16 v22, p1

    sub-long v2, v2, v22

    invoke-virtual {v1, v2, v3}, Lccsansan/cv/getDownloadedCount;->getDownloadingList(J)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    move-object/from16 v5, v28

    invoke-static {v5, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int v2, v2, 0x457e

    move-object/from16 v7, v25

    invoke-static {v7, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    iget-wide v2, v2, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J

    div-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v11, v27

    invoke-static {v11, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :catchall_b
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v7, v25

    goto/16 :goto_2b

    :catch_1f
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v7, v25

    goto/16 :goto_2c

    .line 190
    :catch_20
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v7, v25

    goto/16 :goto_2e

    .line 191
    :catch_21
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v7, v25

    goto/16 :goto_2f

    .line 88
    :cond_1f
    move-wide/from16 v22, p1

    move-object v5, v7

    move-object/from16 v26, v12

    move-object v11, v13

    move-object/from16 v18, v15

    move-object/from16 v10, v24

    move-object/from16 v7, v25

    const/4 v15, 0x1

    goto :goto_2a

    .line 150
    :catchall_c
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v18, v15

    move-object/from16 v7, v25

    const/4 v15, 0x1

    move-object v10, v0

    move-object/from16 v27, v13

    goto/16 :goto_36

    :catch_22
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v26, v12

    move-object/from16 v18, v15

    move-object/from16 v7, v25

    const/4 v15, 0x1

    move-object v1, v0

    move-object/from16 v27, v13

    goto/16 :goto_2d

    .line 190
    :catch_23
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v18, v15

    move-object/from16 v7, v25

    const/4 v15, 0x1

    move-object v1, v0

    move-object v10, v12

    move-object/from16 v27, v13

    move-object/from16 v6, v18

    move-wide/from16 v4, v22

    goto/16 :goto_3d

    .line 191
    :catch_24
    move-exception v0

    move-wide/from16 v22, p1

    move-object/from16 v18, v15

    move-object/from16 v7, v25

    const/4 v15, 0x1

    move-object v1, v0

    move-object/from16 v27, v13

    goto/16 :goto_30

    .line 82
    :cond_20
    move-object v5, v7

    move-wide/from16 v22, v10

    move-object/from16 v26, v12

    move-object v11, v13

    move-object/from16 v18, v15

    move-object/from16 v10, v24

    move-object/from16 v7, v25

    const/4 v15, 0x1

    .line 150
    :goto_2a
    :try_start_22
    new-instance v1, Lccsansan/aw/getDownloadingRecordByUrl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Length is less than 0 statusCode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "filesize = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_28
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    move-object/from16 v24, v10

    move-object/from16 v27, v11

    :try_start_23
    iget-wide v10, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " length = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Content-Range = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_25
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_2b

    :catch_25
    move-exception v0

    goto :goto_2c

    .line 190
    :catch_26
    move-exception v0

    goto :goto_2e

    .line 191
    :catch_27
    move-exception v0

    goto :goto_2f

    .line 150
    :catchall_e
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v27, v11

    :goto_2b
    move-object v10, v0

    goto/16 :goto_36

    :catch_28
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v27, v11

    :goto_2c
    move-object v1, v0

    :goto_2d
    move-object/from16 v6, v18

    move-wide/from16 v4, v22

    goto/16 :goto_3b

    .line 190
    :catch_29
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v27, v11

    :goto_2e
    move-object v1, v0

    move-object/from16 v6, v18

    move-wide/from16 v4, v22

    goto/16 :goto_39

    .line 191
    :catch_2a
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v27, v11

    :goto_2f
    move-object v1, v0

    :goto_30
    move-object/from16 v6, v18

    move-wide/from16 v4, v22

    goto/16 :goto_3e

    .line 150
    :catchall_f
    move-exception v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    move-object/from16 v18, v15

    goto :goto_31

    :catch_2b
    move-exception v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v18, v15

    goto :goto_32

    .line 190
    :catch_2c
    move-exception v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v18, v15

    goto :goto_33

    .line 191
    :catch_2d
    move-exception v0

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    move-object/from16 v18, v15

    goto :goto_34

    .line 150
    :catchall_10
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    :goto_31
    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    goto :goto_35

    :catch_2e
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    :goto_32
    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    move-object v1, v0

    move-wide v4, v12

    goto :goto_37

    .line 190
    :catch_2f
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    :goto_33
    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    move-object v1, v0

    move-wide v4, v12

    goto :goto_38

    .line 191
    :catch_30
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    :goto_34
    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    move-object v1, v0

    move-wide v4, v12

    goto :goto_3a

    .line 150
    :catchall_11
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    :goto_35
    move-object v10, v0

    move-wide/from16 v22, v12

    :goto_36
    move-object/from16 v6, v18

    goto/16 :goto_3f

    :catch_31
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object v1, v0

    :goto_37
    move-object/from16 v6, v18

    goto/16 :goto_3b

    .line 190
    :catch_32
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object v1, v0

    :goto_38
    move-object/from16 v6, v18

    :goto_39
    move-object/from16 v10, v26

    goto/16 :goto_3d

    .line 191
    :catch_33
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object v1, v0

    :goto_3a
    move-object/from16 v6, v18

    goto/16 :goto_3e

    .line 190
    :catch_34
    move-exception v0

    move-object v1, v6

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object/from16 v10, v26

    goto :goto_3c

    .line 150
    :catchall_12
    move-exception v0

    move-object v1, v6

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object v10, v0

    move-wide/from16 v22, v12

    goto/16 :goto_3f

    :catch_35
    move-exception v0

    move-object v1, v6

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object v1, v0

    .line 190
    :goto_3b
    :try_start_24
    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v26

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-direct {v2, v10, v1, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;Ljava/lang/String;)V

    throw v2

    :catch_36
    move-exception v0

    move-object v1, v6

    move-object/from16 v24, v10

    move-object v7, v11

    move-object v10, v12

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    :goto_3c
    move-object v1, v0

    .line 191
    :goto_3d
    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v15, v1, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;Ljava/lang/String;)V

    throw v2

    :catch_37
    move-exception v0

    move-object v1, v6

    move-object/from16 v24, v10

    move-object v7, v11

    move-object/from16 v27, v13

    const/4 v15, 0x1

    move-wide v12, v4

    move-object v1, v0

    .line 192
    :goto_3e
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    const-string v10, "dl_startdl"

    invoke-static {v2, v3, v1, v10}, Lccsansan/bn/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 193
    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v3, 0xc

    const-string v10, "Do not create file"

    invoke-direct {v2, v3, v1, v10}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;Ljava/lang/String;)V

    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    .line 150
    :catchall_13
    move-exception v0

    move-object v10, v0

    move-wide/from16 v22, v4

    .line 200
    :goto_3f
    :try_start_25
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iput-wide v2, v1, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_38

    .line 219
    goto :goto_40

    .line 200
    :catch_38
    move-exception v0

    :goto_40
    if-eqz v6, :cond_22

    .line 219
    sget v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_21

    .line 205
    :cond_21
    invoke-virtual {v6}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    :cond_22
    if-eqz v9, :cond_23

    .line 142
    const/4 v14, 0x1

    goto :goto_41

    :cond_23
    const/4 v14, 0x0

    :goto_41
    packed-switch v14, :pswitch_data_9

    goto :goto_42

    .line 209
    :pswitch_8
    iget-boolean v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    if-eqz v1, :cond_25

    .line 219
    sget v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    const/16 v2, 0x41

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    .line 210
    :cond_24
    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v3, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide v5, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v6}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    .line 212
    :cond_25
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-boolean v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    invoke-interface {v9, v1, v2}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Z)V

    .line 213
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v1}, Lccsansan/cv/getDownloadedCount;->getDownloadedRecordByUrl()V

    .line 216
    :goto_42
    iget-object v1, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    iget-wide v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    sub-long v2, v2, v22

    invoke-virtual {v1, v2, v3}, Lccsansan/cv/getDownloadedCount;->getDownloadingList(J)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    rsub-int v2, v2, 0x457f

    invoke-static {v7, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    iget-wide v2, v2, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J

    div-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    .line 219
    :cond_26
    new-instance v1, Lccsansan/aw/getDownloadingRecordByUrl;

    const-string v2, "Empty Source Url"

    const-string v3, "Url is empty"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw v1

    :goto_44
    goto :goto_43

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x41
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected removeDownloadListener(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p6

    .line 138
    nop

    .line 4
    new-instance v2, Lccsansan/cv/getDownloadedRecordByUrl;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    invoke-static {v3, v4}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(J)I

    move-result v3

    const/high16 v4, 0x10000

    invoke-direct {v2, v4, v3}, Lccsansan/cv/getDownloadedRecordByUrl;-><init>(II)V

    .line 6
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;

    move-object/from16 v7, p1

    invoke-direct {v6, v1, v2, v7, v3}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;-><init>(Lccsansan/cv/IncentiveDownloadUtils;Lccsansan/cv/getDownloadedRecordByUrl;Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    iget-object v6, v1, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v6}, Lccsansan/cv/getDownloadedCount;->addDownloadListener()V

    .line 48
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 138
    nop

    .line 50
    :goto_0
    iget-wide v6, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide v8, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    const/4 v10, 0x2

    cmp-long v11, v6, v8

    if-gez v11, :cond_11

    .line 138
    sget v6, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v6, v6, 0x3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v6, v10

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 51
    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    goto/16 :goto_e

    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    const/16 v8, 0x4e

    :try_start_0
    div-int/2addr v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_2

    .line 138
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 51
    :cond_1
    const/4 v6, 0x0

    move-object v8, v6

    const/4 v9, 0x0

    :cond_2
    const-string v12, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    if-nez v8, :cond_9

    .line 59
    :try_start_1
    invoke-virtual {v2}, Lccsansan/cv/getDownloadedRecordByUrl;->addDownloadListener()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 51
    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    packed-switch v13, :pswitch_data_1

    .line 60
    iget v8, v1, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList:I

    goto :goto_4

    .line 51
    :pswitch_1
    move-object v15, v12

    goto/16 :goto_8

    .line 60
    :goto_4
    invoke-virtual {v2, v8}, Lccsansan/cv/getDownloadingList;->addDownloadListener(I)Lccsansan/cv/removeDownloadListener;

    move-result-object v8

    if-eqz p4, :cond_4

    .line 61
    invoke-interface/range {p4 .. p4}, Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;->deleteDownItem()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v15, v12

    goto :goto_8

    .line 64
    :cond_4
    iget-boolean v13, v1, Lccsansan/cv/IncentiveDownloadUtils;->pause:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_2

    .line 51
    sget v13, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v13, v13, 0x65

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v13, v10

    if-eqz v13, :cond_5

    :try_start_2
    array-length v13, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v8, :cond_6

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 64
    :cond_5
    if-nez v8, :cond_6

    .line 65
    :goto_5
    :try_start_3
    iget v13, v1, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/2addr v9, v13

    goto :goto_6

    :cond_6
    nop

    .line 51
    add-int/lit8 v14, v14, 0x51

    rem-int/lit16 v9, v14, 0x80

    sput v9, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/2addr v14, v10

    if-nez v14, :cond_7

    .line 138
    :cond_7
    const/4 v9, 0x0

    .line 65
    :goto_6
    if-le v9, v0, :cond_2

    invoke-static {v4}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v6

    rsub-int v6, v6, 0x7d39

    invoke-static {v12, v6}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 67
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get buffer timeout! url = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v6, v1, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v13, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    move-object v15, v12

    iget-wide v11, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    invoke-static {v6, v9, v0}, Lccsansan/bn/getDownloadedList;->getDownloadingList(Ljava/lang/String;ZI)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    .line 51
    :cond_9
    move-object v15, v12

    .line 68
    :goto_8
    if-nez v8, :cond_b

    .line 74
    invoke-virtual {v2}, Lccsansan/cv/getDownloadedRecordByUrl;->addDownloadListener()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v2}, Lccsansan/cv/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v6, :cond_b

    .line 51
    sget v6, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v6, v6, 0x49

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v6, v10

    if-eqz v6, :cond_a

    .line 74
    :cond_a
    nop

    .line 75
    :try_start_5
    invoke-virtual {v2, v7}, Lccsansan/cv/getDownloadingList;->addDownloadListener(I)Lccsansan/cv/removeDownloadListener;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    .line 77
    :goto_9
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 78
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    const v2, 0xab01

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    sub-int/2addr v2, v3

    const-string v3, "\uc4a5\u6fa6\u92aa\uc5a6\u68a7\u93af\uc6a5\u69a5\u9cee\uc7ad\u6ab5\u9ded\uc0ae\u6ba4\u9ebf\uc1a7\u74ba\u9fb8\uc2b5\u75b1\u98f2\uc3a7\u76b8\u99a3\uccbb\u77be\u9ab8\ucdfd\u70b3\u9bb5\uceac\u71bc\ua494\ucf95\u7291\ua595\uc896"

    invoke-static {v3, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    :goto_a
    if-eqz p4, :cond_d

    .line 81
    invoke-interface/range {p4 .. p4}, Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;->deleteDownItem()Z

    move-result v6

    if-nez v6, :cond_c

    .line 51
    sget v6, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v6, v6, 0x3d

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/2addr v6, v10

    move-object v6, v15

    goto :goto_b

    .line 81
    :cond_c
    invoke-static {v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const-string v0, "the task had been canceled!"

    const-string v8, "\uc4a5\udd5a\uf752\u8952\ua357\u455b\u5f4d\u7149\u0b0e\u2d41\uc75d\ud939\uf36e\u957e\uaf63\u417e\u5b36\u7d7c\u1764\u2964\uc36c\ue527\uff1c\u9112\uab09\u4d1d\u6718\u7906\u130b\u350b\ucf09\ue10b\ufb01"

    cmp-long v9, v2, v6

    add-int/lit16 v9, v9, 0x7d39

    move-object v6, v15

    invoke-static {v6, v9}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 84
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-static {v4}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x19fd

    invoke-static {v8, v2}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v0

    .line 78
    :cond_d
    move-object v6, v15

    .line 84
    :goto_b
    if-eqz v8, :cond_10

    .line 91
    :try_start_6
    iget-object v9, v1, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v9}, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils()V

    .line 92
    iget-object v9, v8, Lccsansan/cv/removeDownloadListener;->getDownloadingList:[B

    iget v11, v8, Lccsansan/cv/removeDownloadListener;->IncentiveDownloadUtils:I

    invoke-virtual {v1, v9, v4, v11}, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener([BII)V

    .line 93
    iget-object v9, v1, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v9}, Lccsansan/cv/getDownloadedCount;->getDownloadingRecordByUrl()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 98
    iget-wide v11, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget v9, v8, Lccsansan/cv/removeDownloadListener;->IncentiveDownloadUtils:I

    int-to-long v13, v9

    add-long/2addr v11, v13

    iput-wide v11, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 99
    iget-object v9, v1, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    sub-long v11, v11, p2

    invoke-virtual {v9, v11, v12}, Lccsansan/cv/getDownloadedCount;->unifiedDownload(J)V

    if-eqz p5, :cond_e

    .line 51
    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    :goto_c
    packed-switch v7, :pswitch_data_2

    .line 102
    iget-object v14, v1, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iget-wide v11, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    move-object v7, v5

    iget-wide v4, v1, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    move-object/from16 v13, p5

    move-wide v15, v11

    move-wide/from16 v17, v4

    invoke-interface/range {v13 .. v18}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    .line 103
    iget-object v4, v1, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    iget v5, v8, Lccsansan/cv/removeDownloadListener;->IncentiveDownloadUtils:I

    int-to-long v11, v5

    invoke-virtual {v4, v11, v12}, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils(J)V

    goto :goto_d

    .line 51
    :pswitch_2
    move-object v7, v5

    .line 106
    :goto_d
    iget-wide v4, v1, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    iget-wide v11, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v13, v4, v11

    if-nez v13, :cond_f

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x7d39

    invoke-static {v6, v3}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const v4, 0x8a35

    const-string v5, ""

    invoke-static {v5, v5, v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/2addr v0, v4

    const-string v4, "\uc4a2\u4e9c\ud0db\u5a37\uec7e\u77a0\uf999\u03d1\u954e\u1f78\ua2bb\u34ec\ubeca\uc01b\u4a45\udda9\u67f3\ue927"

    invoke-static {v4, v0}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 111
    :cond_f
    invoke-virtual {v2, v8}, Lccsansan/cv/getDownloadingList;->addDownloadListener(Lccsansan/cv/removeDownloadListener;)V

    move-object v5, v7

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 112
    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 113
    :cond_10
    new-instance v0, Lccsansan/aw/getDownloadingRecordByUrl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0xc7bb

    const/4 v5, 0x0

    invoke-static {v5, v5}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "\uc4a2\u0312\u4bc7\u9399\uda46\u220e\u6ac5\ub2bf\uf93e\uc133\u09e9\u51a6\u986e\ue0dc\u2898\u771f\ubf56\u87df\ucf85\u1646\u5e3e\ua6b1\ueea0\u3562\u7d23\u45e0\u8c57\ud40a\u1cc6\u64c8\ua30c\ueb11\u33c3\u7bbc\u4274\u8a77\ud2b0\u1ae1"

    invoke-static {v4, v5}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(ILjava/lang/String;)V

    throw v0

    .line 138
    :cond_11
    :goto_e
    iget-object v0, v1, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v2}, Lccsansan/cv/getDownloadedRecordByUrl;->removeDownloadListener()I

    move-result v2

    invoke-virtual {v0, v2}, Lccsansan/cv/getDownloadedCount;->getDownloadingList(I)V

    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/2addr v0, v10

    return-void

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

.method protected removeDownloadListener([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0, p1, p2, p3}, Lccsansan/da/removeDownloadListener;->unifiedDownload([BII)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    invoke-virtual {v0, p1, p2, p3}, Lccsansan/da/removeDownloadListener;->unifiedDownload([BII)V

    const/16 p1, 0x2b

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Z
    .locals 3

    .line 3
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadedCount:Z

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method protected removeDownloadListener(Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v3, v0, 0x51

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    :cond_1
    const/16 v3, 0xce

    if-ne p1, v3, :cond_3

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :goto_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;
    .locals 3

    .line 3
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportClick:Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0xf

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)Lccsansan/cv/IncentiveDownloadUtils;
    .locals 2

    .line 2
    nop

    .line 1
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove crc32c check key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x7d39

    const-string v1, "\uc482\ub990\u3ec3\ub303\u304e\ub6b4\u2bf1\ua82d\u2d6b\ua3b5\u20b9\ua5cd"

    invoke-static {v1, v0}, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x51

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/16 p1, 0x46

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/aw/getDownloadingRecordByUrl;
        }
    .end annotation

    .line 4
    sget v0, Lccsansan/cv/IncentiveDownloadUtils;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cv/IncentiveDownloadUtils;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 4
    move-object v8, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v14}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;Z)V

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/dn/IncentiveDownloadUtils;Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method
