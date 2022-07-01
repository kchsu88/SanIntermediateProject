.class public Lccsancom/san/proaz/OutProAzImproveActivity;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

.field private addDownloadListener:Lccsanandroid/view/View$OnClickListener;

.field private removeDownloadListener:Ljava/lang/String;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    const/16 v0, 0xb2

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 107
    new-instance v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;-><init>(Lccsancom/san/proaz/OutProAzImproveActivity;)V

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

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

    sget v5, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingList:I

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

.method private IncentiveDownloadUtils()V
    .locals 9

    .line 16
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "san_app_improve_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 2
    const-string v1, "san_app_name_text"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    const-string v2, ""

    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int v4, v4, 0x11d

    const-string v5, "\u0001\ufff6\t\u0008\u0003\ufffe\ufff4\ufffa\u000b\u0004\u0007\u0005\u0002\ufffe\ufff4\u0005\u0005\ufff6\ufff4\u0003\ufff6\u0008\t\r\ufffa\t\ufff4\u0001"

    const/4 v6, 0x1

    invoke-static {v5, v6, v2, v3, v4}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    .line 4
    const-string v3, "san_app_improve_desc_text"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x15

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    const/4 v7, 0x0

    const-string v8, "\ufff8\n\ufffc\n\u0006\u0003\ufffa\ufff6\u0003\u0003\ufff8\u000b\n\u0005\u0000\ufff6\u0007\u0007\ufff8\ufff6\u0005"

    cmpl-float v5, v5, v7

    add-int/lit8 v5, v5, 0x2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int v7, v7, 0x11b

    invoke-static {v8, v6, v4, v5, v7}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/ImageView;

    .line 7
    invoke-direct {p0, v0}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Lccsanandroid/widget/ImageView;)V

    .line 9
    iget-object v5, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-virtual {v5}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v5, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 12
    iget-object v2, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/widget/ImageView;)V
    .locals 4

    .line 31
    nop

    .line 28
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-static {p0, v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v1, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    const/16 v2, 0x5d

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/2addr v1, v3

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    if-nez v1, :cond_3

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 11

    .line 27
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 25
    :cond_0
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    const/16 v1, 0x30

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x9

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v8, "\u000c\u0011\uffe1\u0006\u000b\u000c\ufff9\u0004\u0004\uffe7\r\u000c\uffe8\n\u0007\uffd9\ufffb\u000c\u0001\u000e\u0001"

    const-string v9, "out_activity"

    cmp-long v10, v4, v6

    add-int/lit16 v10, v10, 0x119

    invoke-static {v8, v3, v1, v2, v10}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/san/proaz/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/p/getDownloadedList;)V

    .line 26
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, p1}, Lccsansan/bn/getDownloadedCount;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener()V

    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private addDownloadListener(I)Ljava/lang/String;
    .locals 6

    .line 24
    nop

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1c

    invoke-static {v0}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x15

    invoke-static {v0, v0}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x11d

    const-string v4, "\u0001\ufff6\t\u0008\u0003\ufffe\ufff4\ufffa\u000b\u0004\u0007\u0005\u0002\ufffe\ufff4\u0005\u0005\ufff6\ufff4\u0003\ufff6\u0008\t\r\ufffa\t\ufff4\u0001"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1, v2, v3}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string p1, "button"

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_0
    const-string p1, "non_button"

    goto :goto_2

    :cond_1
    const/16 v5, 0x1d

    :goto_1
    packed-switch v5, :pswitch_data_1

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :pswitch_1
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener()V

    sget p0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x17

    goto :goto_0

    :cond_1
    const/16 p0, 0x4c

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x15

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener()Z
    .locals 13

    .line 23
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2a

    if-nez v0, :cond_0

    .line 6
    const/16 v0, 0x2a

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    const-string v2, "appPortal"

    const-string v3, "appPkgName"

    const-string v4, "\uffd9\ufffd\u000e\u0007\n\u0008\u0005\uffe1\u0004\u0004\ufff9\u000c\u000b\u0006\uffe1\u0007\n\uffe8\u000c\r\uffe7\u0011\u000c\u0001\u000e\u0001\u000c\ufffb"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->unifiedDownload:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Ljava/lang/String;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 4
    :goto_1
    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->unifiedDownload:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Ljava/lang/String;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x4

    :try_start_1
    div-int/2addr v0, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 23
    :catchall_0
    move-exception v0

    throw v0

    .line 8
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v11

    const-string v12, "\u0011\uffe6\u000f\uffc2\uffdf\uffc2\u0010\u0011\u000b\u0016\u0012\u0007\u0005\u001a\u0007\uffc2\u0007\u0015\u0014\u0003\u0012\uffc2\u0012\u0012\uffe3\u0006\u0007\u0006\u0003\u0011\u000e\u0010\u0019"

    cmpl-float v11, v11, v5

    rsub-int v11, v11, 0x111

    invoke-static {v12, v8, v3, v10, v11}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1c

    invoke-static {v9, v9, v9}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x15

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    cmp-long v12, v10, v6

    rsub-int v10, v12, 0x11b

    invoke-static {v4, v8, v2, v3, v10}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_3
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    const/16 v2, 0x30

    if-eqz v0, :cond_1

    .line 6
    const/16 v0, 0x2e

    goto :goto_4

    :cond_1
    const/16 v0, 0x30

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 11
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    .line 18
    :cond_2
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity finish for mPkgName is not equal, mPkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "\r\u000e\r\n\u0018\u0015\u0017 \u0018\uffed\u0016\uffc9\uffd5\uffc9\uffe6\uffc9\uffd2\uffd1\u000e\u0016\n\ufff7\u000e\u0010\n\u0014\u000c\n\ufff9\u001d\u000e\u0010\uffd7\u0019\u0019\uffea"

    cmp-long v10, v1, v6

    add-int/lit8 v10, v10, 0x23

    invoke-static {v9, v9}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {v9}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    rsub-int v2, v2, 0x109

    invoke-static {v3, v8, v10, v1, v2}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    cmp-long v3, v1, v6

    add-int/lit8 v3, v3, 0x1b

    invoke-static {v9}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {v5, v5}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v2

    cmpl-float v2, v2, v5

    rsub-int v2, v2, 0x11a

    invoke-static {v4, v8, v3, v1, v2}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_3
    return v8

    .line 21
    :goto_5
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener()V

    invoke-static {v9, v9}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1c

    invoke-static {v9}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v9, v9, v9}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    rsub-int v5, v5, 0x11a

    invoke-static {v4, v8, v0, v3, v5}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v3, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    rsub-int/lit8 v1, v1, 0x15

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit16 v3, v3, 0x113

    const-string v4, "\u0003\u000e\u0016\r\u000b\u000e\u0000\u0003\u0004\u0003\uffe0\u000f\u000f\uffbf\u0008\u0012\uffbf\r\u0014\u000b\u000b\uffe0\u0002\u0013\u0008\u0015\u0008\u0013\u0018\uffbf\u0005\u0008\r\u0008\u0012\u0007\uffbf\u0005\u000e\u0011\uffbf"

    invoke-static {v4, v9, v2, v1, v3}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 23
    return v9

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsancom/san/proaz/OutProAzImproveActivity;I)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener(I)Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
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
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 5

    .line 8
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    const-string v4, "out_activity"

    packed-switch v0, :pswitch_data_0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->unifiedDownload()V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->unifiedDownload()V

    .line 2
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils()V

    .line 4
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v4, v0, v1, v3}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 2
    :goto_1
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils()V

    .line 4
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v4, v0, v2, v3}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_2
    goto :goto_3

    .line 6
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v2, v0}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    :goto_3
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    goto :goto_4

    :cond_1
    const/16 v0, 0x19

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 8
    return-void

    .line 6
    :pswitch_1
    const/16 v0, 0x5c

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;)Lccsansan/p/getDownloadedList;
    .locals 2

    .line 2
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    iget-object p0, p0, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener()V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 8
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x27

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(I)Z
    .locals 8

    .line 7
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    const-string v2, "\u0001\ufff6\t\u0008\u0003\ufffe\ufff4\ufffa\u000b\u0004\u0007\u0005\u0002\ufffe\ufff4\u0005\u0005\ufff6\ufff4\u0003\ufff6\u0008\t\r\ufffa\t\ufff4\u0001"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x7e

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    div-int/lit8 v5, v5, 0x51

    ushr-int/2addr v0, v5

    const/16 v5, 0x6e

    invoke-static {v4, v4}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v6

    shl-int/2addr v5, v6

    const/16 v6, 0x2dd6

    const/16 v7, 0x64

    invoke-static {v1, v7, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    ushr-int v1, v6, v1

    invoke-static {v2, v3, v0, v5, v1}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 0
    :cond_1
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x1c

    invoke-static {v4, v4}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    const/16 v6, 0x30

    invoke-static {v1, v6, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit16 v1, v1, 0x11e

    invoke-static {v2, v3, v0, v5, v1}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 5
    :goto_2
    :pswitch_1
    const-string v0, "san_app_improve_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 7
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 5
    :cond_3
    nop

    .line 6
    const-string v0, "san_app_name_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 7
    const-string v0, "san_app_improve_desc_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    nop

    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload()V
    .locals 6

    .line 8
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const/16 v0, 0x30

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2
    iput v0, v1, Lccsanandroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3
    invoke-static {p0}, Lccsansan/bt/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lccsansan/bt/addDownloadListener;->addDownloadListener(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Lccsanandroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStyle exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1c

    const-string v4, ""

    invoke-static {v4, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    const/4 v4, 0x0

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int v4, v4, 0x11a

    const-string v5, "\uffd9\ufffd\u000e\u0007\n\u0008\u0005\uffe1\u0004\u0004\ufff9\u000c\u000b\u0006\uffe1\u0007\n\uffe8\u000c\r\uffe7\u0011\u000c\u0001\u000e\u0001\u000c\ufffb"

    invoke-static {v5, v2, v3, v0, v4}, Lccsancom/san/proaz/OutProAzImproveActivity;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/proaz/OutProAzImproveActivity;I)Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener(I)Z

    move-result p0

    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 4

    sget v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x3d

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v2, 0x54

    goto :goto_2

    :cond_1
    const/16 v2, 0xf

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    const/16 v2, 0x22

    :try_start_1
    div-int/2addr v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    .line 17
    nop

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    .line 6
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 17
    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 6
    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const p1, 0x186a1

    const-string v0, "notification"

    packed-switch v1, :pswitch_data_1

    .line 3
    goto :goto_2

    .line 17
    :pswitch_0
    nop

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 6
    invoke-virtual {v0, p1}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x28

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 17
    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :goto_2
    :try_start_2
    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 6
    invoke-virtual {v0, p1}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 11
    :goto_3
    :pswitch_1
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :try_start_3
    array-length p1, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    .line 17
    :cond_2
    return-void

    .line 15
    :cond_3
    const-string p1, "san_activity_promotion_az_out_improve"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->setContentView(I)V

    .line 17
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingList()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
