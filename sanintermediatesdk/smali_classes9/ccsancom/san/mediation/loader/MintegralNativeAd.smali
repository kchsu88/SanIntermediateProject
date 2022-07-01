.class public Lccsancom/san/mediation/loader/MintegralNativeAd;
.super Lccsancom/san/mediation/loader/BaseMintegralAd;
.source "MintegralNativeAd.java"

# interfaces
.implements Lccsancom/san/ads/base/INativeAd;


# static fields
.field private static final AD_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mintegral.NativeAd"


# instance fields
.field private mBNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

.field private mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

.field private mbMediaView:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method static synthetic access$002(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/MBNativeHandler;)Lccsancom/mbridge/msdk/out/MBNativeHandler;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/MintegralNativeAd;
    .param p1, "x1"    # Lccsancom/mbridge/msdk/out/MBNativeHandler;

    .line 24
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mBNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

    return-object p1
.end method

.method static synthetic access$102(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/Campaign;)Lccsancom/mbridge/msdk/out/Campaign;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/MintegralNativeAd;
    .param p1, "x1"    # Lccsancom/mbridge/msdk/out/Campaign;

    .line 24
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 148
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mbMediaView:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->destory()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mbMediaView:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 152
    :cond_0
    return-void
.end method

.method protected doStartLoadAd()V
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getSpotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.NativeAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getRealPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->getNativeProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 39
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_num"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/16 v2, 0x2d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "native_video_width"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/16 v2, 0x1e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "native_video_height"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "videoSupport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lccsancom/mbridge/msdk/out/MBNativeHandler;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsancom/mbridge/msdk/out/MBNativeHandler;-><init>(Ljava/util/Map;Lccsanandroid/content/Context;)V

    .line 44
    .local v1, "mbNativeHandler":Lccsancom/mbridge/msdk/out/MBNativeHandler;
    new-instance v2, Lccsancom/san/mediation/loader/MintegralNativeAd$1;

    invoke-direct {v2, p0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd$1;-><init>(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/MBNativeHandler;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->setAdListener(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    .line 80
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->load()Z

    .line 81
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 156
    sget-object v0, Lccsancom/san/ads/AdFormat;->NATIVE:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdIconView()Lccsanandroid/view/View;
    .locals 1

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "object"    # [Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mbMediaView:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 123
    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->setNativeAd(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 124
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mbMediaView:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCustomAdContainer()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNativeAd()Lccsancom/san/ads/base/SANBaseAd;
    .locals 0

    .line 85
    return-object p0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mBNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "adOptionParams"    # Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 134
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mBNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->registerView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 137
    :cond_0
    return-void
.end method

.method public prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p3, "adOptionParams"    # Lccsanandroid/widget/FrameLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 141
    .local p2, "clickViewList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mBNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd;->mCampaign:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0, p1, p2, v1}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->registerView(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 144
    :cond_0
    return-void
.end method
