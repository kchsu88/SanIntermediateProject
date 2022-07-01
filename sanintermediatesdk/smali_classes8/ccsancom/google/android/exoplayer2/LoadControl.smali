.class public interface abstract Lccsancom/google/android/exoplayer2/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# virtual methods
.method public abstract getAllocator()Lccsancom/google/android/exoplayer2/upstream/Allocator;
.end method

.method public abstract getBackBufferDurationUs()J
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onTracksSelected([Lccsancom/google/android/exoplayer2/Renderer;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;[Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
.end method

.method public abstract retainBackBufferFromKeyframe()Z
.end method

.method public abstract shouldContinueLoading(JJF)Z
.end method

.method public abstract shouldStartPlayback(JFZJ)Z
.end method
