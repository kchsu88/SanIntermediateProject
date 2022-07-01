.class final Lccsansan/au/addDownloadListener$deleteDownList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    const/16 v0, 0x27

    sput v0, Lccsansan/au/addDownloadListener$deleteDownList;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;
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

    sget v5, Lccsansan/au/addDownloadListener$deleteDownList;->unifiedDownload:I

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    sget v0, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 54
    sget v5, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x3d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 2
    :cond_2
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v5, v5, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 54
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 3
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v5, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v5, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {v6, v5}, Lccsansan/k/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 54
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    sget v0, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 4
    :cond_5
    invoke-static {}, Lccsansan/cy/unifiedDownload;->resolveUrl()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 5
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v5, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 54
    nop

    .line 5
    :cond_6
    move-object v0, v1

    :cond_7
    :goto_3
    :pswitch_1
    if-nez v0, :cond_8

    .line 54
    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const-string v6, "1"

    const-string v7, "\u0007\ufff9\ufffc\ufffb\u0004\u0001\ufffb\u0003\ufff7\ufffc\u0007\u000f\u0006\u0004"

    packed-switch v5, :pswitch_data_2

    .line 12
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-static {v0}, Lccsancom/san/cpi/xz/removeDownloadListener;->addDownloadListener(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    invoke-static {v4}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xe

    invoke-static {v4}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x3

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    add-int/lit16 v9, v9, 0x8f

    invoke-static {v7, v4, v5, v8, v9}, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5, v6}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, v0}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    goto :goto_5

    .line 16
    :pswitch_2
    sget-object v5, Lccsansan/m/getDownloadedList$unifiedDownload;->IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    sget-object v8, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    iget-object v9, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-static {v0, v5, v8, v9}, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsansan/m/getDownloadedList$unifiedDownload;Lccsancom/san/cpi/xz/AdXzParams;)V

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    rsub-int/lit8 v5, v5, 0xe

    invoke-static {v4, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    rsub-int/lit8 v8, v12, 0x2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/lit16 v9, v9, 0x8f

    invoke-static {v7, v4, v5, v8, v9}, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v5, v6}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 21
    :goto_5
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v7, v5, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-object v5, v5, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v5}, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lccsansan/k/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/k/IncentiveDownloadUtils;

    .line 25
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    const-string v5, "ad"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 54
    const/16 v0, 0x40

    goto :goto_6

    :cond_9
    const/16 v0, 0x52

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 25
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mCpiparam:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "cpiparam"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mCpiparam:Ljava/lang/String;

    invoke-static {v0, v6}, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_a
    :pswitch_3
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bw/getErrorCode;->pause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 54
    sget v6, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x7

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_b

    .line 30
    :cond_b
    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 31
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v5, v5, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v5, :cond_c

    .line 32
    invoke-interface {v5, v3, v0}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 34
    :cond_c
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v9, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-boolean v10, v5, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget v11, v5, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    const-string v7, "cached_url"

    move-object v8, v0

    invoke-static/range {v6 .. v11}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 36
    invoke-static {}, Lccsansan/au/addDownloadListener;->removeDownloadListener()V

    .line 38
    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v7, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v9, v5, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v10, v5, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v11, v5, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    iget-boolean v13, v5, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget-object v14, v5, Lccsancom/san/cpi/xz/AdXzParams;->mCallback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    invoke-static/range {v6 .. v14}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z

    .line 40
    iget-object v5, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v7, v6, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    goto :goto_7

    :cond_d
    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    :goto_7
    invoke-virtual {v5, v7, v6}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v5

    .line 42
    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v7, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v8, v7, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v6, v5, v7, v3, v8}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Lccsancom/san/cpi/xz/AdXzParams;ILjava/lang/String;)V

    .line 44
    iget-object v6, v5, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    if-eqz v6, :cond_e

    .line 54
    const/4 v7, 0x1

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    :goto_8
    packed-switch v7, :pswitch_data_4

    :cond_f
    :pswitch_4
    goto/16 :goto_11

    .line 44
    :pswitch_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_18

    .line 54
    sget v6, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x6f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_10

    .line 45
    :cond_10
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 54
    const/16 v6, 0x56

    goto :goto_9

    :cond_11
    const/16 v6, 0x33

    :goto_9
    packed-switch v6, :pswitch_data_5

    .line 45
    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v6, v6, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-static {v6}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;)I

    move-result v6

    goto :goto_a

    :pswitch_6
    invoke-static {v0}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;)I

    move-result v6

    :goto_a
    const/4 v7, -0x2

    if-ne v6, v7, :cond_12

    .line 54
    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    const/4 v6, 0x1

    :goto_b
    packed-switch v6, :pswitch_data_6

    .line 45
    const/4 v6, 0x0

    goto :goto_c

    .line 54
    :pswitch_7
    sget v6, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x6b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_13

    .line 45
    :cond_13
    nop

    .line 54
    const/4 v6, 0x1

    .line 47
    :goto_c
    iget v5, v5, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eqz v5, :cond_16

    .line 54
    sget v7, Lccsansan/au/addDownloadListener$deleteDownList;->IncentiveDownloadUtils:I

    add-int/lit8 v7, v7, 0x2f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/au/addDownloadListener$deleteDownList;->addDownloadListener:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_14

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v2, :cond_f

    goto :goto_e

    :catchall_0
    move-exception v0

    throw v0

    .line 47
    :cond_14
    if-ne v5, v2, :cond_15

    .line 54
    const/4 v1, 0x0

    goto :goto_d

    :cond_15
    const/4 v1, 0x1

    :goto_d
    packed-switch v1, :pswitch_data_7

    .line 47
    :goto_e
    if-nez v6, :cond_18

    .line 48
    :cond_16
    iget-object v6, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v7, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v9, v1, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 54
    const/4 v3, 0x0

    goto :goto_f

    :cond_17
    nop

    :goto_f
    packed-switch v3, :pswitch_data_8

    .line 48
    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    move-object v11, v1

    goto :goto_10

    :pswitch_8
    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    .line 54
    move-object v11, v1

    .line 48
    :goto_10
    move-object v8, v0

    invoke-static/range {v6 .. v11}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    :goto_11
    return-void

    .line 54
    :cond_19
    iget-object v0, p0, Lccsansan/au/addDownloadListener$deleteDownList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$deleteDownList;->getDownloadingList:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-static {v0, v1}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x52
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x33
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
