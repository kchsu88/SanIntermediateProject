.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    .line 99
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    return-object p0
.end method


# virtual methods
.method public final audioSessionId(I)V
    .locals 2

    .line 180
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_0
    return-void
.end method

.method public final audioTrackUnderrun(IJJ)V
    .locals 9

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    return-void
.end method

.method public final decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public final disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public final enabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public final inputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method
