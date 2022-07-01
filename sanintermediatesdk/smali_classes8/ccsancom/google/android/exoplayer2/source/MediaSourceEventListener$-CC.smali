.class public final synthetic Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# direct methods
.method public static $default$onDownstreamFormatChanged(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 142
    return-void
.end method

.method public static $default$onLoadCanceled(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 87
    return-void
.end method

.method public static $default$onLoadCompleted(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 69
    return-void
.end method

.method public static $default$onLoadError(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 120
    return-void
.end method

.method public static $default$onLoadStarted(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 51
    return-void
.end method

.method public static $default$onUpstreamDiscarded(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 131
    return-void
.end method
