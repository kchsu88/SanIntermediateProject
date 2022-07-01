.class public interface abstract Lccsancom/google/android/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;,
        Lccsancom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;,
        Lccsancom/google/android/exoplayer2/ExoPlayer$DeviceComponent;,
        Lccsancom/google/android/exoplayer2/ExoPlayer$TextComponent;,
        Lccsancom/google/android/exoplayer2/ExoPlayer$VideoComponent;,
        Lccsancom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    }
.end annotation


# static fields
.field public static final DEFAULT_DETACH_SURFACE_TIMEOUT_MS:J = 0x7d0L

.field public static final DEFAULT_RELEASE_TIMEOUT_MS:J = 0x1f4L


# virtual methods
.method public abstract addAnalyticsListener(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;)V
.end method

.method public abstract addAudioOffloadListener(Lccsancom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
.end method

.method public abstract addListener(Lccsancom/google/android/exoplayer2/Player$EventListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addMediaSource(ILccsancom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract addMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract addMediaSources(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMediaSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearAuxEffectInfo()V
.end method

.method public abstract clearCameraMotionListener(Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
.end method

.method public abstract clearVideoFrameMetadataListener(Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
.end method

.method public abstract createMessage(Lccsancom/google/android/exoplayer2/PlayerMessage$Target;)Lccsancom/google/android/exoplayer2/PlayerMessage;
.end method

.method public abstract experimentalIsSleepingForOffload()Z
.end method

.method public abstract experimentalSetOffloadSchedulingEnabled(Z)V
.end method

.method public abstract getAnalyticsCollector()Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
.end method

.method public abstract getAudioComponent()Lccsancom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAudioDecoderCounters()Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;
.end method

.method public abstract getAudioFormat()Lccsancom/google/android/exoplayer2/Format;
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getClock()Lccsancom/google/android/exoplayer2/util/Clock;
.end method

.method public abstract getDeviceComponent()Lccsancom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPauseAtEndOfMediaItems()Z
.end method

.method public abstract getPlaybackLooper()Lccsanandroid/os/Looper;
.end method

.method public abstract getPlayerError()Lccsancom/google/android/exoplayer2/ExoPlaybackException;
.end method

.method public abstract getRendererCount()I
.end method

.method public abstract getRendererType(I)I
.end method

.method public abstract getSeekParameters()Lccsancom/google/android/exoplayer2/SeekParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract getTextComponent()Lccsancom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTrackSelector()Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
.end method

.method public abstract getVideoChangeFrameRateStrategy()I
.end method

.method public abstract getVideoComponent()Lccsancom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoDecoderCounters()Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;
.end method

.method public abstract getVideoFormat()Lccsancom/google/android/exoplayer2/Format;
.end method

.method public abstract getVideoScalingMode()I
.end method

.method public abstract prepare(Lccsancom/google/android/exoplayer2/source/MediaSource;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract prepare(Lccsancom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeAnalyticsListener(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;)V
.end method

.method public abstract removeAudioOffloadListener(Lccsancom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
.end method

.method public abstract removeListener(Lccsancom/google/android/exoplayer2/Player$EventListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract retry()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAudioAttributes(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;Z)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Lccsancom/google/android/exoplayer2/audio/AuxEffectInfo;)V
.end method

.method public abstract setCameraMotionListener(Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
.end method

.method public abstract setForegroundMode(Z)V
.end method

.method public abstract setHandleAudioBecomingNoisy(Z)V
.end method

.method public abstract setHandleWakeLock(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract setMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSource;J)V
.end method

.method public abstract setMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSource;Z)V
.end method

.method public abstract setMediaSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMediaSources(Ljava/util/List;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation
.end method

.method public abstract setMediaSources(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setPauseAtEndOfMediaItems(Z)V
.end method

.method public abstract setPriorityTaskManager(Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;)V
.end method

.method public abstract setSeekParameters(Lccsancom/google/android/exoplayer2/SeekParameters;)V
.end method

.method public abstract setShuffleOrder(Lccsancom/google/android/exoplayer2/source/ShuffleOrder;)V
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setThrowsWhenUsingWrongThread(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVideoChangeFrameRateStrategy(I)V
.end method

.method public abstract setVideoFrameMetadataListener(Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract setWakeMode(I)V
.end method
