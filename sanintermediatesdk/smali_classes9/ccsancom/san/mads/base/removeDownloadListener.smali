.class public abstract Lccsancom/san/mads/base/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static deleteDownList:I

.field private static getDownloadedCount:J

.field private static getDownloadingCount:C

.field private static pause:I

.field private static resume:I


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/dt/unifiedDownload;

.field protected addDownloadListener:I

.field protected deleteDownItem:J

.field protected getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

.field protected getDownloadedList:J

.field protected getDownloadedRecordByUrl:Ljava/lang/String;

.field public getDownloadingList:Lccsanandroid/content/Context;

.field public getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

.field private removeDownloadListener:Lccsansan/dt/unifiedDownload;

.field protected unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedCount:J

    const v1, 0xa3cb

    sput-char v1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingCount:C

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->resume:I

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownItem:J

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p2}, Lccsancom/san/ads/AdInfo;->getSpotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    .line 16
    invoke-virtual {p2}, Lccsancom/san/ads/AdInfo;->getSpotId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    .line 19
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener()V

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "placementId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private IncentiveDownloadUtils(ILjava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    .line 39
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownItem:J

    sub-long v14, v2, v4

    .line 39
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getSid()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v13, "normal"

    const-string v16, "-1"

    move/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v6 .. v16}, Lccsansan/bn/getDownloadingRecordByUrl;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0x63

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x60

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/base/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x56

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList()V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x14

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/base/removeDownloadListener;Lccsanorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 4
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener(Lccsanorg/json/JSONArray;)V

    sget p0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private addDownloadListener(Ljava/lang/String;)I
    .locals 5

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "BUILD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string v1, "Network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    goto :goto_3

    :cond_1
    const/4 v0, 0x1

    goto :goto_3

    :sswitch_2
    const-string v1, "Server"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    sget p1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/2addr p1, v4

    if-eqz p1, :cond_2

    goto :goto_1

    :goto_3
    packed-switch v0, :pswitch_data_0

    const/16 p1, 0xbb8

    goto :goto_4

    :pswitch_0
    const/16 p1, 0x7d1

    goto :goto_6

    :pswitch_1
    const/16 p1, 0x3e8

    goto :goto_6

    :pswitch_2
    const/16 p1, 0x7d0

    goto :goto_6

    :goto_4
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/2addr v0, v4

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    packed-switch v2, :pswitch_data_1

    :goto_6
    :pswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x6c98e49d -> :sswitch_2
        -0x2ee60df2 -> :sswitch_1
        0x3c9ce4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private addDownloadListener()V
    .locals 2

    .line 65
    nop

    .line 1
    new-instance v0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;-><init>(Lccsancom/san/mads/base/removeDownloadListener;)V

    iput-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/unifiedDownload;

    .line 65
    new-instance v0, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/mads/base/removeDownloadListener$addDownloadListener;-><init>(Lccsancom/san/mads/base/removeDownloadListener;)V

    iput-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/unifiedDownload;

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x52

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/base/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload()V

    sget p0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x4a

    goto :goto_0

    :cond_1
    const/16 p0, 0x5f

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
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 12

    .line 23
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    const/16 v2, 0x21

    goto :goto_0

    :cond_1
    const/16 v2, 0x46

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->trackReportClick()Ljava/lang/String;

    move-result-object v1

    .line 8
    :pswitch_0
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1e

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 23
    :catchall_0
    move-exception v0

    throw v0

    .line 11
    :cond_2
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_3
    :goto_1
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 11
    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 23
    :pswitch_1
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 14
    :cond_5
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_6
    :goto_3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 20
    :cond_7
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->resume()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    goto :goto_4

    :cond_8
    const-string v0, "0"

    .line 22
    :goto_4
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/dt/removeDownloadListener;->deleteDownList(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v2, "\u4873\u7680\u08b3\u8d87\u95cd\u7e37\u5dfd\u73e1\u1c10\u5293\u045d\u4f47"

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\uca1a\u8eb0\ue222\ud90d"

    cmp-long v10, v4, v6

    rsub-int/lit8 v4, v10, 0x1

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    const-wide/16 v10, -0x1

    cmp-long v7, v5, v10

    sub-int/2addr v3, v7

    invoke-static {v2, v8, v4, v3, v9}, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lccsansan/bu/unifiedDownload;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/base/removeDownloadListener;ILjava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x38

    goto :goto_2

    :cond_1
    const/16 p0, 0x25

    :goto_2
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method private pause()V
    .locals 15

    .line 2
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownItem:J

    sub-long v12, v0, v2

    .line 2
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getSid()Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener:I

    iget-object v10, p0, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getSpotId()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x1

    const/4 v8, 0x1

    const-string v11, "normal"

    invoke-static/range {v4 .. v14}, Lccsansan/bn/getDownloadingRecordByUrl;->removeDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x9

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 5
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    array-length p2, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/base/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener;->pause()V

    sget p0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private removeDownloadListener(Lccsanorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 36
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    throw p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    sget p1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    .line 36
    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    :goto_1
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 16
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 17
    invoke-static {v4}, Lccsansan/cu/getDownloadingList;->unifiedDownload(Lccsanorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 20
    if-nez v1, :cond_4

    goto :goto_3

    .line 18
    :pswitch_0
    invoke-static {v4}, Lccsansan/cu/getDownloadingList;->addDownloadListener(Lccsanorg/json/JSONObject;)Lccsansan/cu/getDownloadedRecordByUrl;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 36
    sget v5, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v5, v5, 0x3

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 20
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 26
    :goto_3
    new-instance v1, Lccsansan/dt/removeDownloadListener;

    invoke-direct {v1, v4}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 27
    invoke-static {v1}, Lccsansan/bw/removeDownloadListener;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_1

    .line 30
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 10
    const/16 v2, 0x1a

    goto :goto_5

    :cond_6
    const/16 v2, 0x2e

    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 31
    invoke-static {}, Lccsansan/cu/unifiedDownload;->unifiedDownload()Lccsansan/cu/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/cu/unifiedDownload;->addDownloadListener(Ljava/util/List;)V

    :pswitch_1
    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {p0, v1}, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#onAdRequestSuccess.  mAdId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; adsArrayLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.BaseLoader"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    nop

    .line 10
    sget p1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    .line 36
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/base/removeDownloadListener;Ljava/lang/String;)I
    .locals 2

    .line 2
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)I

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x16

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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

    sget-wide v5, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedCount:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/mads/base/removeDownloadListener;->resume:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingCount:C

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

.method private unifiedDownload()V
    .locals 7

    .line 43
    const-string v0, "Mads.BaseLoader"

    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownItem:J

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_e

    .line 4
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/2addr v1, v4

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 4
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v6}, Lccsancom/san/ads/AdInfo;->getSid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 43
    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 4
    :pswitch_1
    move-object v1, v2

    goto :goto_4

    .line 43
    :goto_3
    :try_start_2
    array-length v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 4
    :goto_4
    if-nez v1, :cond_4

    .line 43
    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 6
    :cond_3
    :try_start_3
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    .line 8
    iput-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    goto :goto_5

    .line 10
    :cond_4
    iget-object v2, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 11
    iget-object v1, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lccsansan/dt/removeDownloadListener;

    iput-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 43
    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 11
    :cond_5
    :goto_5
    nop

    .line 15
    :try_start_4
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_6

    .line 43
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    const/4 v2, 0x1

    :goto_6
    packed-switch v2, :pswitch_data_2

    .line 15
    invoke-static {v1}, Lccsansan/bw/removeDownloadListener;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return cpd ad, adId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lccsansan/dt/removeDownloadListener;->pause(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, v1, v4}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z

    const/4 v3, 0x1

    .line 22
    :cond_7
    :pswitch_2
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_b

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v1, :cond_b

    .line 43
    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v2, v1, 0x39

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    .line 22
    :cond_8
    if-nez v3, :cond_a

    .line 43
    add-int/2addr v1, v4

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 24
    :cond_9
    :try_start_5
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lccsansan/dt/removeDownloadListener;->pause(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, v1, v4}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z

    :cond_a
    return-void

    .line 29
    :cond_b
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener()Lccsansan/dt/IncentiveDownloadUtils;

    move-result-object v1

    if-eqz v3, :cond_c

    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/unifiedDownload;

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/unifiedDownload;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 43
    nop

    .line 29
    :goto_7
    nop

    .line 43
    sget v3, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    .line 29
    :cond_d
    :try_start_6
    invoke-virtual {v1, v2}, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dt/unifiedDownload;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_d

    .line 43
    :catchall_0
    move-exception v0

    throw v0

    .line 31
    :cond_e
    :try_start_7
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v1, :cond_10

    .line 43
    sget v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_f

    .line 31
    :cond_f
    :goto_8
    goto :goto_9

    :cond_10
    :try_start_8
    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/dc/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    goto :goto_8

    :goto_9
    iput-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#loadAd placementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFormDBCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v2, :cond_11

    .line 43
    const/16 v2, 0x3b

    goto :goto_a

    :cond_11
    const/16 v2, 0x59

    :goto_a
    packed-switch v2, :pswitch_data_3

    .line 33
    const/4 v2, 0x0

    goto :goto_b

    :pswitch_3
    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_12

    .line 35
    invoke-virtual {v1, v4}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(Z)V

    .line 36
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, v1, v4}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z

    move-result v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener()Lccsansan/dt/IncentiveDownloadUtils;

    move-result-object v1

    if-eqz v3, :cond_13

    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dt/unifiedDownload;

    goto :goto_c

    :cond_13
    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/unifiedDownload;

    .line 43
    nop

    .line 38
    :goto_c
    invoke-virtual {v1, v2}, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dt/unifiedDownload;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 43
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_d

    .line 38
    :catch_0
    move-exception v1

    .line 42
    new-instance v2, Lccsancom/san/ads/AdError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7d1

    invoke-direct {v2, v4, v3}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#loadAd e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3b
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract IncentiveDownloadUtils()V
.end method

