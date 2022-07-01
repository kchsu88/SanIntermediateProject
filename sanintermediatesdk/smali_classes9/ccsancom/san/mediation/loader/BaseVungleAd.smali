.class public abstract Lccsancom/san/mediation/loader/BaseVungleAd;
.super Lccsancom/san/ads/base/SANBaseAd;
.source "BaseVungleAd.java"


# static fields
.field public static final NETWORK_ID:Ljava/lang/String; = "Vungle"

.field private static final TAG:Ljava/lang/String; = "Vungle.BaseAd"


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/ads/base/SANBaseAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract doStartLoadAd()V
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "Vungle"

    return-object v0
.end method

.method public getTrackKey()Ljava/lang/String;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Lccsancom/san/ads/AdInfo;)V
    .locals 2
    .param p1, "adInfo"    # Lccsancom/san/ads/AdInfo;

    .line 38
    invoke-super {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->load(Lccsancom/san/ads/AdInfo;)V

    .line 39
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/BaseVungleAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/BaseVungleAd$1;-><init>(Lccsancom/san/mediation/loader/BaseVungleAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 45
    return-void
.end method

.method protected parseToSanError(Lccsancom/vungle/warren/error/VungleException;)Lccsancom/san/ads/AdError;
    .locals 4
    .param p1, "adError"    # Lccsancom/vungle/warren/error/VungleException;

    .line 69
    if-nez p1, :cond_0

    .line 70
    sget-object v0, Lccsancom/san/ads/AdError;->UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    .line 73
    .local v0, "exceptionCode":I
    sparse-switch v0, :sswitch_data_0

    .line 87
    new-instance v1, Lccsancom/san/ads/AdError;

    const/16 v2, 0x1389

    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    .local v1, "selfError":Lccsancom/san/ads/AdError;
    goto :goto_0

    .line 78
    .end local v1    # "selfError":Lccsancom/san/ads/AdError;
    :sswitch_0
    sget-object v1, Lccsancom/san/ads/AdError;->NETWORK_ERROR:Lccsancom/san/ads/AdError;

    .line 79
    .restart local v1    # "selfError":Lccsancom/san/ads/AdError;
    goto :goto_0

    .line 84
    .end local v1    # "selfError":Lccsancom/san/ads/AdError;
    :sswitch_1
    sget-object v1, Lccsancom/san/ads/AdError;->SERVER_ERROR:Lccsancom/san/ads/AdError;

    .line 85
    .restart local v1    # "selfError":Lccsancom/san/ads/AdError;
    nop

    .line 90
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xe -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method protected tryInitializeAdNetWork()V
    .locals 3

    .line 51
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 52
    .local v0, "topActivity":Lccsanandroid/app/Activity;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/BaseVungleAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Lccsancom/san/mediation/loader/BaseVungleAd$2;

    invoke-direct {v2, p0}, Lccsancom/san/mediation/loader/BaseVungleAd$2;-><init>(Lccsancom/san/mediation/loader/BaseVungleAd;)V

    invoke-static {v1, v2}, Lccsancom/san/mediation/helper/VungleHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V

    .line 65
    return-void
.end method
