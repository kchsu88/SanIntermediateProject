.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$2;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V
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

    .line 1029
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$2;->val$toRelease:Lccsanandroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1032
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$2;->val$toRelease:Lccsanandroid/media/AudioTrack;

    invoke-virtual {v0}, Lccsanandroid/media/AudioTrack;->release()V

    .line 1033
    return-void
.end method
