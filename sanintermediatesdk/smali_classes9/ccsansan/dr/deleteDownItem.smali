.class public Lccsansan/dr/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    const-wide v0, -0x235ff1864f2b4a6bL    # -1.4938263314476934E138

    sput-wide v0, Lccsansan/dr/deleteDownItem;->removeDownloadListener:J

    return-void
.end method

.method public static IncentiveDownloadUtils()I
    .locals 4

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\u1b33\u1b5a\u4fae\ufa55\u6532\u0e6b\u2170\u01bb\ucd06\uc42b\u2420\uf6f7\ub7fd\u2de1\u728f\uccb1\u9990\u7758\u8b64"

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Lccsansan/dr/deleteDownItem;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x3e

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x12

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(I)V
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const/16 v1, 0x30

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    neg-int v1, v1

    const-string v2, "\u4c6d\u4c04\u5a69\uef92\u48b9\u23e0\u9d90\ubd5b\u9a58\ud1ec\u09ab\u4a17\ue0a3\u3826\u5f04\u7051\ucece\u6297\ua6eb\u1e88\u1558\u54fe"

    invoke-static {v2, v1}, Lccsansan/dr/deleteDownItem;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    sget p0, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener()I
    .locals 7

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\u4c6d\u4c04\u5a69\uef92\u48b9\u23e0\u9d90\ubd5b\u9a58\ud1ec\u09ab\u4a17\ue0a3\u3826\u5f04\u7051\ucece\u6297\ua6eb\u1e88\u1558\u54fe"

    cmp-long v6, v1, v3

    invoke-static {v5, v6}, Lccsansan/dr/deleteDownItem;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/dr/deleteDownItem;->removeDownloadListener:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/dr/deleteDownItem;->removeDownloadListener:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getDownloadingList()J
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-wide/16 v1, 0x0

    const-string v3, "al_upload_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v0

    :goto_1
    const/16 v2, 0x34

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(J)V
    .locals 2

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "al_upload_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/16 p0, 0x3a

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(I)V
    .locals 5

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    const/4 v3, 0x1

    rsub-int/lit8 v2, v2, 0x1

    const-string v4, "\u1b33\u1b5a\u4fae\ufa55\u6532\u0e6b\u2170\u01bb\ucd06\uc42b\u2420\uf6f7\ub7fd\u2de1\u728f\uccb1\u9990\u7758\u8b64"

    invoke-static {v4, v2}, Lccsansan/dr/deleteDownItem;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    sget p0, Lccsansan/dr/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/deleteDownItem;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
