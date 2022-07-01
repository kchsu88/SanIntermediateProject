.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader$EventListener;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V
.end method

.method public abstract onAdPlaybackState(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;)V
.end method

.method public abstract onAdTapped()V
.end method
