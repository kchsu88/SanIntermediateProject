.class final Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(JLccsanandroid/app/Application$ActivityLifecycleCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    iput-object p4, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 6

    .line 9
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6

    or-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    goto :goto_1

    .line 2
    :goto_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    iget-object v4, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v4}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    new-instance v0, Lccsansan/p/getDownloadedList;

    invoke-direct {v0}, Lccsansan/p/getDownloadedList;-><init>()V

    .line 4
    iget-object v4, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V

    .line 5
    const-string v4, "portal"

    const-string v5, "cpi_protect"

    invoke-virtual {v0, v4, v5}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v4, "mode"

    invoke-virtual {v0, v4, v5}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedList;)V

    .line 1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v4, v0, 0x73

    and-int/lit8 v5, v0, 0x73

    or-int/2addr v4, v5

    shl-int/2addr v4, v2

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 v0, v0, 0x73

    and-int/2addr v0, v5

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 9
    :cond_1
    :goto_4
    :pswitch_1
    goto :goto_6

    .line 7
    :cond_2
    nop

    .line 9
    invoke-static {v3}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Z)Z

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5

    sub-int/2addr v0, v2

    sub-int/2addr v0, v2

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1
    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 9
    goto :goto_4

    :goto_6
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    and-int/lit8 v4, v0, 0x2f

    xor-int/lit8 v0, v0, 0x2f

    or-int/2addr v0, v4

    neg-int v0, v0

    neg-int v0, v0

    and-int v5, v4, v0

    or-int/2addr v0, v4

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 1
    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_2

    .line 9
    goto :goto_8

    :pswitch_2
    return-void

    :goto_8
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0xb
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
.end method

.method public execute()V
    .locals 2

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x55

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x55

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
