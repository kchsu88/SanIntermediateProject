.class final Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:J

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    const/16 v0, 0x97

    sput v0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->deleteDownItem:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    iput-wide p5, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    iput-object p7, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    iput-object p8, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->addDownloadListener:Ljava/lang/String;

    iput-object p9, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;
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

    sget v5, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->deleteDownItem:I

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    nop

    .line 1
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-wide v1, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    invoke-static {v0, v1, v2}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;J)Lccsansan/au/addDownloadListener$trackReportClick;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    const/4 v4, 0x0

    invoke-static {v4}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    const/4 v6, 0x1

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    const-string v9, "\r\uffdc\ufffe\u000f\u0004\n\t\uffdf\n\u0012\t\u0007\n\ufffc\uffff\uffe3\u0000\u0007\u000b\u0000"

    const-string v10, "\r\uffe2\u0017\u0010\u0012\u0003\u0010\uffbe\uffdb\u0002\uffff\r\n\u000c\u0015"

    cmp-long v11, v7, v1

    add-int/lit16 v11, v11, 0xfc

    invoke-static {v9, v4, v3, v5, v11}, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0xf

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x7

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v9, v11, v1

    add-int/lit16 v9, v9, 0xf8

    invoke-static {v10, v6, v7, v8, v9}, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    const/16 v1, 0x53

    goto :goto_0

    :cond_0
    const/16 v1, 0x55

    :goto_0
    const-string v2, "null"

    packed-switch v1, :pswitch_data_0

    .line 2
    invoke-virtual {v0}, Lccsansan/au/addDownloadListener$trackReportClick;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 4
    :pswitch_0
    sget v1, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 10
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 2
    goto :goto_2

    .line 4
    :pswitch_1
    const/16 v1, 0x39

    :try_start_0
    div-int/2addr v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    .line 2
    :goto_2
    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 10
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/16 v1, 0x12

    :goto_3
    packed-switch v1, :pswitch_data_2

    :goto_4
    goto :goto_8

    .line 14
    :pswitch_2
    sget v1, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 4
    iget v0, v0, Lccsansan/au/addDownloadListener$trackReportClick;->removeDownloadListener:I

    invoke-static {}, Lccsansan/au/addDownloadListener;->getDownloadingList()I

    move-result v1

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-le v0, v1, :cond_4

    goto :goto_5

    .line 14
    :catchall_1
    move-exception v0

    throw v0

    .line 4
    :cond_3
    iget v0, v0, Lccsansan/au/addDownloadListener$trackReportClick;->removeDownloadListener:I

    invoke-static {}, Lccsansan/au/addDownloadListener;->getDownloadingList()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 10
    :goto_5
    sget v0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 9
    :cond_4
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/f/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    nop

    :goto_6
    packed-switch v4, :pswitch_data_3

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    iget-wide v6, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    invoke-static/range {v1 .. v7}, Lccsansan/k/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_7

    .line 4
    :pswitch_3
    sget v0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 4
    :catchall_2
    move-exception v0

    throw v0

    .line 10
    :cond_6
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void

    .line 14
    :goto_7
    return-void

    :goto_8
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x53
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
