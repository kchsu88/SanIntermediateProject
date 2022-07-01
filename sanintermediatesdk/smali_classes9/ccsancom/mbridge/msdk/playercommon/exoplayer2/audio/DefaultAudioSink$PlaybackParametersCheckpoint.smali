.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field private final mediaTimeUs:J

.field private final playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

.field private final positionUs:J


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;JJ)V
    .locals 0

    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 1257
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->mediaTimeUs:J

    .line 1258
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->positionUs:J

    .line 1259
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;JJLccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1248
    invoke-direct/range {p0 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;JJ)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 0

    .line 1248
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J
    .locals 2

    .line 1248
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->positionUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J
    .locals 2

    .line 1248
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->mediaTimeUs:J

    return-wide v0
.end method
