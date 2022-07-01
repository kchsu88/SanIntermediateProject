.class public interface abstract Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDrmKeysLoaded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onDrmKeysRemoved(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onDrmKeysRestored(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
.end method

.method public abstract onDrmSessionManagerError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
.end method

.method public abstract onDrmSessionReleased(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
.end method
