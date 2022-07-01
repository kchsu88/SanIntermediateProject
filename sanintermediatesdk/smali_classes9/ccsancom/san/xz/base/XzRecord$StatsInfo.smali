.class public Lccsancom/san/xz/base/XzRecord$StatsInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/XzRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsInfo"
.end annotation


# static fields
.field private static getDownloadedList:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field private IncentiveDownloadUtils:J

.field private addDownloadListener:J

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsancom/san/xz/base/XzRecord;

.field public mHttpClientType:Ljava/lang/Class;

.field private removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

.field private unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageSpeed()J
    .locals 6

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    and-int/lit8 v1, v0, -0x60

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x5f

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x5f

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-wide v3, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->IncentiveDownloadUtils:J

    and-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v2

    or-int v5, v1, v0

    shl-int/2addr v5, v2

    xor-int/2addr v0, v1

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_0

    return-wide v3

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v3

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorMsg()Lccsansan/aw/getDownloadingRecordByUrl;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

    goto :goto_2

    :goto_1
    const/16 v1, 0x10

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    add-int/lit8 v1, v0, 0x4e

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    or-int/lit8 v2, v0, 0x2d

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v0, v0, 0x2d

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1
.end method

.method public setErrorMsg(Lccsansan/aw/getDownloadingRecordByUrl;)V
    .locals 2
    .param p1, "e"    # Lccsansan/aw/getDownloadingRecordByUrl;

    .line 1
    .end local p1    # "e":Lccsansan/aw/getDownloadingRecordByUrl;
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    xor-int/lit8 v1, v0, 0x75

    and-int/lit8 v0, v0, 0x75

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x35

    goto :goto_0

    :cond_0
    const/16 v1, 0x4f

    :goto_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x1f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    xor-int/lit8 p1, v0, 0x65

    and-int/lit8 v0, v0, 0x65

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 6

    .line 3
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    const/16 v1, 0x35

    xor-int/lit8 v2, v0, 0x35

    and-int/lit8 v3, v0, 0x35

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x36

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/2addr v1, v3

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->unifiedDownload:J

    .line 2
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->addDownloadListener:J

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->unifiedDownload:J

    .line 2
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->addDownloadListener:J

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v1, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    const/16 v2, 0x2b

    xor-int/lit8 v4, v1, 0x2b

    and-int/lit8 v5, v1, 0x2b

    or-int/2addr v4, v5

    shl-int/2addr v4, v3

    and-int/lit8 v5, v1, -0x2c

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    or-int/2addr v1, v5

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/16 v1, 0x34

    :try_start_1
    div-int/2addr v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 9

    .line 9
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    xor-int/lit8 v1, v0, 0x4d

    and-int/lit8 v2, v0, 0x4d

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x4e

    xor-int/lit8 v4, v0, -0x1

    and-int/lit8 v4, v4, 0x4d

    or-int/2addr v3, v4

    neg-int v3, v3

    xor-int v4, v1, v3

    and-int/2addr v1, v3

    shl-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 1
    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->unifiedDownload:J

    packed-switch v1, :pswitch_data_0

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    goto :goto_1

    :pswitch_0
    const-wide/16 v7, 0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    :goto_1
    and-int/lit8 v1, v0, 0x15

    or-int/lit8 v0, v0, 0x15

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    .line 9
    return-void

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->unifiedDownload:J

    sub-long/2addr v0, v5

    .line 4
    iput-wide v3, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->unifiedDownload:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 9
    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    xor-int/lit8 v1, v0, 0x5d

    and-int/lit8 v0, v0, 0x5d

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    .line 7
    :cond_2
    iget-object v3, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iget-wide v4, v3, Lccsancom/san/xz/base/XzRecord;->getDownloadedRecordByUrl:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lccsancom/san/xz/base/XzRecord;->getDownloadedRecordByUrl:J

    .line 8
    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v3

    iget-wide v5, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->addDownloadListener:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 9
    div-long/2addr v3, v0

    iput-wide v3, p0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->IncentiveDownloadUtils:J

    sget v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadedList:I

    and-int/lit8 v1, v0, -0x6a

    xor-int/lit8 v3, v0, -0x1

    and-int/lit8 v3, v3, 0x69

    or-int/2addr v1, v3

    and-int/lit8 v0, v0, 0x69

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v1, v0

    shl-int/2addr v3, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    nop

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 9
    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
