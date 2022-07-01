.class public abstract Lccsancom/san/mads/base/unifiedDownload;
.super Lccsancom/san/mads/base/removeDownloadListener;
.source ""


# static fields
.field private static IncentiveSDK:I

.field private static deleteDownList:C

.field private static getDownloadedCount:C

.field private static getDownloadingCount:C

.field private static getThumbPathByRecord:I

.field private static pause:C


# instance fields
.field IncentiveDownloadUtils:Z

.field removeDownloadListener:Z

.field private resume:Lccsanandroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    const v0, 0xb604

    sput-char v0, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingCount:C

    const v0, 0xfa11

    sput-char v0, Lccsancom/san/mads/base/unifiedDownload;->getDownloadedCount:C

    const v0, 0xd9e7

    sput-char v0, Lccsancom/san/mads/base/unifiedDownload;->deleteDownList:C

    const v0, 0xed47

    sput-char v0, Lccsancom/san/mads/base/unifiedDownload;->pause:C

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/base/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveDownloadUtils:Z

    .line 6
    invoke-direct {p0}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/base/unifiedDownload;Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private deleteDownList()V
    .locals 6

    .line 29
    nop

    .line 1
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 2
    new-instance v1, Lccsancom/san/mads/base/unifiedDownload$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsancom/san/mads/base/unifiedDownload$removeDownloadListener;-><init>(Lccsancom/san/mads/base/unifiedDownload;)V

    .line 11
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadingCount()I

    move-result v2

    int-to-long v2, v2

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    const-string v0, "Mads.HandleLoader"

    const-string v1, "#handleOriginVast()"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 26
    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    const-string v4, "\u899e\ub7ac\uabf3\u86bd\u16de\u909e\u15d8\u31b3\uf1c5\ua449\ua8a1\u3da8\u28a0\u1387\uf95a\u574e\uc329\u7f93\u0849\uc4a1\uc0c1\u3330\u0c64\u65be\u98fa\u4428\ud523\u28f0\u96fe\ube0f\u1b1b\u1f6b\u53d5\udefb\ufd5e\ue006\uf95a\u574e\u828d\uc268"

    invoke-static {v4, v1}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lccsancom/san/mads/base/unifiedDownload$getDownloadingList;

    invoke-direct {v5, p0}, Lccsancom/san/mads/base/unifiedDownload$getDownloadingList;-><init>(Lccsancom/san/mads/base/unifiedDownload;)V

    invoke-static {v0, v1, v4, v3, v5}, Lccsansan/co/getDownloadingCount;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;ZLccsansan/co/getDownloadingCount$getDownloadingList;)V

    goto :goto_1

    .line 26
    :pswitch_0
    sget-object v0, Lccsancom/san/ads/AdError;->NO_VAST_CONTENT_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    goto :goto_2

    .line 29
    :goto_1
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_1
    :goto_2
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList()Z
    .locals 5

    .line 2
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2, v0, v1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(J)Z

    move-result v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->isIdle()Z

    move-result v0

    :goto_1
    sget v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private pause()V
    .locals 4

    .line 17
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;

    invoke-direct {v3, p0}, Lccsancom/san/mads/base/unifiedDownload$addDownloadListener;-><init>(Lccsancom/san/mads/base/unifiedDownload;)V

    invoke-static {v0, v1, v2, v3}, Lccsansan/co/getDownloadingCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/co/getDownloadingCount$getDownloadingList;)V

    .line 17
    const-string v0, "Mads.HandleLoader"

    const-string v1, "#handleNativeVast()"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private trackReportClick()V
    .locals 6

    .line 7
    nop

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v2}, Lccsansan/bw/valueOf;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#handOnePosterAd() duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.HandleLoader"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 7
    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 5
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0, v0}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    .line 7
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    goto :goto_1

    :cond_2
    const/16 v0, 0x36

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method private trackReportShow()V
    .locals 8

    .line 31
    nop

    .line 27
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/16 v4, 0x37

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingCount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    iget-object v4, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    new-instance v5, Lccsancom/san/mads/base/unifiedDownload$unifiedDownload;

    invoke-direct {v5, p0}, Lccsancom/san/mads/base/unifiedDownload$unifiedDownload;-><init>(Lccsancom/san/mads/base/unifiedDownload;)V

    .line 13
    invoke-static {}, Lccsansan/cz/unifiedDownload;->pause()I

    move-result v6

    int-to-long v6, v6

    .line 14
    invoke-static {v4, v5, v6, v7}, Lccsansan/bw/valueOf;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Lccsansan/cv/getThumbPathByRecord;J)V

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    .line 31
    sget v4, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v4, v4, 0x53

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 27
    iget-object v4, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v4}, Lccsansan/bw/valueOf;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v4}, Lccsansan/bw/valueOf;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    :try_start_1
    array-length v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 31
    :catchall_1
    move-exception v0

    throw v0

    .line 29
    :cond_3
    :goto_2
    iget-object v4, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0, v4}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    .line 31
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#handleNativeCustomAd() isVideoAd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v3, v3, v3, v3}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    const-string v5, "\u0850\u5a36\u4ba7\u7164\u363d\u1f62\u5718\uca1d\u2c96\u43c9\u2a57\u3fc4\u333d\ucd57\udbef\uba3b\u7ced\u6dfa\ue54f\u663b5\ub912\u85d4\ueff2\u41fd\u6bb5\u9ded\udd1b"

    invoke-static {v5, v0}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingCount()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Mads.HandleLoader"

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 31
    return-void

    .line 1
    :pswitch_1
    :try_start_2
    array-length v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/mads/base/unifiedDownload;->getDownloadedCount:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/mads/base/unifiedDownload;->deleteDownList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/mads/base/unifiedDownload;->pause:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingCount:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private unifiedDownload()V
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/base/unifiedDownload;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/san/mads/base/unifiedDownload;->resume:Lccsanandroid/os/Handler;

    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z

    sget p1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x57

    goto :goto_0

    :cond_1
    const/16 p1, 0x2a

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x33

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected IncentiveDownloadUtils()V
    .locals 3

    .line 25
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :pswitch_0
    sget-object v0, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    return-void

    .line 25
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    nop

    :goto_2
    packed-switch v1, :pswitch_data_1

    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    goto :goto_6

    .line 8
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    const/16 v0, 0x2d

    goto :goto_3

    :cond_2
    const/16 v0, 0x13

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 13
    invoke-direct {p0}, Lccsancom/san/mads/base/unifiedDownload;->deleteDownList()V

    goto :goto_4

    .line 25
    :pswitch_2
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 11
    :cond_3
    invoke-direct {p0}, Lccsancom/san/mads/base/unifiedDownload;->pause()V

    .line 25
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    :cond_4
    :goto_4
    goto :goto_7

    .line 15
    :cond_5
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    const/16 v0, 0x8

    goto :goto_5

    :cond_6
    const/16 v0, 0x3c

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 20
    invoke-direct {p0}, Lccsancom/san/mads/base/unifiedDownload;->trackReportShow()V

    goto :goto_7

    .line 25
    :pswitch_3
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 17
    :cond_7
    invoke-direct {p0}, Lccsancom/san/mads/base/unifiedDownload;->trackReportClick()V

    goto :goto_7

    .line 7
    :cond_8
    :goto_6
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0, v0}, Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    .line 23
    :goto_7
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bw/valueOf;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 25
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bw/valueOf;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract addDownloadListener()V
.end method

