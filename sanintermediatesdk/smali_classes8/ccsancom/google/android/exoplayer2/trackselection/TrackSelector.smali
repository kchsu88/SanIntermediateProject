.class public abstract Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private bandwidthMeter:Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private listener:Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBandwidthMeter()Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 1

    .line 180
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object v0
.end method

.method public getParameters()Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    .line 141
    sget-object v0, Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object v0
.end method

.method public final init(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    .param p2, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 109
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .line 110
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 111
    return-void
.end method

.method protected final invalidate()V
    .locals 1

    .line 170
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    .line 173
    :cond_0
    return-void
.end method

.method public isSetParametersSupported()Z
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public abstract selectTracks([Lccsancom/google/android/exoplayer2/RendererCapabilities;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public setParameters(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0
    .param p1, "parameters"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 153
    return-void
.end method
