.class final Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lccsancom/google/android/exoplayer2/text/TextOutput;
.implements Lccsancom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Lccsanandroid/view/SurfaceHolder$Callback;
.implements Lccsanandroid/view/TextureView$SurfaceTextureListener;
.implements Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Lccsancom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
.implements Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
.implements Lccsancom/google/android/exoplayer2/StreamVolumeManager$Listener;
.implements Lccsancom/google/android/exoplayer2/Player$EventListener;
.implements Lccsancom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 1788
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/SimpleExoPlayer$1;

    .line 1788
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 3
    .param p1, "playerCommand"    # I

    .line 2026
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 2027
    .local v0, "playWhenReady":Z
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    .line 2028
    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2000(ZI)I

    move-result v2

    .line 2027
    invoke-static {v1, v0, p1, v2}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2100(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;ZII)V

    .line 2029
    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 4

    .line 2035
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2100(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;ZII)V

    .line 2039
    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 1932
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    .line 1933
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 1883
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 1885
    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 1
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 1906
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    .line 1907
    return-void
.end method

.method public onAudioDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1911
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 1912
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1002(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/Format;

    .line 1913
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$902(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1914
    return-void
.end method

.method public onAudioEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1876
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$902(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1877
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 1878
    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 1890
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1002(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/Format;

    .line 1891
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 1892
    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 1
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 1896
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    .line 1897
    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 1927
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1928
    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 7
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 1901
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    .line 1902
    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1939
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1302(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;

    .line 1941
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 1942
    .local v1, "listeners":Lccsancom/google/android/exoplayer2/Player$Listener;
    invoke-interface {v1, p1}, Lccsancom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    .line 1943
    .end local v1    # "listeners":Lccsancom/google/android/exoplayer2/Player$Listener;
    goto :goto_0

    .line 1944
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .line 1826
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    .line 1827
    return-void
.end method

.method public synthetic onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onEvents(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lccsancom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .locals 1
    .param p1, "sleepingForOffload"    # Z

    .line 2093
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 2094
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 2
    .param p1, "isLoading"    # Z

    .line 2067
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2500(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2068
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2069
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2500(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 2070
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2602(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Z)Z

    goto :goto_0

    .line 2071
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2072
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2500(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 2073
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2602(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Z)Z

    .line 2076
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lccsancom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMediaItemTransition(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Lccsancom/google/android/exoplayer2/metadata/Metadata;

    .line 1950
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)V

    .line 1951
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/ExoPlayerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl;->onMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)V

    .line 1953
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 1954
    .local v1, "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    invoke-interface {v1, p1}, Lccsancom/google/android/exoplayer2/Player$Listener;->onMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)V

    .line 1955
    .end local v1    # "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    goto :goto_0

    .line 1956
    :cond_0
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 2086
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 2087
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .line 2080
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 2081
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerError(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 1841
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    .line 1842
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$800(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1844
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 1845
    .local v1, "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/Player$Listener;->onRenderedFirstFrame()V

    .line 1846
    .end local v1    # "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    goto :goto_0

    .line 1848
    :cond_0
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 1918
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1100(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1919
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1102(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Z)Z

    .line 1922
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 1923
    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 3
    .param p1, "streamType"    # I

    .line 2045
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2200(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/StreamVolumeManager;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2300(Lccsancom/google/android/exoplayer2/StreamVolumeManager;)Lccsancom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    .line 2046
    .local v0, "deviceInfo":Lccsancom/google/android/exoplayer2/DeviceInfo;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2047
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$2402(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/DeviceInfo;)Lccsancom/google/android/exoplayer2/DeviceInfo;

    .line 2049
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 2050
    .local v2, "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    invoke-interface {v2, v0}, Lccsancom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lccsancom/google/android/exoplayer2/DeviceInfo;)V

    .line 2051
    .end local v2    # "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    goto :goto_0

    .line 2053
    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 2
    .param p1, "streamVolume"    # I
    .param p2, "streamMuted"    # Z

    .line 2058
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 2059
    .local v1, "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    invoke-interface {v1, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    .line 2060
    .end local v1    # "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    goto :goto_0

    .line 2061
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Lccsanandroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Lccsanandroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1984
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1800(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsanandroid/graphics/SurfaceTexture;)V

    .line 1985
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p2, p3}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;II)V

    .line 1986
    return-void
.end method

.method public onSurfaceTextureDestroyed(Lccsanandroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Lccsanandroid/graphics/SurfaceTexture;

    .line 1995
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V

    .line 1996
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;II)V

    .line 1997
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Lccsanandroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Lccsanandroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1990
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p2, p3}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;II)V

    .line 1991
    return-void
.end method

.method public onSurfaceTextureUpdated(Lccsanandroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Lccsanandroid/graphics/SurfaceTexture;

    .line 2003
    return-void
.end method

.method public synthetic onTimelineChanged(Lccsancom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic onTracksInfoChanged(Lccsancom/google/android/exoplayer2/TracksInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksInfoChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/TracksInfo;)V

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 1869
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    .line 1870
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 1813
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 1815
    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 1
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 1852
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    .line 1853
    return-void
.end method

.method public onVideoDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1857
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 1858
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$502(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/Format;

    .line 1859
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1860
    return-void
.end method

.method public onVideoEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1806
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1807
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 1808
    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 1
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 1864
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    .line 1865
    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 1820
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$502(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/Format;

    .line 1821
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 1822
    return-void
.end method

.method public onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2
    .param p1, "videoSize"    # Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 1831
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Lccsancom/google/android/exoplayer2/video/VideoSize;)Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 1832
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    .line 1834
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 1835
    .local v1, "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    invoke-interface {v1, p1}, Lccsancom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    .line 1836
    .end local v1    # "listener":Lccsancom/google/android/exoplayer2/Player$Listener;
    goto :goto_0

    .line 1837
    :cond_0
    return-void
.end method

.method public onVideoSurfaceCreated(Lccsanandroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Lccsanandroid/view/Surface;

    .line 2009
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V

    .line 2010
    return-void
.end method

.method public onVideoSurfaceDestroyed(Lccsanandroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Lccsanandroid/view/Surface;

    .line 2014
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V

    .line 2015
    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 1
    .param p1, "volumeMultiplier"    # F

    .line 2021
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1900(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 2022
    return-void
.end method

.method public surfaceChanged(Lccsanandroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Lccsanandroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1969
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p3, p4}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;II)V

    .line 1970
    return-void
.end method

.method public surfaceCreated(Lccsanandroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Lccsanandroid/view/SurfaceHolder;

    .line 1962
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Lccsanandroid/view/SurfaceHolder;->getSurface()Lccsanandroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V

    .line 1965
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Lccsanandroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Lccsanandroid/view/SurfaceHolder;

    .line 1974
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V

    .line 1977
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lccsancom/google/android/exoplayer2/SimpleExoPlayer;II)V

    .line 1978
    return-void
.end method
