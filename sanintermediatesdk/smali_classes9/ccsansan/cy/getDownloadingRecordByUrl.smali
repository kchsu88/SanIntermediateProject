.class public Lccsansan/cy/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;,
        Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    }
.end annotation


# static fields
.field private static ActionTypeDownload:I

.field private static ActionTypeReserveApp:I

.field private static getActionType:I

.field private static performAction:[S

.field private static performActionWhenOffline:[B

.field private static resolveUrl:I

.field private static setErrorMessage:I


# instance fields
.field public ActionTypeDetailPage:Ljava/lang/String;

.field public IncentiveDownloadUtils:J

.field public IncentiveSDK:Ljava/lang/String;

.field public IncentiveSDK$1:Ljava/lang/String;

.field public addDownloadListener:Ljava/lang/String;

.field public deleteDownItem:Ljava/lang/String;

.field public deleteDownList:I

.field public execute:I

.field public getDownloadStatusByUrl:I

.field public getDownloadedCount:I

.field public getDownloadedList:I

.field public getDownloadedRecordByUrl:I

.field public getDownloadingCount:Z

.field public getDownloadingList:Ljava/lang/String;

.field public getDownloadingRecordByUrl:I

.field public getPackageNameByRecord:I

.field public getThumbPathByRecord:J

.field public pause:I

.field public removeDownloadListener:Ljava/lang/String;

.field public resume:Z

.field public shouldTryHandlingAction:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

.field public trackReportClick:J

.field public trackReportShow:J

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeReserveApp:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cy/getDownloadingRecordByUrl;->setErrorMessage:I

    const/16 v0, 0x7b

    sput v0, Lccsansan/cy/getDownloadingRecordByUrl;->getActionType:I

    const v0, -0x61a28d37

    sput v0, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeDownload:I

    const v0, -0x58471dc0

    sput v0, Lccsansan/cy/getDownloadingRecordByUrl;->resolveUrl:I

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cy/getDownloadingRecordByUrl;->performActionWhenOffline:[B

    return-void

    :array_0
    .array-data 1
        -0x6ct
        -0x5ft
        -0x72t
        -0x2et
        -0x1ft
        -0x7at
        -0x2dt
        -0x7ct
        -0x2dt
        -0x78t
        0x7ft
        -0x22t
        -0x45t
        -0x4et
        -0x7et
        -0x6dt
        0x9t
        0x34t
        0x38t
        0x49t
        0x24t
        0x3ct
        0x43t
        0x21t
        0x3dt
        0x39t
        0x59t
        0x65t
        0x28t
        -0x6dt
        0x56t
        0x6at
        -0x7dt
        0x5ft
        -0x6ft
        0x62t
        -0x6ft
        0x66t
        0x5dt
        -0x68t
        -0x47t
        -0x54t
        0x5ct
    .end array-data
.end method

.method public constructor <init>(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x2

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedCount:I

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingCount:Z

    .line 19
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    .line 23
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->deleteDownItem(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownItem:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedList:I

    .line 26
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedRecordByUrl(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    .line 27
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedList(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    .line 28
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    .line 29
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedCount(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    .line 30
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->pause(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedCount:I

    .line 31
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingCount(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownList:I

    .line 32
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->deleteDownList(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingCount:Z

    .line 33
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->resume(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveSDK:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveSDK(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->trackReportShow:J

    .line 35
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getThumbPathByRecord(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->trackReportClick:J

    .line 36
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getPackageNameByRecord(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getThumbPathByRecord:J

    .line 37
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->trackReportShow(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->execute:I

    .line 38
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->trackReportClick(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getPackageNameByRecord:I

    .line 39
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->ActionTypeDetailPage(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/getDownloadingRecordByUrl;->shouldTryHandlingAction:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    .line 40
    invoke-static {p1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->shouldTryHandlingAction(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Z

    move-result p1

    iput-boolean p1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->resume:Z

    return-void
.end method

.method private static removeDownloadListener(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/cy/getDownloadingRecordByUrl;->getActionType:I

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
    sget-object p4, Lccsansan/cy/getDownloadingRecordByUrl;->performActionWhenOffline:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/cy/getDownloadingRecordByUrl;->resolveUrl:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/cy/getDownloadingRecordByUrl;->performAction:[S

    sget v6, Lccsansan/cy/getDownloadingRecordByUrl;->resolveUrl:I

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

    sget v2, Lccsansan/cy/getDownloadingRecordByUrl;->resolveUrl:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeDownload:I

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
    sget-object p0, Lccsansan/cy/getDownloadingRecordByUrl;->performActionWhenOffline:[B

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
    sget-object p0, Lccsansan/cy/getDownloadingRecordByUrl;->performAction:[S

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
.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Portal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SubPortal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AppStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PkgType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CutType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->execute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RecvTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->trackReportShow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const v1, 0x58471dc0

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    add-int/2addr v3, v1

    const v1, 0x61a28d62

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const v6, 0x61a28d63

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ", PkgName:"

    const-string v12, ", Title:"

    const-string v13, ", AttrCode:"

    cmp-long v14, v4, v7

    add-int/2addr v14, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x51

    int-to-short v1, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x27

    int-to-byte v4, v4

    invoke-static {v10}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x7b

    invoke-static {v3, v14, v1, v4, v5}, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lccsansan/cy/getDownloadingRecordByUrl;->trackReportClick:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const v1, 0x58471dcf

    invoke-static {v2}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v9

    add-int/2addr v3, v1

    invoke-static {v2, v2}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    rsub-int/lit8 v4, v4, -0x36

    int-to-short v4, v4

    const/16 v5, 0x30

    invoke-static {v10, v5, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    int-to-byte v5, v5

    invoke-static {v9, v9}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v14

    cmpl-float v9, v14, v9

    add-int/lit8 v9, v9, -0x7c

    invoke-static {v3, v1, v4, v5, v9}, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getThumbPathByRecord:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x58471ddd

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v1, v3

    invoke-static {v7, v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v10}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    int-to-short v4, v4

    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x6b

    int-to-byte v5, v5

    invoke-static {v10, v2}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x7c

    invoke-static {v1, v3, v4, v5, v6}, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeReserveApp:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/getDownloadingRecordByUrl;->setErrorMessage:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x5e

    goto :goto_0

    :cond_0
    const/16 v1, 0x42

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 v1, 0x4e

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
