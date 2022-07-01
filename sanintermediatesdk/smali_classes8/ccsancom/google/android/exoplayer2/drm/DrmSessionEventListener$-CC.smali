.class public final synthetic Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# direct methods
.method public static $default$onDrmKeysLoaded(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 51
    return-void
.end method

.method public static $default$onDrmKeysRemoved(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 84
    return-void
.end method

.method public static $default$onDrmKeysRestored(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 76
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 43
    return-void
.end method

.method public static $default$onDrmSessionManagerError(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 68
    return-void
.end method

.method public static $default$onDrmSessionReleased(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 92
    return-void
.end method
