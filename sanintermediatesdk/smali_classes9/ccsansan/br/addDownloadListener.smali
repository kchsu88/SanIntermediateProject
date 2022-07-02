.class public Lccsansan/br/addDownloadListener;
.super Lccsanandroid/webkit/WebViewClient;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static IncentiveSDK$1:I

.field public static final addDownloadListener:I

.field private static resolveUrl:I

.field private static shouldTryHandlingAction:I

.field private static final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

.field private deleteDownItem:Lccsanandroid/widget/ProgressBar;

.field private deleteDownList:Lccsanandroid/widget/TextView;

.field private getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

.field private getDownloadedCount:Lccsanandroid/widget/TextView;

.field private getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

.field private getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

.field private getDownloadingCount:Lccsanandroid/widget/TextView;

.field private getDownloadingList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

.field private getPackageNameByRecord:Lccsansan/bm/unifiedDownload;

.field private getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

.field private pause:Lccsanandroid/widget/ImageView;

.field public removeDownloadListener:Z

.field private resume:Lccsanandroid/view/View;

.field private trackReportClick:J

.field private trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    const/4 v1, 0x1

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    invoke-static {}, Lccsansan/br/addDownloadListener;->getDownloadingList()V

    invoke-static {}, Lccsansan/br/addDownloadListener;->unifiedDownload()V

    .line 1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v0

    const-string v4, "https"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lccsansan/br/addDownloadListener;->unifiedDownload:Ljava/util/List;

    sget v3, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v3, v3, 0x67

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/2addr v3, v2

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    .line 3
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/Button;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    .line 4
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    .line 5
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    .line 6
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->deleteDownList:Lccsanandroid/widget/TextView;

    .line 7
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->resume:Lccsanandroid/view/View;

    .line 8
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedCount:Lccsanandroid/widget/TextView;

    .line 9
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingCount:Lccsanandroid/widget/TextView;

    .line 10
    iget-object p1, p1, Lccsansan/br/IncentiveDownloadUtils;->trackReportShow:Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsansan/br/addDownloadListener;->pause:Lccsanandroid/widget/ImageView;

    return-void
.end method

.method private IncentiveDownloadUtils(I)V
    .locals 3

    .line 34
    nop

    .line 28
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 34
    sget v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    .line 28
    :cond_2
    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    const/4 v0, -0x6

    if-eq p1, v0, :cond_3

    .line 31
    const/16 v0, 0x18

    goto :goto_3

    :cond_3
    const/16 v0, 0x33

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 28
    :pswitch_0
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    .line 34
    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    const-string v0, "failed"

    const-string v1, "The url is wrong"

    if-nez p1, :cond_4

    .line 30
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iput-object v1, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 34
    :catchall_1
    move-exception p1

    throw p1

    .line 30
    :cond_4
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iput-object v1, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_5
    :goto_4
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    const-string v0, "Network error"

    iput-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 34
    const-string v0, "failed_no_network"

    iput-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_6
    :goto_5
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;
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

    sget v5, Lccsansan/br/addDownloadListener;->IncentiveSDK$1:I

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

