.class Lccsansan/p/getDownloadingList$addDownloadListener;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/p/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static getDownloadingList:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/p/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/getDownloadingList$addDownloadListener;->unifiedDownload:I

    const/16 v0, 0x34

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/getDownloadingList$addDownloadListener;->addDownloadListener:[C

    const-wide v0, -0x5907a89f8a383e0bL    # -5.891498877724002E-121

    sput-wide v0, Lccsansan/p/getDownloadingList$addDownloadListener;->getDownloadingList:J

    return-void

    nop

    :array_0
    .array-data 2
        0x3105s
        -0xf07s
        -0x4d17s
        0x74d6s
        0x36d5s
        -0x73fs
        -0x4569s
        0x7cb1s
        0x3eb2s
        -0x1f62s
        -0x5d6ds
        0x6485s
        0x2670s
        -0x1788s
        -0x55a2s
        0x6c44s
        0x2e54s
        -0x2f95s
        -0x6dc1s
        0x5423s
        0x1627s
        -0x27eds
        -0x65fas
        0x5c46s
        0x1fbcs
        -0x3e60s
        -0x7c04s
        0x45ces
        0x7c0s
        -0x3622s
        -0x7451s
        0x4de6s
        0xfb8s
        0x3188s
        -0xc75s
        -0x4a83s
        0x7778s
        0x3960s
        -0x4eds
        -0x42a9s
        0x7f4bs
        0x2123s
        -0x1cd5s
        -0x5ad5s
        0x671ds
        0x2910s
        -0x14b5s
        -0x551es
        0x6cfcs
        0x2efbs
        -0x2f24s
        -0x6d74s
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/getDownloadingList;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/p/getDownloadingList;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method

.method private static removeDownloadListener(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/p/getDownloadingList$addDownloadListener;->addDownloadListener:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/p/getDownloadingList$addDownloadListener;->getDownloadingList:J

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
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 9

    .line 35
    nop

    .line 1
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 35
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/p/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x33

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/p/getDownloadingList$addDownloadListener;->unifiedDownload:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    goto :goto_2

    .line 30
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 35
    :goto_1
    goto :goto_3

    .line 30
    :cond_1
    const-string v3, "adId"

    .line 33
    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pkg"

    .line 34
    invoke-virtual {v0, v5}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v5

    iget-object v6, p0, Lccsansan/p/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/p/getDownloadingList;

    invoke-static {v6}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v6

    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;

    invoke-direct {v8, p0, v3, v0}, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;-><init>(Lccsansan/p/getDownloadingList$addDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6, p1, v7, v8}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    goto :goto_3

    .line 1
    :cond_2
    :goto_2
    if-eq v0, v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "AD.CPI.Observer"

    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/lit16 v5, v5, 0x316d

    int-to-char v5, v5

    invoke-static {v2, v2}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x34

    invoke-static {v3, v5, v6}, Lccsansan/p/getDownloadingList$addDownloadListener;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsansan/cy/resume;

    .line 29
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v3}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_3
    sget p1, Lccsansan/p/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/getDownloadingList$addDownloadListener;->unifiedDownload:I

    rem-int/2addr p1, v4

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    return-void

    :goto_5
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