.method protected getDownloadingList(Lccsancom/san/ads/AdError;)V
    .locals 3

    .line 29
    sget v0, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/mads/base/unifiedDownload;->resume:Lccsanandroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/mads/base/unifiedDownload;->resume:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    goto :goto_1

    :goto_2
    sget p1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/2addr p1, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method protected getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z
    .locals 5

    .line 28
    nop

    .line 6
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lccsancom/san/mads/base/unifiedDownload;->resume:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {p1}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 13
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    sget p1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 12
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 13
    iget-object v3, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_7

    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 13
    iget-object v3, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_1
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    sget p1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    const/16 v3, 0x37

    add-int/2addr p1, v3

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x38

    goto :goto_2

    :cond_3
    const/16 p1, 0x49

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    if-nez p2, :cond_6

    :pswitch_1
    goto :goto_4

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :cond_4
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    .line 15
    :goto_4
    sget-object p1, Lccsancom/san/ads/AdError;->NETWORK_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, p1}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    .line 13
    sget p1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/16 v3, 0xe

    :goto_5
    packed-switch v3, :pswitch_data_3

    goto :goto_6

    .line 28
    :pswitch_2
    nop

    .line 15
    :cond_6
    :goto_6
    nop

    .line 28
    return v1

    .line 13
    :catchall_1
    move-exception p1

    throw p1

    .line 21
    :cond_7
    :pswitch_3
    invoke-direct {p0}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 28
    sget p1, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    add-int/lit8 v3, p1, 0x29

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    .line 13
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    nop

    :goto_7
    packed-switch v0, :pswitch_data_4

    .line 28
    goto :goto_8

    .line 21
    :pswitch_4
    if-nez p2, :cond_b

    goto :goto_a

    .line 28
    :goto_8
    :try_start_2
    array-length v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p2, :cond_9

    .line 13
    const/16 p2, 0x35

    goto :goto_9

    :cond_9
    const/16 p2, 0x1c

    :goto_9
    packed-switch p2, :pswitch_data_5

    .line 28
    :goto_a
    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_a

    .line 23
    :cond_a
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, p1}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    :cond_b
    :pswitch_5
    nop

    .line 28
    return v1

    :catchall_2
    move-exception p1

    throw p1

    :cond_c
    iget-object p1, p0, Lccsancom/san/mads/base/unifiedDownload;->resume:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1c
        :pswitch_5
    .end packed-switch
.end method

.method protected removeDownloadListener()Lccsansan/dt/IncentiveDownloadUtils;
    .locals 3

    .line 5
    nop

    .line 2
    new-instance v0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->resume()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    .line 3
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList(Ljava/lang/String;)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    .line 4
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getPassengerHBParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener(Ljava/lang/String;)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils()Lccsansan/dt/IncentiveDownloadUtils;

    move-result-object v0

    sget v1, Lccsancom/san/mads/base/unifiedDownload;->getThumbPathByRecord:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/mads/base/unifiedDownload;->IncentiveSDK:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract removeDownloadListener(Lccsancom/san/ads/AdError;)V
.end method
