.class public Lccsansan/co/trackReportClick;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/co/performAction$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/trackReportClick$addDownloadListener;
    }
.end annotation


# static fields
.field private static deleteDownList:I

.field private static getDownloadedCount:[S

.field private static getDownloadingCount:[B

.field private static getPackageNameByRecord:I

.field private static pause:I

.field private static resume:I

.field private static trackReportClick:I


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Lccsansan/co/performAction;

.field private deleteDownItem:Lccsansan/cn/getDownloadingList;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:J

.field private getDownloadingList:Lccsansan/co/trackReportClick$addDownloadListener;

.field private final getDownloadingRecordByUrl:Z

.field private removeDownloadListener:I

.field private unifiedDownload:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    const/4 v0, 0x1

    sput v0, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    const/16 v0, 0x6a

    sput v0, Lccsansan/co/trackReportClick;->resume:I

    const v0, -0x75e89fdc

    sput v0, Lccsansan/co/trackReportClick;->deleteDownList:I

    const v0, -0x425e499f

    sput v0, Lccsansan/co/trackReportClick;->pause:I

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/co/trackReportClick;->getDownloadingCount:[B

    return-void

    :array_0
    .array-data 1
        -0x5ct
        0x3t
        -0xet
        0x3t
        -0x2t
        -0x9t
        0x8t
        0xbt
        0x44t
        -0x54t
        0x2t
        0x11t
        -0x13t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 3
    iput-boolean p2, p0, Lccsansan/co/trackReportClick;->getDownloadingRecordByUrl:Z

    .line 4
    new-instance p2, Lccsansan/cn/getDownloadingList;

    invoke-direct {p2, p1}, Lccsansan/cn/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsansan/co/trackReportClick;->deleteDownItem:Lccsansan/cn/getDownloadingList;

    return-void
.end method

.method private IncentiveDownloadUtils()J
    .locals 5

    .line 3
    sget v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v2, p0, Lccsansan/co/trackReportClick;->getDownloadedRecordByUrl:J

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget v0, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x51

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-wide v2

    :pswitch_1
    const/16 v0, 0x52

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/co/trackReportClick;)Lccsansan/co/trackReportClick$addDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    add-int/lit8 v1, v0, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/co/trackReportClick;->getDownloadingList:Lccsansan/co/trackReportClick$addDownloadListener;

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 6

    .line 78
    sget v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 66
    :cond_0
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lccsanandroid/view/Display;->getWidth()I

    move-result v1

    .line 69
    invoke-virtual {v0}, Lccsanandroid/view/Display;->getHeight()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Lccsanandroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 78
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 72
    :pswitch_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 77
    iput-wide v2, p0, Lccsansan/co/trackReportClick;->unifiedDownload:D

    int-to-float v0, v1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 78
    iput p1, p0, Lccsansan/co/trackReportClick;->removeDownloadListener:I

    sget p1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    sget v2, Lccsansan/co/trackReportClick;->resume:I

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
    sget-object p4, Lccsansan/co/trackReportClick;->getDownloadingCount:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/co/trackReportClick;->pause:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/co/trackReportClick;->getDownloadedCount:[S

    sget v6, Lccsansan/co/trackReportClick;->pause:I

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

    sget v2, Lccsansan/co/trackReportClick;->pause:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/co/trackReportClick;->deleteDownList:I

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
    sget-object p0, Lccsansan/co/trackReportClick;->getDownloadingCount:[B

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
    sget-object p0, Lccsansan/co/trackReportClick;->getDownloadedCount:[S

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
.method public addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/co/trackReportClick;->getDownloadedList:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/co/trackReportClick;->getDownloadedList:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget v0, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/co/trackReportClick;->getDownloadStatusByUrl:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/co/trackReportClick;->getDownloadedList:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/co/trackReportClick;->getDownloadStatusByUrl:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(J)V
    .locals 3

    .line 4
    sget v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    add-int/lit8 v1, v0, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsansan/co/trackReportClick;->getDownloadedRecordByUrl:J

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;Lccsansan/co/trackReportClick$addDownloadListener;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 8

    .line 20
    sget v0, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 8
    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    :goto_0
    const/4 v1, 0x0

    const-string v2, "context cannot be null"

    const-string v3, "vastManagerListener cannot be null"

    packed-switch v0, :pswitch_data_0

    .line 5
    invoke-static {p2, v3}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p4, v2}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lccsansan/co/trackReportClick;->addDownloadListener:Lccsansan/co/performAction;

    if-nez v0, :cond_1

    :goto_1
    goto :goto_2

    .line 20
    :pswitch_0
    nop

    .line 5
    invoke-static {p2, v3}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p4, v2}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lccsansan/co/trackReportClick;->addDownloadListener:Lccsansan/co/performAction;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    throw p1

    .line 9
    :goto_2
    iput-object p2, p0, Lccsansan/co/trackReportClick;->getDownloadingList:Lccsansan/co/trackReportClick$addDownloadListener;

    .line 10
    new-instance p2, Lccsansan/co/performAction;

    iget-wide v4, p0, Lccsansan/co/trackReportClick;->unifiedDownload:D

    iget v6, p0, Lccsansan/co/trackReportClick;->removeDownloadListener:I

    .line 13
    invoke-virtual {p4}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v7

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lccsansan/co/performAction;-><init>(Lccsansan/co/performAction$addDownloadListener;DILccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsansan/co/trackReportClick;->addDownloadListener:Lccsansan/co/performAction;

    .line 14
    iput-object p3, p0, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 p3, 0x1

    .line 17
    :try_start_1
    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Lccsansan/cx/getDownloadingList;->addDownloadListener(Lccsanandroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    sget p1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    .line 17
    :catch_0
    move-exception p1

    .line 19
    const-string p2, "Ad.VastManager"

    const-string p3, "Failed to aggregate vast xml"

    invoke-static {p2, p3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iget-object p1, p0, Lccsansan/co/trackReportClick;->getDownloadingList:Lccsansan/co/trackReportClick$addDownloadListener;

    invoke-interface {p1, v1}, Lccsansan/co/trackReportClick$addDownloadListener;->a(Lccsansan/co/resolveUrl;)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/co/resolveUrl;)V
    .locals 7

    .line 65
    nop

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParseComplete: + vastVideoConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad.VastManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lccsansan/co/trackReportClick;->getDownloadingList:Lccsansan/co/trackReportClick$addDownloadListener;

    if-eqz v0, :cond_0

    .line 65
    const/16 v2, 0x4b

    goto :goto_0

    :cond_0
    const/16 v2, 0x63

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    const/4 v2, 0x5

    goto :goto_2

    :cond_1
    const/16 v2, 0x20

    :goto_2
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_1

    .line 22
    if-nez p1, :cond_3

    goto :goto_3

    .line 65
    :pswitch_1
    :try_start_0
    array-length v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 22
    :cond_2
    nop

    .line 29
    invoke-interface {v0, v4}, Lccsansan/co/trackReportClick$addDownloadListener;->a(Lccsansan/co/resolveUrl;)V

    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 33
    iget-object v0, p0, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/co/resolveUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 37
    :cond_4
    iget-boolean v0, p0, Lccsansan/co/trackReportClick;->getDownloadingRecordByUrl:Z

    if-nez v0, :cond_6

    .line 38
    const-string v0, "onParseComplete shouldPreCacheVideo"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lccsansan/co/trackReportClick;->getDownloadingList:Lccsansan/co/trackReportClick$addDownloadListener;

    invoke-interface {v0, p1}, Lccsansan/co/trackReportClick$addDownloadListener;->a(Lccsansan/co/resolveUrl;)V

    .line 65
    sget p1, Lccsansan/co/trackReportClick;->getPackageNameByRecord:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/co/trackReportClick;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_5
    return-void

    .line 43
    :cond_6
    new-instance v2, Lccsansan/co/trackReportClick$unifiedDownload;

    invoke-direct {v2, p0, p1}, Lccsansan/co/trackReportClick$unifiedDownload;-><init>(Lccsansan/co/trackReportClick;Lccsansan/co/resolveUrl;)V

    const v0, 0x425e499f

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v4

    sub-int/2addr v0, v4

    const v4, 0x75e8a04f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    sub-int/2addr v4, v5

    const-string v5, ""

    invoke-static {v5, v3}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-short v6, v6

    invoke-static {v5, v3, v3}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, -0x6b

    invoke-static {v0, v4, v6, v3, v5}, Lccsansan/co/trackReportClick;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lccsansan/co/trackReportClick;->deleteDownItem:Lccsansan/cn/getDownloadingList;

    invoke-virtual {p1}, Lccsansan/co/resolveUrl;->getDownloadingCount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/cn/getDownloadingList;->getDownloadingList(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lccsansan/co/trackReportClick;->deleteDownItem:Lccsansan/cn/getDownloadingList;

    invoke-virtual {p0}, Lccsansan/co/trackReportClick;->addDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lccsansan/co/trackReportClick;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lccsansan/co/trackReportClick;->IncentiveDownloadUtils()J

    move-result-wide v4

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lccsansan/cn/getDownloadingList;->getDownloadingList(Lccsansan/cn/addDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method