.method static synthetic addDownloadListener(Lccsansan/br/addDownloadListener;)Lccsansan/br/IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    iget-object p0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .line 131
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    if-nez v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-eqz p2, :cond_17

    goto :goto_4

    .line 131
    :goto_1
    const/16 v0, 0x5d

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto/16 :goto_10

    .line 69
    :goto_4
    :pswitch_1
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 131
    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 70
    :cond_2
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    invoke-static {p1, p2, v3}, Lccsansan/bw/resume;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    :cond_3
    nop

    .line 131
    return v3

    .line 72
    :cond_4
    nop

    .line 79
    const-string v0, "shareits://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "Hybrid"

    const-string v5, "android.intent.action.VIEW"

    if-nez v0, :cond_7

    .line 131
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 79
    :cond_5
    const-string v0, "likeits://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "likeitl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_2

    .line 79
    :cond_7
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 81
    :try_start_1
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 82
    iget-object v6, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/app/Activity;

    invoke-virtual {v6, v0}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 85
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :pswitch_2
    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    shr-int/2addr v0, v1

    const/16 v1, 0x11

    rsub-int/lit8 v0, v0, 0x11

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v6

    const/4 v7, 0x0

    const-string v8, "\uffcd\uffd8\u0012\u000c\u0003\u0012\u000c\u0007\u0002\uffff\r\n\u000c\u0015\r\u0002\uffcd"

    cmpl-float v6, v6, v7

    rsub-int/lit8 v6, v6, 0x9

    invoke-static {v2, v2}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    add-int/lit16 v7, v7, 0xc1

    invoke-static {v8, v3, v0, v6, v7}, Lccsansan/br/addDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    sget p1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    return v3

    .line 94
    :cond_9
    const-string v0, "intent://inner_function"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "intent://play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 131
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v6, "intent://"

    if-nez v0, :cond_c

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v6, 0x3a

    :try_start_2
    div-int/2addr v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_a

    const/16 v0, 0x16

    goto :goto_6

    :cond_a
    const/16 v0, 0x59

    :goto_6
    packed-switch v0, :pswitch_data_3

    :cond_b
    :goto_7
    goto/16 :goto_e

    :catchall_0
    move-exception p1

    throw p1

    .line 94
    :cond_c
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_d
    :pswitch_3
    nop

    .line 96
    :try_start_3
    invoke-static {p2, v3}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.category.BROWSABLE"

    .line 97
    invoke-virtual {v0, v6}, Lccsanandroid/content/Intent;->addCategory(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 99
    invoke-virtual {v0, v6}, Lccsanandroid/content/Intent;->setSelector(Lccsanandroid/content/Intent;)V

    .line 100
    iget-object v7, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/app/Activity;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    .line 131
    nop

    .line 100
    :try_start_4
    const-class v8, Lccsanandroid/app/Activity;

    int-to-byte v9, v2

    int-to-byte v10, v9

    add-int/lit8 v11, v10, -0x1

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lccsansan/br/addDownloadListener;->removeDownloadListener(IBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/content/pm/PackageManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0, v7}, Lccsanandroid/content/Intent;->resolveActivity(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 131
    const/4 v7, 0x1

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    :goto_8
    packed-switch v7, :pswitch_data_4

    .line 101
    iget-object p1, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    return v3

    .line 100
    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    throw v0

    :cond_f
    throw p1

    .line 101
    :cond_10
    :pswitch_4
    const-string v7, "browser_fallback_url"

    .line 105
    invoke-virtual {v0, v7}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 107
    invoke-virtual {p1, v7}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    iput-boolean v3, p0, Lccsansan/br/addDownloadListener;->removeDownloadListener:Z

    return v2

    .line 112
    :cond_11
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-direct {p1, v5}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .line 131
    sget v7, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v7, v7, 0x6f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_12

    goto :goto_9

    :cond_12
    const/16 v1, 0x5f

    :goto_9
    packed-switch v1, :pswitch_data_5

    .line 113
    :try_start_6
    const-class v1, Lccsanandroid/app/Activity;

    goto :goto_a

    .line 131
    :pswitch_5
    const-class v1, Lccsanandroid/app/Activity;

    int-to-byte v7, v3

    int-to-byte v8, v7

    shl-int/lit8 v9, v8, 0x0

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lccsansan/br/addDownloadListener;->removeDownloadListener(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->resolveActivity(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/content/ComponentName;

    move-result-object v0
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v0, :cond_b

    :pswitch_6
    goto :goto_c

    .line 113
    :catchall_2
    move-exception p1

    goto :goto_d

    :goto_a
    int-to-byte v7, v2

    int-to-byte v8, v7

    add-int/lit8 v9, v8, -0x1

    int-to-byte v9, v9

    :try_start_8
    invoke-static {v7, v8, v9}, Lccsansan/br/addDownloadListener;->removeDownloadListener(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->resolveActivity(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 131
    const/4 v0, 0x0

    goto :goto_b

    :cond_13
    const/4 v0, 0x1

    :goto_b
    packed-switch v0, :pswitch_data_6

    goto/16 :goto_7

    .line 114
    :goto_c
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    return v3

    .line 113
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    throw v0

    :cond_14
    throw p1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_1

    .line 114
    :catch_1
    move-exception p1

    .line 122
    :cond_15
    :goto_e
    :try_start_a
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 124
    sget-object v0, Lccsansan/br/addDownloadListener;->unifiedDownload:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 125
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 131
    const/4 v0, 0x0

    goto :goto_f

    :cond_16
    const/4 v0, 0x1

    :goto_f
    packed-switch v0, :pswitch_data_7

    goto/16 :goto_3

    .line 125
    :pswitch_7
    if-nez p1, :cond_17

    const-string p1, "about:blank"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 126
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v5, p2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 127
    iget-object p2, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/app/Activity;

    invoke-virtual {p2, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 131
    return v3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_17
    :goto_10
    return v2

    :catchall_3
    move-exception p1

    goto :goto_12

    :goto_11
    throw p1

    :goto_12
    goto :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x54
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
    .packed-switch 0x16
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/br/addDownloadListener;I)Z
    .locals 2

    .line 2
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/br/addDownloadListener;->removeDownloadListener(I)Z

    move-result p0

    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x28

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 p1, 0x3

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x5f

    sput v0, Lccsansan/br/addDownloadListener;->IncentiveSDK$1:I

    return-void
.end method

.method private getDownloadingList(I)V
    .locals 2

    .line 2
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Lccsansan/br/addDownloadListener;->removeDownloadListener()V

    .line 2
    invoke-direct {p0, p1}, Lccsansan/br/addDownloadListener;->IncentiveDownloadUtils(I)V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lccsansan/br/addDownloadListener;->removeDownloadListener()V

    .line 2
    invoke-direct {p0, p1}, Lccsansan/br/addDownloadListener;->IncentiveDownloadUtils(I)V

    goto :goto_2

    :goto_1
    const/16 p1, 0x1c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x36

    goto :goto_3

    :cond_1
    const/16 p1, 0x30

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/16 p1, 0x2b

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList(Lccsanandroid/net/Uri;I)V
    .locals 8

    .line 55
    const-string v0, "Hybrid"

    .line 0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 55
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    goto/16 :goto_b

    .line 35
    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 36
    iget-object v4, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v4, v4, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    sget v4, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v4, v4, 0x3f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    goto :goto_3

    .line 36
    :pswitch_2
    iget-object v4, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v4}, Lccsansan/br/IncentiveDownloadUtils;->getWebView()Lccsansan/br/deleteDownItem;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v4, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v4, v4, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 37
    :goto_4
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "html"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x1f

    if-nez v5, :cond_7

    .line 55
    sget v5, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 37
    :cond_4
    const-string v5, "htm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 55
    const/16 v5, 0x1f

    goto :goto_5

    :cond_5
    const/16 v5, 0x42

    :goto_5
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 37
    :pswitch_3
    const-string v5, "css"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 55
    sget v5, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v5, v5, 0x53

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    .line 37
    :cond_6
    const-string v5, "js"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_7
    :goto_6
    const/4 v3, 0x0

    .line 41
    :try_start_0
    invoke-static {v4}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 43
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v3, :cond_8

    .line 55
    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    packed-switch v5, :pswitch_data_3

    .line 46
    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 55
    sget v3, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/2addr v3, v6

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    .line 47
    :cond_9
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 55
    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    nop

    :goto_9
    packed-switch v1, :pswitch_data_4

    sget v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v1, v1, 0x2

    const-string v3, "ow"

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v1, 0x57

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_a

    :catchall_0
    move-exception p1

    throw p1

    .line 47
    :cond_b
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 48
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showErrorViewOnReceiveError url is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p2}, Lccsansan/br/addDownloadListener;->getDownloadingList(I)V

    goto :goto_b

    .line 52
    :cond_c
    :pswitch_4
    invoke-direct {p0, p2}, Lccsansan/br/addDownloadListener;->getDownloadingList(I)V

    goto :goto_b

    .line 55
    :cond_d
    invoke-direct {p0, p2}, Lccsansan/br/addDownloadListener;->getDownloadingList(I)V

    goto/16 :goto_1

    :cond_e
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;)V
    .locals 5

    .line 25
    nop

    .line 9
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 8
    :cond_0
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8
    :cond_1
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 9
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 8
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 25
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object v0

    check-cast v0, Lccsansan/ba/addDownloadListener;

    const/16 v1, 0x10

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    throw p1

    .line 9
    :cond_4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object v0

    check-cast v0, Lccsansan/ba/addDownloadListener;

    if-nez v0, :cond_5

    :goto_2
    return-void

    .line 13
    :cond_5
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lccsansan/ba/addDownloadListener;->pause()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 14
    invoke-virtual {v0}, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl()Lccsansan/aq/addDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/aq/addDownloadListener;->getDownloadingList()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl()Lccsansan/aq/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1, v2}, Lccsansan/bo/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    :goto_3
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(IBB)Ljava/lang/String;
    .locals 8

    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x4

    rsub-int/lit8 p1, p1, 0x67

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x11

    add-int/lit8 p2, p2, 0x4

    sget-object v0, Lccsansan/br/addDownloadListener;->IncentiveDownloadUtils:[B

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_0
    move-object v4, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_2

    :goto_1
    int-to-byte v5, p1

    aput-byte v5, v1, v4

    add-int/2addr p2, v2

    add-int/lit8 v5, v4, 0x1

    if-ne v4, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p2

    move-object v7, v0

    move v0, p2

    move p2, v4

    move-object v4, v1

    move-object v1, v7

    :goto_2
    neg-int p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x8

    sget p2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p2, p2, 0x37

    rem-int/lit16 v6, p2, 0x80

    sput v6, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p2, p2, 0x2

    move p2, v0

    move-object v0, v1

    move-object v1, v4

    move v4, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener()V
    .locals 5

    .line 68
    nop

    .line 56
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iget-boolean v1, v0, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 57
    :pswitch_0
    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->resume:Lccsanandroid/view/View;

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 59
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 60
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 60
    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const/16 v0, 0x36

    goto :goto_2

    :cond_2
    const/16 v0, 0x41

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 68
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "san_common_load_error_set_network"

    const-string v2, "san_request_failed_network_msg"

    const-string v4, "ccsan_san_request_failed_common"

    goto :goto_3

    .line 66
    :pswitch_1
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->pause:Lccsanandroid/widget/ImageView;

    const-string v1, "ccsan_san_request_failed_wireless"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/bw/setAdSize;->addDownloadListener(Lccsanandroid/widget/ImageView;I)V

    .line 67
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedCount:Lccsanandroid/widget/TextView;

    const-string v1, "san_common_hybrid_web_timeout"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingCount:Lccsanandroid/widget/TextView;

    const-string v1, "san_common_operate_retry"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 64
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 68
    goto :goto_4

    .line 61
    :goto_3
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iput-boolean v3, v0, Lccsansan/br/IncentiveDownloadUtils;->getActionType:Z

    .line 62
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->pause:Lccsanandroid/widget/ImageView;

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lccsansan/bw/setAdSize;->addDownloadListener(Lccsanandroid/widget/ImageView;I)V

    .line 63
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedCount:Lccsanandroid/widget/TextView;

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingCount:Lccsanandroid/widget/TextView;

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 68
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;)V
    .locals 5

    .line 26
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    goto/16 :goto_a

    :pswitch_1
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    .line 9
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 26
    :pswitch_2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :pswitch_3
    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 9
    :goto_5
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    const-string v0, "about:blank"

    packed-switch v1, :pswitch_data_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    .line 9
    :pswitch_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    const/16 v0, 0xf

    goto :goto_6

    :cond_6
    const/16 v0, 0x12

    :goto_6
    packed-switch v0, :pswitch_data_4

    :pswitch_5
    goto :goto_9

    :goto_7
    :try_start_1
    array-length v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_7

    const/16 v0, 0x4d

    goto :goto_8

    :cond_7
    const/16 v0, 0x24

    :goto_8
    packed-switch v0, :pswitch_data_5

    goto :goto_1

    .line 10
    :goto_9
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object v0

    check-cast v0, Lccsansan/ba/addDownloadListener;

    if-nez v0, :cond_8

    return-void

    .line 14
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsansan/br/addDownloadListener;->trackReportClick:J

    sub-long/2addr v1, v3

    .line 15
    invoke-virtual {v0}, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl()Lccsansan/aq/addDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/aq/addDownloadListener;->getDownloadingList()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_a

    .line 26
    :cond_9
    invoke-virtual {v0}, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl()Lccsansan/aq/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1, v2}, Lccsansan/bo/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_a
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4d
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/br/addDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/br/addDownloadListener;->removeDownloadListener()V

    sget p0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/br/addDownloadListener;I)V
    .locals 2

    .line 2
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/br/addDownloadListener;->IncentiveDownloadUtils(I)V

    sget p0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

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
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(I)Z
    .locals 4

    .line 7
    nop

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldShowErrorView progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    if-lez p1, :cond_0

    .line 7
    const/16 v2, 0x55

    goto :goto_0

    :cond_0
    const/16 v2, 0x43

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v2, 0x61

    goto :goto_1

    :cond_1
    const/16 v2, 0x2a

    :goto_1
    packed-switch v2, :pswitch_data_1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_2

    goto :goto_2

    .line 4
    :pswitch_0
    const/16 v2, 0x50

    if-ge p1, v2, :cond_2

    .line 6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress < OUT_PROGRESS firstResult = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p1, "success"

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :cond_2
    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method static unifiedDownload()V
    .locals 3

    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v1, v0, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/br/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v1, 0x75

    sput v1, Lccsansan/br/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x41t
        0x79t
        0x42t
        -0x2at
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/bm/getDownloadingList;)V
    .locals 2

    .line 7
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public addDownloadListener(Lccsansan/bm/IncentiveDownloadUtils;)V
    .locals 3

    .line 8
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    const/4 p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x1f

    :cond_1
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

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/bm/unifiedDownload;)V
    .locals 2

    .line 27
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/br/addDownloadListener;->getPackageNameByRecord:Lccsansan/bm/unifiedDownload;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x25

    goto :goto_0

    :cond_1
    const/16 p1, 0x48

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x42

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method public doUpdateVisitedHistory(Lccsanandroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 3

    .line 15
    nop

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->doUpdateVisitedHistory(Lccsanandroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iget-boolean v0, v0, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload:Z

    const-string v1, "Hybrid"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iput-boolean v2, v0, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload:Z

    .line 4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList()V

    .line 5
    const-string v0, "doUpdateVisitedHistory by isFirstEntry"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    nop

    .line 8
    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 8
    :cond_2
    nop

    .line 9
    const-string v0, "doUpdateVisitedHistory by about:blank"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList()V

    .line 11
    invoke-static {}, Lccsansan/aq/deleteDownItem;->getDownloadingList()Lccsansan/aq/deleteDownItem;

    move-result-object v0

    iget-object v1, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0, v1}, Lccsansan/aq/deleteDownItem;->addDownloadListener(Lccsansan/br/IncentiveDownloadUtils;)V

    goto :goto_1

    .line 14
    :goto_2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    if-eqz v0, :cond_3

    .line 15
    const/16 v1, 0x4c

    goto :goto_3

    :cond_3
    const/16 v1, 0x32

    :goto_3
    packed-switch v1, :pswitch_data_1

    :goto_4
    goto :goto_5

    :pswitch_1
    invoke-interface {v0, p1, p2, p3}, Lccsansan/bm/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_4

    :goto_5
    sget p1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method

.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 38
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Lccsansan/br/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getPackageNameByRecord:Lccsansan/bm/unifiedDownload;

    if-eqz v0, :cond_0

    .line 13
    const/16 v1, 0x49

    goto :goto_0

    :cond_0
    const/16 v1, 0x4f

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 27
    sget v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, p1, p2}, Lccsansan/bm/unifiedDownload;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    const/16 v0, 0x54

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :cond_1
    invoke-interface {v0, p1, p2}, Lccsansan/bm/unifiedDownload;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 8
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 12
    :cond_2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    const/16 v3, 0x8

    if-eqz v0, :cond_6

    .line 5
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem()Z

    move-result v0

    const/4 v4, 0x0

    :try_start_1
    array-length v4, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_3

    .line 5
    :catchall_1
    move-exception p1

    throw p1

    .line 13
    :cond_3
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto :goto_4

    .line 16
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 14
    :goto_4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 20
    :cond_6
    :goto_5
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 38
    sget v4, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v4, v4, 0x23

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    .line 20
    :cond_7
    nop

    .line 21
    invoke-virtual {v0, v3}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 24
    :cond_8
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    if-eqz v0, :cond_b

    .line 25
    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->deleteDownList:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 13
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    :goto_6
    packed-switch v4, :pswitch_data_2

    .line 38
    sget v4, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v4, v4, 0x1f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_a

    .line 13
    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    nop

    :goto_7
    packed-switch v2, :pswitch_data_3

    .line 38
    const/16 v1, 0x5f

    .line 27
    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 26
    :pswitch_2
    nop

    .line 27
    invoke-virtual {v0, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 38
    :goto_8
    nop

    .line 30
    :pswitch_3
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount()V

    .line 33
    :cond_b
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 34
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedRecordByUrl()V

    .line 38
    nop

    .line 37
    :cond_c
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    if-eqz v0, :cond_d

    .line 38
    invoke-interface {v0, p1, p2}, Lccsansan/bm/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 6

    .line 41
    nop

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/br/addDownloadListener;->trackReportClick:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lccsansan/br/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 41
    sget v3, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v3, v3, 0x67

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 33
    const/16 v3, 0x12

    goto :goto_0

    :cond_0
    const/16 v3, 0x4e

    :goto_0
    const-string v4, "tapBack"

    packed-switch v3, :pswitch_data_0

    .line 4
    nop

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    :pswitch_0
    nop

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageStarted mHandler = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsansan/br/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 11
    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    new-instance v1, Lccsansan/br/addDownloadListener$getDownloadingList;

    invoke-direct {v1, p0}, Lccsansan/br/addDownloadListener$getDownloadingList;-><init>(Lccsansan/br/addDownloadListener;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    if-eqz v0, :cond_4

    .line 33
    const/16 v0, 0xc

    goto :goto_3

    :cond_4
    const/16 v0, 0x3b

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    .line 25
    :pswitch_2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 28
    :cond_5
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setVisibility(I)V

    .line 32
    :goto_4
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 32
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 5
    sget v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 33
    invoke-virtual {v0, v3}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    .line 32
    :cond_7
    nop

    .line 33
    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 41
    :goto_6
    nop

    .line 36
    :cond_8
    :pswitch_3
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    if-eqz v0, :cond_9

    .line 33
    const/16 v0, 0x33

    goto :goto_7

    :cond_9
    const/16 v0, 0x22

    :goto_7
    packed-switch v0, :pswitch_data_4

    .line 37
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadedList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedCount()V

    .line 5
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 33
    goto :goto_8

    :cond_a
    const/4 v2, 0x1

    :goto_8
    packed-switch v2, :pswitch_data_5

    .line 41
    goto :goto_9

    .line 5
    :pswitch_4
    nop

    .line 40
    :cond_b
    :goto_9
    :pswitch_5
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    if-eqz v0, :cond_c

    .line 41
    invoke-interface {v0, p1, p2, p3}, Lccsansan/bm/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failingUrl is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 8
    const/16 v1, 0x56

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    goto :goto_2

    .line 3
    :pswitch_0
    invoke-interface {v0, p1, p2, p3, p4}, Lccsansan/bm/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :goto_2
    const/4 v0, -0x8

    if-eq p2, v0, :cond_2

    .line 8
    const/16 v0, 0x62

    goto :goto_3

    :cond_2
    const/16 v0, 0x58

    :goto_3
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 7
    :cond_3
    invoke-static {p4}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsansan/br/addDownloadListener;->getDownloadingList(Lccsanandroid/net/Uri;I)V

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 3

    .line 14
    nop

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidM onReceivedError errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failing url is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 11
    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x5f

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 14
    sget v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11
    const/16 v1, 0x5d

    goto :goto_1

    :cond_1
    const/16 v1, 0x13

    :goto_1
    invoke-interface {v0, p1, p2, p3}, Lccsansan/bm/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x1f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 14
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    nop

    :pswitch_1
    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lccsansan/br/addDownloadListener;->getDownloadingList(Lccsanandroid/net/Uri;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/app/Activity;Lccsanandroid/os/Handler;Lccsansan/aq/IncentiveDownloadUtils;)V
    .locals 2

    .line 6
    nop

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reinitialization handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/br/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lccsansan/br/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    .line 6
    iput-object p3, p0, Lccsansan/br/addDownloadListener;->IncentiveSDK:Lccsansan/aq/IncentiveDownloadUtils;

    sget p1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldInterceptRequest(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 6

    .line 10
    sget v0, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 10
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 7
    :cond_2
    invoke-interface {v2, p1, p2}, Lccsansan/bm/getDownloadingList;->getDownloadingList(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    .line 10
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    nop

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldInterceptRequest(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public shouldInterceptRequest(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 3

    .line 5
    nop

    .line 0
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    if-eqz v1, :cond_0

    .line 5
    const/16 v2, 0x19

    goto :goto_0

    :cond_0
    const/16 v2, 0x22

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    :cond_1
    invoke-interface {v1, p1, p2}, Lccsansan/bm/getDownloadingList;->getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v0

    :pswitch_0
    if-nez v0, :cond_2

    .line 5
    const/16 v1, 0x61

    goto :goto_1

    :cond_2
    const/16 v1, 0x59

    :goto_1
    packed-switch v1, :pswitch_data_1

    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldInterceptRequest(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v0

    const/16 p1, 0x1c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldInterceptRequest(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_2
    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Z
    .locals 4

    .line 18
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 18
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 10
    instance-of v3, v1, Lccsansan/br/removeDownloadListener;

    if-eqz v3, :cond_2

    .line 18
    const/16 v3, 0x58

    goto :goto_1

    :cond_2
    const/16 v3, 0x16

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 11
    :pswitch_0
    check-cast v1, Lccsansan/br/removeDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    invoke-interface {v1, v0}, Lccsansan/bm/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    .line 15
    :goto_2
    :pswitch_1
    iget-object v1, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1, p2}, Lccsansan/bm/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p2, p1, 0x4f

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    .line 15
    :cond_3
    nop

    .line 18
    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    return v2

    :cond_4
    invoke-direct {p0, p1, v0}, Lccsansan/br/addDownloadListener;->addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Z

    move-result v2

    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 8
    sget v0, Lccsansan/br/addDownloadListener;->resolveUrl:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    instance-of v0, v1, Lccsansan/br/removeDownloadListener;

    const/16 v3, 0x3e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    instance-of v0, v1, Lccsansan/br/removeDownloadListener;

    if-eqz v0, :cond_2

    .line 2
    :goto_0
    check-cast v1, Lccsansan/br/removeDownloadListener;

    invoke-virtual {v1, p2}, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->getThumbPathByRecord:Lccsansan/bm/getDownloadingList;

    invoke-interface {v0, p2}, Lccsansan/bm/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    .line 5
    :cond_2
    iget-object v0, p0, Lccsansan/br/addDownloadListener;->trackReportShow:Lccsansan/bm/IncentiveDownloadUtils;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 8
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 5
    invoke-interface {v0, p1, p2}, Lccsansan/bm/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 8
    :pswitch_0
    invoke-interface {v0, p1, p2}, Lccsansan/bm/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x7

    :try_start_1
    div-int/2addr v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    goto :goto_5

    :catchall_1
    move-exception p1

    throw p1

    :goto_3
    const/16 v0, 0x2f

    goto :goto_4

    :cond_5
    const/16 v0, 0x42

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    .line 5
    :goto_5
    :pswitch_1
    nop

    .line 8
    return v1

    :cond_6
    :goto_6
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lccsansan/br/addDownloadListener;->addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p1, Lccsansan/br/addDownloadListener;->shouldTryHandlingAction:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/addDownloadListener;->resolveUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    :goto_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method
