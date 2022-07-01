.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# virtual methods
.method public abstract getAllocator()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;
.end method

.method public abstract getBackBufferDurationUs()J
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onTracksSelected([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
.end method

.method public abstract retainBackBufferFromKeyframe()Z
.end method

.method public abstract shouldContinueLoading(JF)Z
.end method

.method public abstract shouldStartPlayback(JFZ)Z
.end method
