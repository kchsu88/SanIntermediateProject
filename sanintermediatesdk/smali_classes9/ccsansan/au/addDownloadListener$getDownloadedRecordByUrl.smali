.class final Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static addDownloadListener:J

.field private static deleteDownItem:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    const/16 v0, 0x38

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->IncentiveDownloadUtils:[C

    const-wide v0, -0x6d87ee932d3f16ebL

    sput-wide v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->addDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x779bs
        -0x6154s
        -0x5a7cs
        -0x3374s
        -0x2c1fs
        -0x523s
        0x1e0s
        0x2826s
        0x3f05s
        0x4609s
        0x6d64s
        0x7452s
        -0x64b9s
        -0x5e51s
        -0x374cs
        -0x207cs
        -0x191as
        0xdcfs
        0x14c5s
        0x3b27s
        0x64s
        -0x1686s
        -0x2da3s
        -0x44afs
        -0x5bc8s
        -0x72fas
        0x761fs
        0x5ff7s
        0x4888s
        0x31ces
        0x1aa7s
        0x384s
        -0x1361s
        -0x298cs
        -0x40abs
        -0x57b8s
        -0x4fe6s
        0x5904s
        0x6223s
        0xb2fs
        0x1446s
        0x3d78s
        -0x399fs
        -0x1077s
        -0x70as
        -0x7e5bs
        -0x553bs
        -0x4c0bs
        0x5ce7s
        0x664fs
        0xf28s
        0x1824s
        0x215as
        -0x358ds
        -0x2cc2s
        -0x32fs
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
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

    sget-object v3, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->IncentiveDownloadUtils:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->addDownloadListener:J

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    nop

    .line 19
    sget v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "unknow"

    :cond_2
    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v9}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x77da

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {v2, v3, v4}, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-char v4, v4

    invoke-static {v9, v9}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-static {v3, v4, v5}, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/au/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 19
    sget v2, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 13
    :cond_3
    nop

    .line 15
    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    const-string v2, "retry success"

    move-object v7, v2

    goto :goto_0

    .line 13
    :cond_4
    move-object v7, v8

    .line 15
    :goto_0
    const/4 v10, 0x1

    if-eqz v0, :cond_7

    .line 26
    sget v2, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 19
    const/16 v2, 0x2a

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    :goto_1
    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_4

    :pswitch_0
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    :goto_3
    goto :goto_5

    :goto_4
    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    goto :goto_3

    .line 20
    :goto_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v0, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    .line 26
    :catchall_0
    move-exception v0

    throw v0

    .line 22
    :cond_7
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_9

    .line 37
    sget v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 19
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_2

    .line 26
    :pswitch_2
    iget-object v3, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v6, "0"

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 28
    :cond_9
    iget-object v3, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v6, "0"

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lccsansan/bn/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_8
    nop

    .line 31
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x24

    const v4, 0xb07e

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v8}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-static {v3, v4, v5}, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    add-int/lit16 v4, v4, 0x77db

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x14

    invoke-static {v3, v4, v5}, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v3

    .line 35
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v2

    iget-object v4, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    sget-object v0, Lccsansan/p/deleteDownList;->XZ_FINISH:Lccsansan/p/deleteDownList;

    invoke-virtual {v0}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v7

    const/4 v6, 0x1

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Ljava/lang/String;II)V

    .line 37
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    sget v0, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$getDownloadedRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    .line 37
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
