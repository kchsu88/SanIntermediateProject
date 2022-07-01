.class public Lccsansan/br/removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bm/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/br/removeDownloadListener$unifiedDownload;
    }
.end annotation


# static fields
.field private static getDownloadingCount:I

.field private static resume:I

.field private static trackReportShow:I


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

.field private final addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

.field private deleteDownItem:Lccsansan/br/removeDownloadListener$unifiedDownload;

.field private deleteDownList:J

.field private getDownloadStatusByUrl:J

.field private getDownloadedCount:Ljava/lang/String;

.field private getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

.field private getDownloadedRecordByUrl:I

.field private getDownloadingList:Lccsanokhttp3/OkHttpClient;

.field private volatile getDownloadingRecordByUrl:Ljava/io/InputStream;

.field private pause:Ljava/lang/String;

.field private removeDownloadListener:Ljava/lang/String;

.field private final unifiedDownload:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    const/16 v0, 0x90

    sput v0, Lccsansan/br/removeDownloadListener;->resume:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsansan/av/getDownloadingList;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/br/removeDownloadListener;->unifiedDownload:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-string v4, "\ufff5\t\u0006\ufffb\ufff9\uffff\ufff7\u0002\ufff5\ufffe\n\u0003\u0002\ufff5\ufffa\u000b\u0008\ufff7\n\uffff\u0005\u0004\ufffa\u0005\r\u0004\u0002\u0005\ufff7\ufffa"

    const-wide/16 v5, 0x0

    const/16 v7, 0xbb8

    cmp-long v8, v2, v5

    add-int/lit8 v8, v8, 0x1d

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x16

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int v3, v3, 0xfa

    invoke-static {v4, v1, v8, v2, v3}, Lccsansan/br/removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadedRecordByUrl:I

    .line 18
    invoke-direct {p0, p1, p2}, Lccsansan/br/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Lccsansan/av/getDownloadingList;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener;)Lccsansan/bm/getDownloadingList$removeDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
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

    sget v5, Lccsansan/br/removeDownloadListener;->resume:I

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

