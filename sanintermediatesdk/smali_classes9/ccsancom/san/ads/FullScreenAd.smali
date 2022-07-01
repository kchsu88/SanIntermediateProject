.class public abstract Lccsancom/san/ads/FullScreenAd;
.super Lccsancom/san/ads/core/SANAd;
.source ""


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/ads/FullScreenAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/ads/core/SANAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->unifiedDownload()Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lccsancom/san/ads/base/FullScreenAdWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->isAdReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/AdWrapper;->setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V

    .line 4
    check-cast v0, Lccsancom/san/ads/base/FullScreenAdWrapper;

    invoke-virtual {v0}, Lccsancom/san/ads/base/FullScreenAdWrapper;->show()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;

    move-result-object v0

    sget-object v1, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    invoke-interface {v0, v1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdImpressionError(Lccsancom/san/ads/AdError;)V

    :cond_1
    :goto_0
    return-void
.end method
