.class public Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;
.super Ljava/lang/Object;
.source "MBBidRewardVideoHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MBBidRewardVideoHandler"


# instance fields
.field private controller:Lccsancom/mbridge/msdk/reward/a/a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 23
    :cond_0
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-static {p3, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->initMBBidRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->initMBBidRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private initMBBidRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/reward/a/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Z)V

    .line 43
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->b(Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MBBidRewardVideoHandler"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public clearVideoCache()V
    .locals 1

    .line 97
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 98
    nop

    .line 1750
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_0
    return-void
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isBidReady()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->e(Z)Z

    move-result v0

    return v0

    .line 61
    :cond_0
    return v1
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(ZLjava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setRewardPlus(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->c(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public setRewardVideoListener(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/b/a;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/a;-><init>(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method public showFromBid()V
    .locals 2

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public showFromBid(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public showFromBid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
