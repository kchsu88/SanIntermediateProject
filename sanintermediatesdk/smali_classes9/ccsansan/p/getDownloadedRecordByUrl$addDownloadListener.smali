.class Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownList:C

.field private static getDownloadedCount:I

.field private static getDownloadingCount:J

.field private static pause:I

.field private static resume:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic deleteDownItem:J

.field final synthetic getDownloadStatusByUrl:I

.field final synthetic getDownloadedList:I

.field final synthetic getDownloadedRecordByUrl:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:I

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->pause:I

    const/4 v1, 0x1

    sput v1, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->resume:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingCount:J

    sput-char v0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->deleteDownList:C

    const v0, 0x2cef3fc3

    sput v0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadedCount:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p6, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-wide p7, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->deleteDownItem:J

    iput-object p9, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    iput p10, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadStatusByUrl:I

    iput p11, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl:I

    iput p12, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadedList:I

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingCount:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadedCount:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->deleteDownList:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
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
    .locals 15

    .line 31
    nop

    .line 24
    sget v0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->resume:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v3, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 24
    const/16 v3, 0x2a

    goto :goto_0

    :cond_1
    const/16 v3, 0x45

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object v0, v2, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 6
    :goto_1
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload()I

    move-result v3

    .line 7
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result v4

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v5, v6}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 31
    sget v8, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->resume:I

    add-int/2addr v8, v6

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->pause:I

    rem-int/2addr v8, v1

    const/4 v8, 0x0

    goto :goto_2

    .line 8
    :cond_2
    const/4 v8, -0x1

    .line 10
    :goto_2
    iget-object v9, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 24
    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    packed-switch v9, :pswitch_data_1

    goto :goto_4

    .line 10
    :pswitch_1
    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    nop

    .line 31
    const/4 v9, 0x0

    .line 11
    :goto_5
    new-instance v10, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;-><init>()V

    iget-object v11, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v12, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-wide v13, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->deleteDownItem:J

    .line 12
    invoke-virtual {v10, v11, v12, v13, v14}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v10

    iget-object v11, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v12, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget v13, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadStatusByUrl:I

    .line 13
    invoke-virtual {v10, v11, v12, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v10

    .line 14
    invoke-virtual {v10, v4}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    iget v10, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl:I

    invoke-virtual {v4, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    invoke-virtual {v4, v1}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    iget v4, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->getDownloadedList:I

    invoke-virtual {v3, v4}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v8}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v7}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    invoke-virtual {v0, v9}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v0

    if-eqz v5, :cond_5

    .line 24
    const/16 v3, 0x19

    goto :goto_6

    :cond_5
    const/16 v3, 0x33

    :goto_6
    packed-switch v3, :pswitch_data_2

    .line 19
    if-eqz v2, :cond_8

    goto :goto_7

    .line 31
    :pswitch_2
    sget v2, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->pause:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->resume:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_6

    .line 19
    :cond_6
    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    goto :goto_b

    .line 31
    :goto_7
    sget v3, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->pause:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->resume:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_7

    .line 24
    goto :goto_8

    :cond_7
    const/4 v6, 0x0

    :goto_8
    const-string v1, "\ub595\u340b\ubf6a\ubca2"

    const v3, 0x6a340bb5

    const-wide/16 v4, -0x1

    const v8, 0xa2be

    const-string v9, "\u0000\u0000\u0000\u0000"

    const-string v10, "\uaeb6\uf1ad\u37d8\ub2b8\u3598\u9824\ua08f\ub528\ude1e\u8271\u3748\u8b07\uac99"

    packed-switch v6, :pswitch_data_3

    .line 23
    iget-object v6, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    cmp-long v6, v11, v4

    shr-int v4, v8, v6

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    add-int/lit8 v5, v5, -0x26

    shr-int/2addr v3, v5

    invoke-static {v10, v9, v4, v3, v1}, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x1

    goto :goto_9

    :pswitch_3
    iget-object v6, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    cmp-long v6, v11, v4

    add-int/2addr v6, v8

    int-to-char v4, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v3

    invoke-static {v10, v9, v4, v5, v1}, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 24
    :goto_9
    invoke-virtual {v2, v1, v3, v4}, Lccsansan/m/getDownloadedList;->addDownloadListener(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_a

    .line 26
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 28
    :goto_a
    invoke-virtual {v0, v1, v2}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    .line 31
    nop

    .line 30
    :goto_b
    invoke-virtual {v0}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object v0

    .line 31
    new-instance v1, Lccsansan/cy/resume;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {v1, v2, v0}, Lccsansan/cy/resume;-><init>(Lccsanandroid/content/Context;Lccsansan/cy/getDownloadingRecordByUrl;)V

    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
