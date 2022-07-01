.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 690
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public final onAudioSessionId(I)V
    .locals 1

    .line 694
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 695
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V

    .line 696
    return-void
.end method

.method public final onPositionDiscontinuity()V
    .locals 2

    .line 700
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 702
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->access$202(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z

    .line 703
    return-void
.end method

.method public final onUnderrun(IJJ)V
    .locals 8

    .line 707
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 708
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    .line 709
    return-void
.end method
