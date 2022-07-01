.class public interface abstract Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;
    }
.end annotation


# virtual methods
.method public abstract handlePrepareComplete(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V
.end method

.method public abstract handlePrepareError(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;IILjava/io/IOException;)V
.end method

.method public abstract release()V
.end method

.method public abstract setPlayer(Lccsancom/google/android/exoplayer2/Player;)V
.end method

.method public varargs abstract setSupportedContentTypes([I)V
.end method

.method public abstract start(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/ui/AdViewProvider;Lccsancom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V
.end method

.method public abstract stop(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V
.end method
