.class public Lccsansan/p/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field public static addDownloadListener:Lccsanandroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static deleteDownItem:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:I

.field public static final unifiedDownload:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    sput v0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    invoke-static {}, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener()V

    const/4 v2, 0x5

    .line 1
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    const/16 v4, 0x30

    invoke-static {v3, v4, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xc

    invoke-static {v3, v3, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x8

    invoke-static {v5, v6, v7}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v0}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x16

    const v6, 0xd1d8

    invoke-static {v0}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {v5, v6, v4}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x22

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    add-int/lit16 v4, v4, 0x157b

    int-to-char v4, v4

    invoke-static {v3}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v1, v4, v5}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v1, 0x3

    const-string v5, "/Android/data/com.tencent.mtt/files"

    aput-object v5, v2, v1

    const/4 v1, 0x4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    rsub-int/lit8 v5, v5, 0x33

    const v6, 0xf5e1

    invoke-static {v0, v0, v0}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    sub-int/2addr v6, v0

    int-to-char v0, v6

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v5, v0, v3}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    sput-object v2, Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload:[Ljava/lang/String;

    sget v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/2addr v0, v4

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 43
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 32
    :cond_0
    iget v0, p0, Lccsansan/m/getDownloadedList;->execute:I

    invoke-virtual {p1}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 43
    const/16 p1, 0x3b

    goto :goto_0

    :cond_1
    const/16 p1, 0x27

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 33
    :cond_2
    invoke-virtual {p2}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p1

    iput p1, p0, Lccsansan/m/getDownloadedList;->execute:I

    .line 35
    :goto_1
    iget-object p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 36
    iget-object p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingCount:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    .line 37
    iget-object p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getPackageNameByRecord:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    .line 38
    iget-boolean p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    iput-boolean p1, p0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    .line 39
    iget-wide p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:J

    iput-wide p1, p0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 40
    iget-object p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 41
    iget p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadStatusByUrl:I

    iput p1, p0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 42
    iget-object p1, p3, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedCount:Ljava/lang/String;

    const-string p2, "sourcetype"

    invoke-virtual {p0, p2, p1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string p1, "is_book"

    const-string p2, "2"

    invoke-virtual {p0, p1, p2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/p/IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList:J

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

.method private static addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)Lccsansan/m/getDownloadedList;
    .locals 10

    .line 74
    nop

    .line 35
    new-instance v0, Lccsansan/m/getDownloadedList;

    invoke-direct {v0}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 36
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 36
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->deleteDownItem:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 40
    iget v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadStatusByUrl:I

    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 41
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 42
    iget-wide v4, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:J

    iput-wide v4, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 44
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->unifiedDownload:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 48
    sget v4, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    array-length v1, v1

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 44
    :cond_1
    array-length v1, v1

    if-lez v1, :cond_5

    .line 45
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v4, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->unifiedDownload:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    .line 48
    const/16 v7, 0x52

    goto :goto_4

    :cond_2
    const/16 v7, 0x37

    :goto_4
    packed-switch v7, :pswitch_data_1

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    goto :goto_8

    .line 46
    :pswitch_1
    aget-object v7, v4, v6

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 48
    const/4 v8, 0x1

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    packed-switch v8, :pswitch_data_2

    .line 50
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 74
    :pswitch_2
    sget v8, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v8, v8, 0x43

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    .line 48
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x7

    :try_start_1
    div-int/2addr v7, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 74
    :catchall_1
    move-exception p0

    throw p0

    .line 48
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 74
    :goto_6
    nop

    .line 50
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 48
    :goto_8
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 55
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 56
    const/4 v1, -0x1

    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 57
    iput v1, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    .line 58
    iget-boolean v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    iput-boolean v1, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    .line 59
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingCount:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getPackageNameByRecord:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    .line 61
    sget-object v1, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v1}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 62
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getThumbPathByRecord:Ljava/lang/String;

    const-string v2, "deepLinkUrl"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->shouldTryHandlingAction:Ljava/lang/String;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->resume:Ljava/lang/String;

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->deleteDownList:Ljava/lang/String;

    const-string v2, "placement_id"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    const-string v2, "creativeid"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    const v2, 0xdd7f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    int-to-char v2, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    rsub-int/lit8 v3, v3, 0xd

    invoke-static {v1, v2, v3}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedCount:Ljava/lang/String;

    const-string v1, "sourcetype"

    invoke-virtual {v0, v1, p0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result p0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pkg_type"

    invoke-virtual {v0, v1, p0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string p0, "s2s_track_status"

    const-string v1, "-1"

    invoke-virtual {v0, p0, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string p0, "is_book"

    const-string v1, "2"

    invoke-virtual {v0, p0, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method static synthetic addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    sget p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 13

    move-object v0, p1

    .line 31
    nop

    .line 25
    invoke-static/range {p4 .. p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_1

    .line 31
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 26
    const/16 v1, 0x2f

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    const/16 v2, 0x7a

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p4

    goto :goto_2

    .line 28
    :cond_1
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v7, p4

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    :cond_2
    :goto_2
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v12, 0x1

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v12}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    sget v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 26
    const/16 v0, 0x5b

    goto :goto_3

    :cond_3
    const/16 v0, 0xb

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 31
    return-void

    :pswitch_1
    const/16 v0, 0x42

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/p/addDownloadListener$getDownloadingList;)Lccsansan/m/getDownloadedList;
    .locals 5

    .line 2
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)Lccsansan/m/getDownloadedList;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance v0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;

    const-string v1, "cpiupdate"

    invoke-direct {v0, v1, p1}, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/16 p0, 0x1d

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .line 4
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static/range {p0 .. p8}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

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
    sget p0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/p/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 2

    const/16 v0, 0x4c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    const-wide v0, 0x75dc81cc90371c6L

    sput-wide v0, Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x22e5s
        -0x532as
        0x3e84s
        -0x77bds
        0x1a0bs
        -0x1a32s
        0x77bas
        -0x3e8fs
        0x5310s
        0x22fds
        -0x5346s
        0x3e8ds
        -0x77aes
        0x2fs
        0x7182s
        -0x1c1ds
        0x5525s
        -0x388as
        0x38b2s
        -0x5535s
        0x1c0bs
        -0x71acs
        -0x2e08s
        -0x5fbcs
        0x3218s
        -0x7b3fs
        0x16a0s
        -0x1682s
        0x7b1ds
        -0x322fs
        0x5f88s
        0x2e40s
        -0x5ff1s
        0x3226s
        0x1555s
        0x64f8s
        -0x967s
        0x405fs
        -0x2df4s
        0x2dc8s
        -0x404fs
        0x971s
        -0x64d2s
        -0x155ds
        0x64a4s
        -0x976s
        0x405ds
        -0x2dfds
        0x2ddds
        -0x407bs
        0x968s
        -0xa32s
        -0x7b9cs
        0x1602s
        -0x5f21s
        0x3296s
        -0x32b3s
        0x5f0as
        -0x1628s
        0x7bfes
        0xa55s
        -0x7bd1s
        0x160cs
        -0x5f22s
        0x329cs
        -0x32b0s
        0x5f09s
        -0x1652s
        0x7b83s
        0xa62s
        -0x7bdcs
        0x16f7s
        -0x5f4ds
        0x328as
        -0x32b6s
        0x5f15s
    .end array-data
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 13

    .line 34
    sget p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    .line 1
    const/16 p0, 0x28

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    :goto_0
    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    iget-object v4, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    iget-object v4, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p0

    :try_start_0
    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_8

    goto :goto_3

    .line 34
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 3
    :goto_3
    iget-object v1, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const-string v4, "ad"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 5
    :cond_2
    iget-object v1, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1
    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    const/4 v1, 0x1

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v4, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    goto :goto_5

    .line 1
    :pswitch_1
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 6
    :cond_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v4, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    .line 11
    :goto_5
    iget v4, p0, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v5, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v5}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 12
    iget-object v4, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v5, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v6, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v4, v5, v1, v6}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V

    .line 1
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    goto :goto_7

    .line 15
    :cond_5
    iget v1, p0, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->ADD_XZ_LIST:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v4}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 1
    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    packed-switch v1, :pswitch_data_3

    .line 16
    iget-object v1, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v4, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_7
    :goto_7
    nop

    .line 21
    :cond_8
    :pswitch_2
    iget-object v1, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iget-object v1, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    :goto_8
    invoke-static {v1}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x2

    if-ne v1, v4, :cond_a

    .line 1
    const/16 v1, 0x52

    goto :goto_9

    :cond_a
    const/16 v1, 0x4d

    :goto_9
    packed-switch v1, :pswitch_data_4

    .line 21
    const/4 v1, 0x1

    goto :goto_a

    :pswitch_3
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_c

    .line 1
    sget p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_b

    :try_start_1
    array-length p0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    .line 34
    :cond_b
    return-void

    .line 27
    :cond_c
    iget-object v4, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v5, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v6, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget v7, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadStatusByUrl:I

    iget-object v8, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v9, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->deleteDownItem:Ljava/lang/String;

    iget-wide v10, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:J

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lccsansan/p/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 29
    const-string p1, "s2s_track_status"

    const-string v0, "-1"

    invoke-virtual {p0, p1, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    if-eqz p0, :cond_d

    .line 1
    const/4 v2, 0x0

    goto :goto_b

    :cond_d
    nop

    :goto_b
    packed-switch v2, :pswitch_data_5

    goto :goto_c

    .line 33
    :pswitch_4
    sget-object p1, Lccsansan/m/getDownloadedList$unifiedDownload;->START_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {p1}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p1

    iput p1, p0, Lccsansan/m/getDownloadedList;->execute:I

    .line 34
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4d
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 3

    .line 1
    sget v0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v1, v0, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_2

    .line 1
    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;

    const-string v2, "browser_click"

    invoke-direct {v1, v2, p0, p1}, Lccsansan/p/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 13

    .line 24
    nop

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    const/16 v1, 0x5c

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto/16 :goto_7

    .line 5
    :pswitch_0
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const-string v2, "ad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    const/16 v1, 0x33

    goto :goto_2

    :cond_1
    const/16 v1, 0xf

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    goto :goto_3

    .line 8
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v3, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    move-object v5, v1

    goto :goto_4

    .line 24
    :goto_3
    move-object v5, v1

    .line 10
    :goto_4
    if-eqz v5, :cond_3

    .line 24
    sget v1, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 14
    :cond_2
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    goto :goto_5

    .line 16
    :cond_3
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lccsansan/bn/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 20
    :cond_4
    iget-object v7, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v8, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v10, p0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lccsansan/bn/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_5
    :goto_5
    nop

    .line 23
    :goto_6
    sget-object p0, Lccsansan/m/getDownloadedList$unifiedDownload;->XZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {p0}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result p0

    iput p0, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    sget p0, Lccsansan/p/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    goto/16 :goto_1

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method
