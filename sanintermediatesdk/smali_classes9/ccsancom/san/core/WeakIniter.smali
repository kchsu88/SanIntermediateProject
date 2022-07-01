.class public Lccsancom/san/core/WeakIniter;
.super Lccsanandroid/content/ContentProvider;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static getDownloadingList:Z

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:[C

.field private static unifiedDownload:Z


# direct methods
.method public static synthetic $r8$lambda$64P2A_4_BdPX38PlLkISumQzg3o(Lccsancom/san/core/WeakIniter;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    const/16 v1, 0x78

    sput v1, Lccsancom/san/core/WeakIniter;->addDownloadListener:I

    sput-boolean v0, Lccsancom/san/core/WeakIniter;->getDownloadingList:Z

    sput-boolean v0, Lccsancom/san/core/WeakIniter;->unifiedDownload:Z

    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/WeakIniter;->removeDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0xdcs
        0xe7s
        0x98s
        0xefs
        0xeas
        0xe3s
        0xdes
        0xd9s
        0xe1s
        0xe4s
        0xdds
        0xcfs
        0xc1s
        0xe6s
        0xecs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private synthetic IncentiveDownloadUtils()V
    .locals 8

    .line 8
    sget v0, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/ContentProvider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/IncentiveSDK;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/content/ContentProvider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/san/api/SanAdSdk;->init(Lccsanandroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget v0, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0083\u0081\u008b\u008a\u0089\u0088\u0087\u0083\u0086\u0085\u0082\u0084\u0083\u0082\u0081"

    invoke-static {v3, v2, v3, v4}, Lccsancom/san/core/WeakIniter;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    const-string v6, "\u0085\u008b\u008f\u0089\u008e\u008d\u0086\u0088\u008b\u008c"

    cmp-long v7, v1, v4

    add-int/lit8 v7, v7, 0x7e

    invoke-static {v3, v7, v3, v6}, Lccsancom/san/core/WeakIniter;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 1163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    sget-object v1, Lccsancom/san/core/WeakIniter;->removeDownloadListener:[C

    .line 1166
    sget v2, Lccsancom/san/core/WeakIniter;->addDownloadListener:I

    .line 1168
    sget-boolean v3, Lccsancom/san/core/WeakIniter;->getDownloadingList:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1170
    nop

    .line 1171
    array-length p0, p3

    .line 1172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 1176
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    .line 1174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 1179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 1182
    :cond_3
    sget-boolean p3, Lccsancom/san/core/WeakIniter;->unifiedDownload:Z

    if-eqz p3, :cond_5

    .line 1184
    nop

    .line 1185
    array-length p2, p0

    .line 1186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 1188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 1190
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-char v3, p0, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 1188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 1193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 1198
    :cond_5
    nop

    .line 1199
    array-length p0, p2

    .line 1200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 1204
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget v3, p2, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 1202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 1207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public delete(Lccsanandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    sget p1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, 0x39

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 p1, 0x62

    :goto_0
    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return p2

    :pswitch_0
    const/16 p1, 0x3b

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 1

    sget p1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x4b

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x19

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;)Lccsanandroid/net/Uri;
    .locals 1

    sget p1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p1, 0x69

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p2, 0x0

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p2
.end method

.method public onCreate()Z
    .locals 5

    .line 13
    nop

    .line 0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0085\u008b\u008f\u0089\u008e\u008d\u0086\u0088\u008b\u008c"

    invoke-static {v2, v0, v2, v3}, Lccsancom/san/core/WeakIniter;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7f

    const-string v4, "\u0086\u0085\u0082\u0084\u0083\u0082\u0081"

    invoke-static {v2, v3, v2, v4}, Lccsancom/san/core/WeakIniter;->addDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1
    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lccsancom/san/core/unifiedDownload;->getDownloadingList:J

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lccsancom/san/core/WeakIniter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lccsancom/san/core/WeakIniter$$ExternalSyntheticLambda0;-><init>(Lccsancom/san/core/WeakIniter;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget v0, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 0

    sget p1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    add-int/lit8 p2, p2, 0x19

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/16 p2, 0x58

    goto :goto_0

    :cond_0
    const/16 p2, 0x9

    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 p2, 0x41

    :try_start_0
    div-int/lit8 p2, p2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public update(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    sget p1, Lccsancom/san/core/WeakIniter;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p1, 0x7b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p2, 0x0

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsancom/san/core/WeakIniter;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return p2
.end method
