.class public Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;
.super Ljava/lang/Object;
.source "MBRewardVideoHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MBRewardVideoHandler"


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

    .line 28
    :cond_1
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->initMBRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->initMBRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private initMBRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/reward/a/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

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

    const-string v0, "MBRewardVideoHandler"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public clearVideoCache()V
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 103
    nop

    .line 1750
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :goto_0
    return-void
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->e(Z)Z

    move-result v0

    return v0

    .line 67
    :cond_0
    return v1
.end method

.method public load()V
    .locals 2

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public loadFormSelfFilling()V
    .locals 2

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setRewardPlus(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->c(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public setRewardVideoListener(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/b/a;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/a;-><init>(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->controller:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method
