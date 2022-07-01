.class public Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;
.super Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;
.source "RewardSignal.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# instance fields
.field private e:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;-><init>()V

    .line 9
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->install(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$1;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :goto_0
    return-void
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 97
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$7;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$7;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_0
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->install(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :goto_0
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$3;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$3;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 111
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$8;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$8;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :goto_0
    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$6;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$6;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$4;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$4;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 69
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->e:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$5;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$5;-><init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_0
    return-void
.end method
