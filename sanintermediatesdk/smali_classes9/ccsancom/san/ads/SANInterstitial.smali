.class public Lccsancom/san/ads/SANInterstitial;
.super Lccsancom/san/ads/FullScreenAd;
.source ""


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/FullScreenAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

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
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/ads/FullScreenAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/AdFormat;->INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method