.method public addDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 9
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 6
    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :pswitch_0
    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

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
    sget p1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected deleteDownItem()Z
    .locals 3

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x4a

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    goto :goto_2

    :cond_1
    const/16 v0, 0x48

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v1

    :goto_3
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()V
    .locals 3

    .line 13
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    .line 5
    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mads/base/removeDownloadListener$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsancom/san/mads/base/removeDownloadListener$removeDownloadListener;-><init>(Lccsancom/san/mads/base/removeDownloadListener;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload()V

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    :goto_1
    return-void

    .line 2
    :cond_3
    :goto_2
    sget-object v0, Lccsancom/san/ads/AdError;->PARAMETER_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    .line 13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedCount()Lccsansan/dt/removeDownloadListener;
    .locals 3

    .line 2
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v0, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList()V
    .locals 2

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x27

    :try_start_0
    div-int/2addr v0, v1
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

.method public getDownloadedRecordByUrl()Z
    .locals 5

    .line 4
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    const/16 v0, 0x4e

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->isRunning()Z

    move-result v0

    return v0

    .line 4
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedList:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/16 v0, 0xf

    goto :goto_1

    :cond_2
    const/16 v0, 0x4f

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method

.method protected getDownloadingCount()Z
    .locals 4

    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x5f

    goto :goto_2

    :cond_1
    const/16 v0, 0x43

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v1

    :goto_3
    const/16 v0, 0xe

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract getDownloadingList(Lccsancom/san/ads/AdError;)V
.end method

.method protected abstract getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method protected abstract removeDownloadListener()Lccsansan/dt/IncentiveDownloadUtils;
.end method

.method public resume()Lccsanandroid/content/Context;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/mads/base/removeDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
