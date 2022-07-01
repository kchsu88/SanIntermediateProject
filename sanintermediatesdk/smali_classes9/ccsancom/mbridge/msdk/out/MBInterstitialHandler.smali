.class public Lccsancom/mbridge/msdk/out/MBInterstitialHandler;
.super Ljava/lang/Object;
.source "MBInterstitialHandler.java"


# instance fields
.field private mController:Lccsancom/mbridge/msdk/interstitial/c/a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lccsancom/mbridge/msdk/interstitial/c/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/interstitial/c/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    .line 21
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/interstitial/c/a;->a(Lccsanandroid/content/Context;Ljava/util/Map;)Z

    .line 31
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 32
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/interstitial/c/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public preload()V
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/interstitial/c/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_0
    return-void
.end method

.method public setInterstitialListener(Lccsancom/mbridge/msdk/out/InterstitialListener;)V
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/interstitial/c/a;->a(Lccsancom/mbridge/msdk/out/InterstitialListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 55
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lccsancom/mbridge/msdk/interstitial/c/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/interstitial/c/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_0
    return-void
.end method
