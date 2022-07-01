.class Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private final eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

.field private final forwardingPlayer:Lccsancom/google/android/exoplayer2/ForwardingPlayer;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/ForwardingPlayer;Lccsancom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0
    .param p1, "forwardingPlayer"    # Lccsancom/google/android/exoplayer2/ForwardingPlayer;
    .param p2, "eventListener"    # Lccsancom/google/android/exoplayer2/Player$EventListener;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->forwardingPlayer:Lccsancom/google/android/exoplayer2/ForwardingPlayer;

    .line 693
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    .line 694
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/ForwardingPlayer;Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/ForwardingPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/ForwardingPlayer;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p3, "x2"    # Lccsancom/google/android/exoplayer2/ForwardingPlayer$1;

    .line 685
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;-><init>(Lccsancom/google/android/exoplayer2/ForwardingPlayer;Lccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 838
    if-ne p0, p1, :cond_0

    .line 839
    const/4 v0, 0x1

    return v0

    .line 841
    :cond_0
    instance-of v0, p1, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 842
    return v1

    .line 845
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;

    .line 847
    .local v0, "that":Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->forwardingPlayer:Lccsancom/google/android/exoplayer2/ForwardingPlayer;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->forwardingPlayer:Lccsancom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 848
    return v1

    .line 850
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 855
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->forwardingPlayer:Lccsancom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 856
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 857
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Commands;)V
    .locals 1
    .param p1, "availableCommands"    # Lccsancom/google/android/exoplayer2/Player$Commands;

    .line 739
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Commands;)V

    .line 740
    return-void
.end method

.method public onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
    .locals 2
    .param p1, "player"    # Lccsancom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lccsancom/google/android/exoplayer2/Player$Events;

    .line 833
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->forwardingPlayer:Lccsancom/google/android/exoplayer2/ForwardingPlayer;

    invoke-interface {v0, v1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V

    .line 834
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 1
    .param p1, "isLoading"    # Z

    .line 729
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onIsLoadingChanged(Z)V

    .line 730
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .line 771
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onIsPlayingChanged(Z)V

    .line 772
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 1
    .param p1, "isLoading"    # Z

    .line 734
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onIsLoadingChanged(Z)V

    .line 735
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 1
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 822
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onMaxSeekToPreviousPositionChanged(J)V

    .line 823
    return-void
.end method

.method public onMediaItemTransition(Lccsancom/google/android/exoplayer2/MediaItem;I)V
    .locals 1
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I

    .line 704
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onMediaItemTransition(Lccsancom/google/android/exoplayer2/MediaItem;I)V

    .line 705
    return-void
.end method

.method public onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 719
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    .line 720
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 760
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlayWhenReadyChanged(ZI)V

    .line 761
    return-void
.end method

.method public onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;

    .line 807
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V

    .line 808
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .line 754
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlaybackStateChanged(I)V

    .line 755
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 1
    .param p1, "playbackSuppressionReason"    # I

    .line 766
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlaybackSuppressionReasonChanged(I)V

    .line 767
    return-void
.end method

.method public onPlayerError(Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 1
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 786
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlayerError(Lccsancom/google/android/exoplayer2/PlaybackException;)V

    .line 787
    return-void
.end method

.method public onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 1
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 791
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/PlaybackException;)V

    .line 792
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 749
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlayerStateChanged(ZI)V

    .line 750
    return-void
.end method

.method public onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 724
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    .line 725
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 796
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPositionDiscontinuity(I)V

    .line 797
    return-void
.end method

.method public onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 1
    .param p1, "oldPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "newPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 802
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V

    .line 803
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 776
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onRepeatModeChanged(I)V

    .line 777
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 1
    .param p1, "seekBackIncrementMs"    # J

    .line 812
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onSeekBackIncrementChanged(J)V

    .line 813
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 1
    .param p1, "seekForwardIncrementMs"    # J

    .line 817
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onSeekForwardIncrementChanged(J)V

    .line 818
    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    .line 827
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onSeekProcessed()V

    .line 828
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 781
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onShuffleModeEnabledChanged(Z)V

    .line 782
    return-void
.end method

.method public onTimelineChanged(Lccsancom/google/android/exoplayer2/Timeline;I)V
    .locals 1
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .param p2, "reason"    # I

    .line 698
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onTimelineChanged(Lccsancom/google/android/exoplayer2/Timeline;I)V

    .line 699
    return-void
.end method

.method public onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 1
    .param p1, "parameters"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 744
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 745
    return-void
.end method

.method public onTracksChanged(Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1
    .param p1, "trackGroups"    # Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 709
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onTracksChanged(Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 710
    return-void
.end method

.method public onTracksInfoChanged(Lccsancom/google/android/exoplayer2/TracksInfo;)V
    .locals 1
    .param p1, "tracksInfo"    # Lccsancom/google/android/exoplayer2/TracksInfo;

    .line 714
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;->eventListener:Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onTracksInfoChanged(Lccsancom/google/android/exoplayer2/TracksInfo;)V

    .line 715
    return-void
.end method
