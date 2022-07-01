.class final Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/api/ProAzBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(JLccsancom/san/api/ProAzBuilder;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

    iput-object p4, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 6

    .line 9
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x67

    xor-int/lit8 v2, v0, 0x67

    or-int/2addr v2, v1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 7
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/16 v4, 0x2e

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 9
    xor-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7
    const/16 v0, 0x1b

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 1
    sget-object v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 9
    :pswitch_0
    sget-object v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 7
    const/4 v0, 0x7

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    .line 9
    :catchall_0
    move-exception v0

    throw v0

    .line 7
    :goto_3
    const/16 v0, 0x32

    goto :goto_4

    :cond_4
    const/16 v0, 0x1a

    :goto_4
    packed-switch v0, :pswitch_data_3

    goto :goto_6

    .line 2
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

    iget-object v2, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)V

    .line 9
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x55

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x55

    and-int/2addr v0, v2

    shl-int/2addr v1, v3

    or-int v2, v0, v1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 7
    goto :goto_5

    :cond_5
    const/16 v4, 0x59

    :goto_5
    packed-switch v4, :pswitch_data_4

    .line 9
    return-void

    :pswitch_2
    :try_start_1
    array-length v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 6
    :goto_6
    :pswitch_3
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    const/16 v1, 0x33

    if-eqz v0, :cond_6

    .line 7
    const/16 v0, 0x2c

    goto :goto_7

    :cond_6
    const/16 v0, 0x33

    :goto_7
    packed-switch v0, :pswitch_data_5

    .line 9
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x25

    shl-int/2addr v1, v3

    and-int/lit8 v4, v0, -0x26

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x25

    or-int/2addr v0, v4

    neg-int v0, v0

    or-int v4, v1, v0

    shl-int/2addr v4, v3

    xor-int/2addr v0, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    goto :goto_a

    :pswitch_4
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v2}, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v2, v0, 0x4

    or-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    and-int/lit8 v0, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 7
    goto :goto_8

    :cond_7
    const/16 v4, 0x33

    :goto_8
    packed-switch v4, :pswitch_data_6

    .line 9
    :cond_8
    :goto_9
    :pswitch_5
    goto :goto_c

    .line 7
    :goto_a
    const/4 v2, 0x1

    goto :goto_b

    :cond_9
    nop

    :goto_b
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_7

    :try_start_2
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 9
    :pswitch_6
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0xd

    and-int/lit8 v2, v0, 0xd

    or-int/2addr v1, v2

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0xd

    and-int/2addr v0, v2

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    goto :goto_9

    :goto_c
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:I

    and-int/lit8 v1, v0, -0x2a

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x29

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x29

    shl-int/2addr v0, v3

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 7
    const/16 v0, 0x57

    goto :goto_d

    :cond_a
    const/16 v0, 0x42

    :goto_d
    packed-switch v0, :pswitch_data_8

    .line 9
    goto :goto_e

    :pswitch_7
    return-void

    :goto_e
    :try_start_3
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x33
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x33
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x42
        :pswitch_7
    .end packed-switch
.end method
