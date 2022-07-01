.class public final synthetic Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# direct methods
.method public static $default$onDiscontinuity(Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 146
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p1, "playWhenReady"    # Z

    .line 162
    return-void
.end method

.method public static $default$onRebuffer(Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 155
    return-void
.end method

.method public static $default$shouldCancelChunkLoad(Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLccsancom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Lccsancom/google/android/exoplayer2/source/chunk/Chunk;

    .line 254
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Lccsancom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    const/4 v0, 0x0

    return v0
.end method
