.class public final Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 107
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 113
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;
    .param p3, "extractorsFactory"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    new-instance v1, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p3}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, p2, v1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 136
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/LoadControl;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .locals 9
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;
    .param p3, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p4, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .param p5, "loadControl"    # Lccsancom/google/android/exoplayer2/LoadControl;
    .param p6, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p7, "analyticsCollector"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v8, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;Lccsancom/google/android/exoplayer2/LoadControl;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    move-object v0, p0

    iput-object v8, v0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 161
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "extractorsFactory"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    new-instance v1, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p2}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    .line 99
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object v0
.end method


# virtual methods
.method public build()Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildSimpleExoPlayer()Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "timeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->experimentalSetForegroundModeTimeoutMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 170
    return-object p0
.end method

.method public setAnalyticsCollector(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "analyticsCollector"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setAnalyticsCollector(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 216
    return-object p0
.end method

.method public setAudioAttributes(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;Z)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "audioAttributes"    # Lccsancom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setAudioAttributes(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 236
    return-object p0
.end method

.method public setBandwidthMeter(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setBandwidthMeter(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 200
    return-object p0
.end method

.method public setClock(Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "clock"    # Lccsancom/google/android/exoplayer2/util/Clock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setClock(Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 339
    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "detachSurfaceTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setDetachSurfaceTimeoutMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 314
    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "handleAudioBecomingNoisy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 250
    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "livePlaybackSpeedControl"    # Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setLivePlaybackSpeedControl(Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 331
    return-object p0
.end method

.method public setLoadControl(Lccsancom/google/android/exoplayer2/LoadControl;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "loadControl"    # Lccsancom/google/android/exoplayer2/LoadControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lccsancom/google/android/exoplayer2/LoadControl;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 193
    return-object p0
.end method

.method public setLooper(Lccsanandroid/os/Looper;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "looper"    # Lccsanandroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Lccsanandroid/os/Looper;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 207
    return-object p0
.end method

.method public setMediaSourceFactory(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 186
    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "pauseAtEndOfMediaItems"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setPauseAtEndOfMediaItems(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 321
    return-object p0
.end method

.method public setPriorityTaskManager(Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "priorityTaskManager"    # Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setPriorityTaskManager(Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 226
    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "releaseTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setReleaseTimeoutMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 307
    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "seekBackIncrementMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekBackIncrementMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 293
    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "seekForwardIncrementMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekForwardIncrementMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 300
    return-object p0
.end method

.method public setSeekParameters(Lccsancom/google/android/exoplayer2/SeekParameters;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "seekParameters"    # Lccsancom/google/android/exoplayer2/SeekParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekParameters(Lccsancom/google/android/exoplayer2/SeekParameters;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 286
    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setSkipSilenceEnabled(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 257
    return-object p0
.end method

.method public setTrackSelector(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 177
    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "useLazyPreparation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 279
    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "videoChangeFrameRateStrategy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setVideoChangeFrameRateStrategy(I)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 272
    return-object p0
.end method

.method public setVideoScalingMode(I)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "videoScalingMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setVideoScalingMode(I)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 264
    return-object p0
.end method

.method public setWakeMode(I)Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .param p1, "wakeMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->setWakeMode(I)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 243
    return-object p0
.end method
