.class Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadedCount:I

.field private static getDownloadingCount:I

.field private static pause:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:J

.field final synthetic deleteDownItem:Lccsanandroid/content/Context;

.field final synthetic getDownloadStatusByUrl:I

.field final synthetic getDownloadedList:Ljava/lang/String;

.field final synthetic getDownloadedRecordByUrl:I

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:I

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->pause:I

    const/16 v0, 0x4a

    sput v0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingCount:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;ILccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iput-wide p5, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:J

    iput-object p7, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    iput p8, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadStatusByUrl:I

    iput p9, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingRecordByUrl:I

    iput-object p10, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedList:Ljava/lang/String;

    iput p11, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedRecordByUrl:I

    iput-object p12, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->deleteDownItem:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingCount:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public execute()V
    .locals 13

    .line 33
    nop

    .line 1
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload()I

    move-result v0

    .line 2
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result v1

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const/16 v3, 0x19

    goto :goto_0

    :cond_0
    const/16 v3, 0x53

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 3
    goto :goto_1

    :pswitch_0
    const/4 v3, -0x1

    .line 33
    goto :goto_2

    :goto_1
    const/4 v3, 0x0

    .line 5
    :goto_2
    iget-object v5, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_2

    iget-object v5, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 5
    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    :pswitch_1
    nop

    .line 33
    sget v5, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->pause:I

    add-int/lit8 v5, v5, 0x3f

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedCount:I

    rem-int/2addr v5, v6

    if-eqz v5, :cond_3

    :cond_3
    const/4 v5, 0x0

    .line 7
    :goto_4
    new-instance v8, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {v8}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;-><init>()V

    iget-object v9, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iget-object v10, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-wide v11, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:J

    .line 8
    invoke-virtual {v8, v9, v10, v11, v12}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v8

    iget-object v9, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v10, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    iget v11, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadStatusByUrl:I

    .line 9
    invoke-virtual {v8, v9, v10, v11}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v8

    .line 10
    invoke-virtual {v8, v1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v1

    sget-object v8, Lccsansan/p/deleteDownList;->START_XZ:Lccsansan/p/deleteDownList;

    invoke-virtual {v8}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v1

    invoke-virtual {v1, v6}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    iget v1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingRecordByUrl:I

    .line 12
    invoke-virtual {v0, v1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    iget v1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedRecordByUrl:I

    invoke-virtual {v0, v1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    invoke-virtual {v0, v5}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    if-eqz v2, :cond_4

    .line 33
    const/16 v1, 0x13

    goto :goto_5

    :cond_4
    const/16 v1, 0x50

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 15
    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->deleteDownItem:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    goto/16 :goto_8

    .line 17
    :pswitch_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 20
    iget-object v2, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x4

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    add-int/lit16 v5, v5, 0xb4

    const-string v10, "\u0004\r\u0005\ufffa\ufffb\u0003\uffff\n\ufff5\ufffa\ufff7\u0005\u0002"

    invoke-static {v10, v7, v2, v3, v5}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, v8, v9}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-nez v5, :cond_5

    .line 33
    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    const/4 v5, 0x1

    :goto_6
    packed-switch v5, :pswitch_data_3

    sget v2, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->pause:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedCount:I

    rem-int/2addr v2, v6

    if-eqz v2, :cond_6

    .line 23
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v4}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x4

    invoke-static {v4, v4}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v9

    add-int/lit16 v9, v9, 0xb4

    invoke-static {v10, v7, v6, v8, v9}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_7

    .line 28
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 30
    :goto_7
    :pswitch_3
    invoke-virtual {v0, v2, v3}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    .line 32
    :goto_8
    invoke-virtual {v0}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object v0

    .line 33
    new-instance v1, Lccsansan/cy/resume;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;->deleteDownItem:Lccsanandroid/content/Context;

    invoke-direct {v1, v2, v0}, Lccsansan/cy/resume;-><init>(Lccsanandroid/content/Context;Lccsansan/cy/getDownloadingRecordByUrl;)V

    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    return-void

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
