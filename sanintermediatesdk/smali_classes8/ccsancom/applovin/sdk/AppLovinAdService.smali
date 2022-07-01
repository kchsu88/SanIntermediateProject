.class public interface abstract Lccsancom/applovin/sdk/AppLovinAdService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBidToken()Ljava/lang/String;
.end method

.method public abstract hasPreloadedAd(Lccsancom/applovin/sdk/AppLovinAdSize;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasPreloadedAdForZoneId(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadNextAd(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
.end method

.method public abstract loadNextAdForAdToken(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
.end method

.method public abstract loadNextAdForZoneId(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
.end method

.method public abstract loadNextAdForZoneIds(Ljava/util/List;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/applovin/sdk/AppLovinAdLoadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract preloadAd(Lccsancom/applovin/sdk/AppLovinAdSize;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract preloadAdForZoneId(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
