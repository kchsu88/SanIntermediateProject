.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;

.field final synthetic val$toRelease:Lccsanandroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;Lccsanandroid/media/AudioTrack;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;->val$toRelease:Lccsanandroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 994
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;->val$toRelease:Lccsanandroid/media/AudioTrack;

    invoke-virtual {v0}, Lccsanandroid/media/AudioTrack;->flush()V

    .line 995
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;->val$toRelease:Lccsanandroid/media/AudioTrack;

    invoke-virtual {v0}, Lccsanandroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 998
    nop

    .line 999
    return-void

    .line 997
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;)Lccsanandroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 998
    throw v0
.end method