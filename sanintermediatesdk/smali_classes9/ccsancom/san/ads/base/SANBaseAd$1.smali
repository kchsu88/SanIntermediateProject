.class Lccsancom/san/ads/base/SANBaseAd$1;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/base/SANBaseAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/SANBaseAd$1;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/base/SANBaseAd$1;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/ads/base/SANBaseAd;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/base/SANBaseAd$1;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 2
    .end local p1    # "msg":Lccsanandroid/os/Message;
    nop

    .line 1
    sget v0, Lccsancom/san/ads/base/SANBaseAd$1;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x17

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x17

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-eqz p1, :cond_1

    .line 1
    const/16 v1, 0xb

    goto :goto_0

    :cond_1
    const/16 v1, 0x37

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    goto :goto_7

    .line 2
    :pswitch_1
    add-int/lit8 v0, v0, 0xc

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/ads/base/SANBaseAd$1;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x4e

    iget p1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4

    goto :goto_4

    :pswitch_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x4f

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_3
    goto :goto_5

    :cond_4
    const/16 v1, 0x43

    :goto_4
    packed-switch v1, :pswitch_data_3

    goto :goto_1

    .line 2
    :goto_5
    iget-object p1, p0, Lccsancom/san/ads/base/SANBaseAd$1;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    sget-object v0, Lccsancom/san/ads/AdError;->TIMEOUT_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p1, v0}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 1
    sget p1, Lccsancom/san/ads/base/SANBaseAd$1;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/SANBaseAd$1;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_6

    :cond_5
    const/4 p1, 0x1

    :goto_6
    packed-switch p1, :pswitch_data_4

    goto :goto_1

    .line 2
    :pswitch_4
    nop

    :goto_7
    nop

    .line 1
    sget p1, Lccsancom/san/ads/base/SANBaseAd$1;->getDownloadingList:I

    or-int/lit8 v0, p1, 0x63

    shl-int/2addr v0, v2

    xor-int/lit8 p1, p1, 0x63

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/ads/base/SANBaseAd$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v2, 0x0

    :goto_8
    packed-switch v2, :pswitch_data_5

    goto :goto_9

    .line 2
    :pswitch_5
    return-void

    .line 1
    :goto_9
    const/16 p1, 0x5e

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4e
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
