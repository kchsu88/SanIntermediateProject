.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field final synthetic val$counters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->val$counters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->val$counters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 170
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->val$counters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 171
    return-void
.end method
