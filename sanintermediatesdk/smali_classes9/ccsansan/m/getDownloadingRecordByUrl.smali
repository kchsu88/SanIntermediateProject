.class public Lccsansan/m/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveSDK:I

.field private static getPackageNameByRecord:[S

.field private static getThumbPathByRecord:I

.field private static trackReportClick:I

.field private static trackReportShow:[B


# instance fields
.field public IncentiveDownloadUtils:J

.field public addDownloadListener:Z

.field public deleteDownItem:Z

.field public deleteDownList:J

.field public getDownloadStatusByUrl:Z

.field public getDownloadedCount:I

.field public getDownloadedList:J

.field public getDownloadedRecordByUrl:Z

.field public getDownloadingCount:Ljava/lang/String;

.field public getDownloadingList:I

.field public getDownloadingRecordByUrl:J

.field public pause:Z

.field public removeDownloadListener:Z

.field public resume:J

.field public unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3f

    sput v0, Lccsansan/m/getDownloadingRecordByUrl;->getThumbPathByRecord:I

    const v0, -0x4e646b55

    sput v0, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveSDK:I

    const v0, -0x5995a646

    sput v0, Lccsansan/m/getDownloadingRecordByUrl;->trackReportClick:I

    const/16 v0, 0x76

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/m/getDownloadingRecordByUrl;->trackReportShow:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        0x73t
        0x7et
        0x60t
        0x74t
        0x78t
        0x78t
        0x6dt
        0x6et
        0x72t
        -0x79t
        0x75t
        0x6et
        0x75t
        -0x33t
        0x72t
        -0x7ft
        0x5dt
        0x71t
        0x74t
        0x6bt
        0x6ft
        -0x7ct
        0x72t
        0x6bt
        0x72t
        -0x33t
        -0x2et
        -0x1ft
        -0x43t
        -0x2ft
        -0x2ct
        -0x35t
        -0x31t
        -0x1ct
        -0x2et
        -0x3at
        -0x29t
        -0x2at
        -0x12t
        -0x6t
        -0x15t
        -0xat
        0x1t
        -0x2t
        -0x20t
        0xet
        -0x1ft
        -0x8t
        0x7t
        -0x1dt
        -0x9t
        -0x6t
        -0xft
        -0xbt
        0xat
        -0x8t
        -0x14t
        -0x3t
        -0x31t
        -0x74t
        -0x69t
        0x79t
        -0x73t
        -0x6ft
        -0x6ft
        -0x7at
        -0x79t
        -0x75t
        -0x60t
        -0x72t
        -0x79t
        -0x73t
        -0x33t
        -0x48t
        -0x39t
        -0x5dt
        -0x49t
        -0x46t
        -0x4ft
        -0x4bt
        -0x36t
        -0x48t
        -0x4ft
        -0x49t
        -0x33t
        0x2ft
        0x3et
        0x1at
        0x2et
        0x31t
        0x28t
        0x2ct
        0x41t
        0x2ft
        0x23t
        0x33t
        -0x2at
        0x21t
        0x2dt
        0x1et
        0x29t
        0x34t
        0x31t
        0x13t
        0x41t
        0x14t
        0x2bt
        0x3at
        0x16t
        0x2at
        0x2dt
        0x24t
        0x28t
        0x3dt
        0x2bt
        0x1ft
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    const-string v0, ""

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->removeDownloadListener:Z

    .line 4
    iput v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingList:I

    .line 5
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    .line 6
    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->unifiedDownload:Z

    .line 7
    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->addDownloadListener:Z

    .line 11
    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:Z

    .line 12
    iput-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:J

    .line 13
    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownItem:Z

    .line 16
    iput-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedList:J

    .line 20
    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadStatusByUrl:Z

    .line 21
    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->pause:Z

    .line 22
    iput-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownList:J

    .line 23
    iput-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->resume:J

    .line 25
    const/4 v5, 0x0

    iput-object v5, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingCount:Ljava/lang/String;

    .line 26
    iput v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedCount:I

    .line 30
    :try_start_0
    new-instance v5, Lccsanorg/json/JSONObject;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "need_anti_hijack"

    .line 31
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lccsansan/m/getDownloadingRecordByUrl;->removeDownloadListener:Z

    const-string v6, "bd_sendtrigger"

    .line 33
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingList:I

    const-string v6, "bd_waittime"

    .line 34
    invoke-virtual {v5, v6, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    const-string v6, "bd_resendclick"

    .line 35
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lccsansan/m/getDownloadingRecordByUrl;->unifiedDownload:Z

    const-string v6, "bd_supplementclick"

    .line 36
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lccsansan/m/getDownloadingRecordByUrl;->addDownloadListener:Z

    const v6, 0x5995a646

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    sub-int/2addr v6, v7

    const/16 v7, 0x30

    invoke-static {v0, v7, v2, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v9

    const v10, 0x4e646bb6    # 9.5806605E8f

    sub-int v9, v10, v9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v11

    cmpl-float v11, v11, v8

    add-int/lit8 v11, v11, -0x74

    int-to-short v11, v11

    invoke-static {v2, v2}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v12

    int-to-byte v12, v12

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v13

    add-int/lit8 v13, v13, -0x3f

    invoke-static {v6, v9, v11, v12, v13}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const v6, 0x5995a655

    invoke-static {v0, v7, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const v6, 0x4e646bb8    # 9.5806618E8f

    cmp-long v13, v11, v3

    sub-int v11, v6, v13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    rsub-int/lit8 v12, v12, -0x70

    int-to-short v12, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v14

    cmp-long v16, v14, v3

    add-int/lit8 v14, v16, -0x41

    invoke-static {v9, v11, v12, v13, v14}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {v5, v9, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const v9, 0x5995a660

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    sub-int/2addr v9, v11

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    rsub-int/lit8 v11, v15, 0x31

    int-to-short v11, v11

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v12

    cmpl-float v12, v12, v8

    add-int/lit8 v12, v12, -0x1

    int-to-byte v12, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v15

    shr-int/lit8 v15, v15, 0x8

    add-int/lit8 v15, v15, -0x40

    invoke-static {v9, v10, v11, v12, v15}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-virtual {v5, v9, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:Z

    const-string v9, "bi_sendreferrer"

    .line 41
    invoke-virtual {v5, v9, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownItem:Z

    const v9, 0x5995a66c

    invoke-static {v2, v2, v2, v2}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v10

    add-int/2addr v10, v9

    const v9, 0x4e646bb7    # 9.5806611E8f

    invoke-static {v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v11

    add-int/2addr v11, v9

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    rsub-int/lit8 v9, v9, 0xa

    int-to-short v9, v9

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    shr-int/lit8 v12, v12, 0x6

    int-to-byte v12, v12

    invoke-static {v2}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v15

    cmpl-float v15, v15, v8

    add-int/lit8 v15, v15, -0x40

    invoke-static {v10, v11, v9, v12, v15}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 42
    invoke-virtual {v5, v9, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:J

    const-string v9, "cd_waittime"

    .line 45
    invoke-virtual {v5, v9, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedList:J

    const v9, 0x5995a681

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/2addr v10, v9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v9, v6

    invoke-static {v0, v7, v2, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    add-int/lit8 v7, v7, 0x75

    int-to-short v7, v7

    const/high16 v11, -0x1000000

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    rsub-int/lit8 v12, v12, -0x40

    invoke-static {v10, v9, v7, v11, v12}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v5, v7, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const v7, 0x5995a68f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    sub-int/2addr v7, v9

    const v9, 0x4e646bb9    # 9.5806624E8f

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    cmp-long v12, v10, v13

    sub-int/2addr v9, v12

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x4a

    int-to-short v10, v10

    invoke-static {v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v11

    int-to-byte v11, v11

    invoke-static {v0, v0, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v12

    rsub-int/lit8 v12, v12, -0x40

    invoke-static {v7, v9, v10, v11, v12}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {v5, v7, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const v7, 0x5995a69c

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v11, v9, v3

    sub-int/2addr v7, v11

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v9

    sub-int v9, v6, v9

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    shr-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, -0x2d

    int-to-short v10, v10

    invoke-static {v2, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v11

    cmp-long v13, v11, v3

    add-int/lit8 v13, v13, 0x1

    int-to-byte v11, v13

    invoke-static {v8, v8}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v12

    cmpl-float v8, v12, v8

    rsub-int/lit8 v8, v8, -0x40

    invoke-static {v7, v9, v10, v11, v8}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-virtual {v5, v7, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadStatusByUrl:Z

    const-string v7, "ci_sendreferrer"

    .line 50
    invoke-virtual {v5, v7, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->pause:Z

    const-string v2, "ci_impwaittime"

    .line 51
    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lccsansan/m/getDownloadingRecordByUrl;->resume:J

    const v2, 0x5995a6a7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v2, v7

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v8, v3

    add-int/lit8 v6, v6, -0x2a

    int-to-short v6, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x3f

    invoke-static {v2, v7, v6, v8, v0}, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v5, v0, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadingRecordByUrl;->deleteDownList:J

    const-string v0, "exist_version_name"

    .line 54
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingCount:Ljava/lang/String;

    const-string v0, "exist_version_code"

    .line 55
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedCount:I
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/m/getDownloadingRecordByUrl;->getThumbPathByRecord:I

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
    sget-object p4, Lccsansan/m/getDownloadingRecordByUrl;->trackReportShow:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/m/getDownloadingRecordByUrl;->trackReportClick:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/m/getDownloadingRecordByUrl;->getPackageNameByRecord:[S

    sget v6, Lccsansan/m/getDownloadingRecordByUrl;->trackReportClick:I

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

    sget v2, Lccsansan/m/getDownloadingRecordByUrl;->trackReportClick:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveSDK:I

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
    sget-object p0, Lccsansan/m/getDownloadingRecordByUrl;->trackReportShow:[B

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
    sget-object p0, Lccsansan/m/getDownloadingRecordByUrl;->getPackageNameByRecord:[S

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
