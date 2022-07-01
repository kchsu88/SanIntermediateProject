.class final Lccsansan/au/addDownloadListener$getDownloadingCount;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:J

.field private static getDownloadedList:[C

.field private static getDownloadingCount:I

.field private static resume:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

.field final synthetic deleteDownItem:Z

.field final synthetic getDownloadedRecordByUrl:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:J

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingCount;->resume:I

    const/16 v0, 0x4a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedList:[C

    const-wide v0, 0x20aa5719df90a2cdL

    sput-wide v0, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadStatusByUrl:J

    return-void

    nop

    :array_0
    .array-data 2
        0x4695s
        -0x1b86s
        0x33as
        -0x5126s
        -0x3271s
        0x68bbs
        -0x69a2s
        0x3520s
        0x50cbs
        -0x71s
        0x1abas
        -0x478cs
        -0x18d7s
        0x2d9s
        -0x5e56s
        -0x334es
        0x6a68s
        -0x76c7s
        0x34dbs
        0x5391s
        0x64s
        -0x5d5es
        0x45eds
        -0x17f7s
        -0x74a8s
        0x2e6es
        -0x2f51s
        0x73ffs
        0x1629s
        -0x46a5s
        0x5c66s
        -0x17as
        -0x5e0es
        0x441as
        -0x18bes
        -0x759es
        0x2cbcs
        -0x300fs
        0x722bs
        0x1547s
        -0x4791s
        0x5aebs
        -0x242s
        0x6012s
        -0x3d28s
        0x259as
        -0x778cs
        -0x14dfs
        0x4e29s
        -0x4f3fs
        0x1389s
        0x767ds
        -0x26cbs
        0x3c0fs
        -0x613es
        -0x3e39s
        0x2428s
        -0x778cs
        0x2ab2s
        -0x3203s
        0x6019s
        0x348s
        -0x5982s
        0x58bfs
        -0x411s
        -0x61a8s
        0x3156s
        -0x2b9as
        0x76bes
        0x29fes
        -0x33f3s
        0x6f08s
        0x23ds
        -0x5b12s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Lccsanandroid/content/Context;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->addDownloadListener:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iput-object p5, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->unifiedDownload:Ljava/lang/String;

    iput-object p6, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    iput-boolean p7, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->deleteDownItem:Z

    iput-wide p8, p0, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:J

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadStatusByUrl:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public execute()V
    .locals 17

    .line 48
    move-object/from16 v1, p0

    const-string v2, ""

    .line 0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v0, v3, v5

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {v8}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x46d5

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x14

    invoke-static {v0, v3, v4}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0x14

    invoke-static {v8}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v10

    int-to-char v10, v10

    invoke-static {v8, v8}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x17

    invoke-static {v9, v10, v11}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v10, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    invoke-static {v9, v10}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v4}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpl-float v0, v0, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x46d4

    int-to-char v4, v4

    invoke-static {v8}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    cmpl-float v5, v5, v3

    add-int/lit8 v5, v5, 0x14

    invoke-static {v0, v4, v5}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2b

    invoke-static {v8, v8}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    add-int/lit16 v6, v6, 0x6061

    int-to-char v6, v6

    invoke-static {v8, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    add-int/lit8 v9, v9, 0xe

    invoke-static {v5, v6, v9}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v4}, Lccsansan/k/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->addDownloadListener:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->unifiedDownload:Ljava/lang/String;

    iget-object v5, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v4, Lccsansan/au/addDownloadListener$getDownloadingCount$unifiedDownload;

    invoke-direct {v4, v1}, Lccsansan/au/addDownloadListener$getDownloadingCount$unifiedDownload;-><init>(Lccsansan/au/addDownloadListener$getDownloadingCount;)V

    invoke-virtual {v0, v4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 48
    return-void

    .line 14
    :cond_0
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v4, v7}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->addDownloadListener:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    .line 26
    const/16 v4, 0x1e

    goto :goto_0

    :cond_1
    const/16 v4, 0x23

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v4, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingCount:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/au/addDownloadListener$getDownloadingCount;->resume:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 16
    :cond_2
    :try_start_2
    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->unifiedDownload:Ljava/lang/String;

    iget-object v5, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;->onXzComplete(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    return-void

    .line 20
    :cond_3
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->addDownloadListener:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->unifiedDownload:Ljava/lang/String;

    iget-object v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v4, v9}, Lccsansan/au/addDownloadListener;->getDownloadingList(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    iget-object v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v4, v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    .line 23
    invoke-static {}, Lccsansan/k/addDownloadListener;->unifiedDownload()I

    move-result v4

    if-eqz v0, :cond_6

    .line 25
    iget-object v9, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v9, :cond_4

    .line 26
    const/16 v9, 0x2d

    goto :goto_1

    :cond_4
    const/16 v9, 0x3c

    :goto_1
    packed-switch v9, :pswitch_data_1

    goto :goto_5

    .line 48
    :pswitch_1
    sget v9, Lccsansan/au/addDownloadListener$getDownloadingCount;->resume:I

    add-int/lit8 v9, v9, 0x1b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingCount:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_5

    .line 26
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    :goto_2
    packed-switch v9, :pswitch_data_2

    :try_start_3
    iget-object v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    goto :goto_3

    :pswitch_2
    iget-object v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    invoke-static {v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v9

    iget-object v10, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v11, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v9

    goto :goto_4

    :goto_3
    invoke-static {v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v9

    iget-object v10, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v11, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v10, 0x1c

    :try_start_4
    div-int/2addr v10, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :goto_4
    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 28
    :cond_6
    :goto_5
    :try_start_5
    iget-object v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    invoke-static {v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v9

    iget-object v10, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 26
    :goto_6
    nop

    .line 48
    sget v10, Lccsansan/au/addDownloadListener$getDownloadingCount;->resume:I

    add-int/lit8 v10, v10, 0x4b

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingCount:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_7

    .line 31
    :cond_7
    :try_start_6
    iget-object v10, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    iget-object v11, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v12, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v10, v11, v9, v4, v12}, Lccsansan/bn/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsansan/m/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 34
    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->ADD_XZ_LIST:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v4

    iput v4, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 35
    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    iput-object v4, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 36
    iget-boolean v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->deleteDownItem:Z

    iput-boolean v4, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    .line 37
    iget-wide v9, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:J

    iput-wide v9, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 38
    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v4, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 41
    :cond_8
    invoke-static {}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v10, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadedRecordByUrl:Lccsanandroid/content/Context;

    iget-object v11, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v12, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->unifiedDownload:Ljava/lang/String;

    iget-object v13, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    iget-object v14, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    iget-wide v3, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:J

    move-wide v15, v3

    invoke-static/range {v10 .. v16}, Lccsansan/k/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v8}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v8}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x46d4

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x14

    invoke-static {v0, v3, v4}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x39

    const v4, -0xff77f0

    invoke-static {v8, v8, v8}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v10

    sub-int/2addr v4, v10

    int-to-char v4, v4

    invoke-static {v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    cmp-long v12, v10, v5

    add-int/lit8 v12, v12, 0x11

    invoke-static {v3, v4, v12}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/2addr v2, v7

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v4

    cmpl-float v4, v4, v3

    add-int/lit16 v4, v4, 0x46d4

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x14

    invoke-static {v2, v4, v5}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    cmpl-float v4, v4, v3

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v5, v5, v3

    sub-int/2addr v7, v5

    int-to-char v5, v7

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    cmpl-float v3, v6, v3

    rsub-int/lit8 v3, v3, 0x18

    invoke-static {v4, v5, v3}, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v2, v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v2, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->getDownloadingList:Ljava/lang/String;

    iget-object v3, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lccsansan/bn/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->addDownloadListener:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    if-eqz v0, :cond_9

    iget-object v2, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->unifiedDownload:Ljava/lang/String;

    iget-object v3, v1, Lccsansan/au/addDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;->onXzFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
