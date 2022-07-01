.class public interface abstract Lccsancom/google/android/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;,
        Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    }
.end annotation


# virtual methods
.method public abstract addDrmEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
.end method

.method public abstract addEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
.end method

.method public abstract disable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract enable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract getInitialTimeline()Lccsancom/google/android/exoplayer2/Timeline;
.end method

.method public abstract getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;
.end method

.method public abstract isSingleWindow()Z
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
.end method

.method public abstract releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract removeDrmEventListener(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
.end method

.method public abstract removeEventListener(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method