.method static synthetic addDownloadListener(Lccsansan/br/removeDownloadListener;)Lccsansan/av/getDownloadingList;
    .locals 2

    .line 1
    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteDownItem(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 5

    .line 14
    nop

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    .line 2
    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Lccsansan/bo/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    invoke-virtual {v2, v0}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14
    const/16 v3, 0xc

    goto :goto_0

    :cond_1
    const/16 v3, 0xb

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 7
    invoke-direct {p0, p1, v0}, Lccsansan/br/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_0
    const-string v0, "Hybrid"

    .line 9
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptRequest have cache uriPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Lccsanandroid/webkit/WebResourceResponse;

    const-string v3, ""

    invoke-direct {v0, p1, v3, v2}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    return-object v0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    sget p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x18

    goto :goto_3

    :cond_3
    const/4 p1, 0x7

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v1

    :goto_4
    :try_start_3
    array-length p1, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadStatusByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 5

    .line 14
    nop

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    goto :goto_3

    .line 2
    :pswitch_0
    nop

    .line 5
    invoke-static {p1}, Lccsansan/bo/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    if-eqz v2, :cond_1

    .line 14
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x16

    :goto_1
    packed-switch v3, :pswitch_data_1

    sget v3, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 8
    :cond_2
    :try_start_0
    invoke-virtual {v2, v0}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p1}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v2, Lccsanandroid/webkit/WebResourceResponse;

    const-string v3, ""

    invoke-direct {v2, p1, v3, v0}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_2

    .line 14
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :pswitch_1
    nop

    :goto_2
    sget p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-object v1

    :goto_3
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadedList(Ljava/lang/String;)Z
    .locals 6

    .line 16
    const-string v0, "/"

    .line 1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 2
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v5, p1, 0x80

    sput v5, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 7
    :cond_1
    :try_start_1
    const-string p1, ".html"

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 16
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    sget p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    goto :goto_2

    .line 8
    :pswitch_0
    nop

    .line 11
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    nop

    .line 13
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    return p1

    .line 8
    :cond_5
    :goto_2
    nop

    .line 16
    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return v2

    .line 13
    :catchall_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMatchCurrentUrl error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hybrid"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final getDownloadedRecordByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 3

    .line 3
    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener;->getDownloadedList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    .line 3
    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x3a

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lccsansan/br/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    :goto_1
    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/br/removeDownloadListener;)Lccsanokhttp3/OkHttpClient;
    .locals 2

    .line 1
    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    iget-object p0, p0, Lccsansan/br/removeDownloadListener;->getDownloadingList:Lccsanokhttp3/OkHttpClient;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x3e

    :try_start_0
    div-int/lit8 v0, v0, 0x0
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
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->getDownloadedCount:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->getDownloadedCount:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/br/removeDownloadListener;->pause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 6
    iput-object v2, p0, Lccsansan/br/removeDownloadListener;->pause:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    const-string v3, "request_url"

    const-string v4, "success"

    const-string v5, ""

    invoke-interface {v2, p1, v3, v4, v5}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_1
    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->getDownloadedCount:Ljava/lang/String;

    .line 13
    :cond_2
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_3

    const-string v1, "load_cache"

    const-string v3, "success"

    const-string v4, ""

    .line 16
    invoke-interface {v0, p1, v1, v3, v4}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 20
    :cond_4
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 21
    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v2

    .line 23
    :try_start_0
    iget-object v4, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v3, :cond_5

    const-string v4, "Hybrid"

    const-string v5, "waiting for pendingInputStream!"

    .line 24
    invoke-static {v4, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-wide v5, p0, Lccsansan/br/removeDownloadListener;->getDownloadStatusByUrl:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    const-string v5, "Hybrid"

    .line 28
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waiting for pendingInputStream failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_5
    :goto_2
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_6
    :goto_3
    const-string v2, "Hybrid"

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "have pending stream is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Hybrid"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have pending stream is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", total cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lccsansan/br/removeDownloadListener;->deleteDownList:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_2
    iget-object v1, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    .line 38
    invoke-static {p1}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Lccsanandroid/webkit/WebResourceResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, ""

    :try_start_3
    iget-object v4, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    invoke-direct {v2, v1, v3, v4}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 40
    iget-object v1, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    if-eqz v1, :cond_9

    const-string v3, "load_online_res"

    const-string v4, "success"

    const-string v5, ""

    .line 41
    invoke-interface {v1, p1, v3, v4, v5}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    goto :goto_7

    .line 45
    :cond_a
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 46
    iget-object v1, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_c

    const-string v3, "load_cache"

    if-eqz v2, :cond_b

    const-string v4, "success"

    goto :goto_6

    :cond_b
    const-string v4, "failed"

    :goto_6
    :try_start_4
    const-string v5, ""

    .line 47
    invoke-interface {v1, p1, v3, v4, v5}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_c
    :goto_7
    iget-object p1, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 51
    monitor-exit v0

    return-object v2

    :catchall_2
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method private removeDownloadListener()J
    .locals 5

    .line 13
    nop

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 13
    sget v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    const/16 v2, 0x61

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x1f

    :try_start_0
    div-int/2addr v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    .line 3
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    nop

    .line 13
    goto/16 :goto_8

    .line 3
    :cond_1
    nop

    .line 5
    const-string v1, "MOB_4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    goto/16 :goto_7

    :pswitch_0
    sget v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    const-string v3, "MOB_UNKNOWN"

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_4

    goto :goto_3

    :catchall_1
    move-exception v0

    throw v0

    .line 5
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    nop

    .line 13
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 5
    :cond_4
    nop

    .line 7
    const-string v1, "MOB_3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 9
    :cond_5
    const-string v1, "MOB_2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    .line 13
    sget v2, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    const/16 v2, 0x11

    goto :goto_4

    :cond_6
    const/16 v2, 0x59

    :goto_4
    packed-switch v2, :pswitch_data_1

    return-wide v0

    :pswitch_1
    const/16 v2, 0x3d

    :try_start_2
    div-int/2addr v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-wide v0

    :catchall_2
    move-exception v0

    throw v0

    .line 12
    :cond_7
    iget v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadedRecordByUrl:I

    if-lez v0, :cond_9

    .line 13
    sget v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    const/16 v1, 0x1b

    goto :goto_5

    :cond_8
    const/16 v1, 0x24

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 12
    int-to-long v0, v0

    goto :goto_6

    .line 13
    :pswitch_2
    int-to-long v0, v0

    const/16 v2, 0x54

    :try_start_3
    div-int/2addr v2, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    throw v0

    .line 12
    :cond_9
    const-wide/16 v0, 0xbb8

    .line 13
    sget v3, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const/16 v2, 0x22

    .line 12
    :goto_6
    return-wide v0

    :goto_7
    const-wide/16 v0, 0x7d0

    return-wide v0

    .line 13
    :cond_b
    :goto_8
    iget v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadedRecordByUrl:I

    int-to-long v0, v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/br/removeDownloadListener;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 2
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/io/InputStream;

    sget p0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 p0, 0x19

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/br/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3

    .line 1
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v1, v0, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/br/removeDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    nop

    .line 11
    new-instance v0, Lccsanokhttp3/Request$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadingList:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object p1

    new-instance v0, Lccsansan/br/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p2}, Lccsansan/br/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/br/removeDownloadListener;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lccsanokhttp3/Call;->enqueue(Lccsanokhttp3/Callback;)V

    sget p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x4f

    goto :goto_0

    :cond_0
    const/16 p1, 0x60

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/lang/String;Lccsansan/av/getDownloadingList;)V
    .locals 3

    .line 10
    nop

    .line 3
    iput-object p2, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    .line 4
    new-instance p2, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {p2}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    const-wide/16 v1, 0x4e20

    invoke-virtual {p2, v1, v2, v0}, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v1, v2, v0}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object p2

    iput-object p2, p0, Lccsansan/br/removeDownloadListener;->getDownloadingList:Lccsanokhttp3/OkHttpClient;

    .line 8
    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lccsansan/br/removeDownloadListener;->removeDownloadListener()J

    move-result-wide p1

    iput-wide p1, p0, Lccsansan/br/removeDownloadListener;->getDownloadStatusByUrl:J

    .line 10
    new-instance p1, Lccsansan/br/removeDownloadListener$unifiedDownload;

    invoke-direct {p1, p0}, Lccsansan/br/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/br/removeDownloadListener;)V

    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->deleteDownItem:Lccsansan/br/removeDownloadListener$unifiedDownload;

    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->pause:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x31

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    :goto_0
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

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/bm/getDownloadingList$removeDownloadListener;)V
    .locals 3

    .line 21
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x26

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x45

    goto :goto_2

    :cond_1
    const/16 p1, 0x22

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)Z
    .locals 4

    .line 7
    nop

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 7
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    if-eqz v0, :cond_5

    .line 7
    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 2
    invoke-static {p1}, Lccsansan/bo/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    invoke-virtual {v0, p1}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_2
    invoke-static {p1}, Lccsansan/bo/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_2
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    invoke-virtual {v0, p1}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_3

    const/16 p1, 0x1c

    goto :goto_1

    :cond_3
    const/16 p1, 0x18

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_0
    goto :goto_4

    .line 7
    :goto_2
    :pswitch_1
    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    .line 4
    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 7
    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    const/4 v1, 0x0

    :goto_5
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 2

    .line 18
    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lccsansan/br/removeDownloadListener;->getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p2, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p2, p2, 0x63

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 1

    .line 17
    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    const/4 v0, 0x2

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/16 v0, 0x4e

    :cond_0
    invoke-direct {p0, p2}, Lccsansan/br/removeDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getDownloadingList(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 3

    .line 2
    nop

    .line 1
    invoke-static {}, Lccsansan/bo/getDownloadingList;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/getDownloadingList;->getDownloadingList(Lccsanandroid/net/Uri;)Z

    move-result v0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto :goto_1

    :cond_1
    const/16 v0, 0x45

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_2
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/getDownloadingList;->getDownloadingList(Lccsanandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    const/16 v0, 0x33

    goto :goto_2

    :cond_3
    const/16 v0, 0x59

    :goto_2
    packed-switch v0, :pswitch_data_2

    :goto_3
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener;->deleteDownItem(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    sget v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)Z
    .locals 5

    .line 23
    nop

    .line 22
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 23
    const/16 v1, 0x4b

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 22
    :cond_1
    nop

    .line 23
    const-string v1, "override_url"

    const-string v3, "success"

    const-string v4, ""

    invoke-interface {v0, p1, v1, v3, v4}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()V
    .locals 2

    .line 20
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/av/getDownloadingList;

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 20
    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/br/removeDownloadListener$getDownloadingList;

    invoke-direct {v1, p0}, Lccsansan/br/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/br/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 5

    .line 15
    sget v0, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 14
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/br/removeDownloadListener;->deleteDownList:J

    .line 15
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->deleteDownItem:Lccsansan/br/removeDownloadListener$unifiedDownload;

    invoke-virtual {v0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :pswitch_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/br/removeDownloadListener;->deleteDownList:J

    .line 15
    iget-object v0, p0, Lccsansan/br/removeDownloadListener;->deleteDownItem:Lccsansan/br/removeDownloadListener$unifiedDownload;

    invoke-virtual {v0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/br/removeDownloadListener;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x30

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
