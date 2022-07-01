.class public interface abstract Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDownstreamFormatChanged(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadCanceled(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadCompleted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onUpstreamDiscarded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method
