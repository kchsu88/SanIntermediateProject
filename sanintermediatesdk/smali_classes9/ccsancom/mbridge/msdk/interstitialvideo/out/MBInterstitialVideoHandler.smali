.class public Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;
.super Ljava/lang/Object;
.source "MBInterstitialVideoHandler.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/reward/a/a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 22
    :cond_0
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    invoke-static {p3, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_1
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/reward/a/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Z)V

    .line 39
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MBRewardVideoHandler"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    return-void
.end method


# virtual methods
.method public clearVideoCache()V
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 93
    nop

    .line 1750
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_0
    return-void
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->e(Z)Z

    move-result v0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 2

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public loadFormSelfFilling()V
    .locals 2

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public setIVRewardEnable(ID)V
    .locals 4

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 115
    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->o:I

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p2, p2, v2

    double-to-int p2, p2

    invoke-virtual {v0, p1, v1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(III)V

    .line 117
    :cond_0
    return-void
.end method

.method public setIVRewardEnable(II)V
    .locals 2

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 109
    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->p:I

    invoke-virtual {v0, p1, v1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(III)V

    .line 111
    :cond_0
    return-void
.end method

.method public setInterstitialVideoListener(Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lccsancom/mbridge/msdk/interstitialvideo/a/a;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/interstitialvideo/a/a;-><init>(Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setRewardVideoListener(Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lccsancom/mbridge/msdk/interstitialvideo/a/a;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/interstitialvideo/a/a;-><init>(Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->a:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
