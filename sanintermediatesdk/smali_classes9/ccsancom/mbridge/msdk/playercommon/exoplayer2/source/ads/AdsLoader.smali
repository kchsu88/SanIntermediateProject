.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader$EventListener;
    }
.end annotation


# virtual methods
.method public abstract attachPlayer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader$EventListener;Lccsanandroid/view/ViewGroup;)V
.end method

.method public abstract detachPlayer()V
.end method

.method public abstract handlePrepareError(IILjava/io/IOException;)V
.end method

.method public abstract release()V
.end method

.method public varargs abstract setSupportedContentTypes([I)V
.end method
