.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field private discontinuityReason:I

.field private lastPlaybackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

.field private operationAcks:I

.field private positionDiscontinuity:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$1;)V
    .locals 0

    .line 1708
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .locals 0

    .line 1708
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .locals 0

    .line 1708
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    return p0
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .locals 0

    .line 1708
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return p0
.end method


# virtual methods
.method public final hasPendingUpdate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)Z
    .locals 1

    .line 1716
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->lastPlaybackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final incrementPendingOperationAcks(I)V
    .locals 1

    .line 1726
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    .line 1727
    return-void
.end method

.method public final reset(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V
    .locals 0

    .line 1720
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->lastPlaybackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    .line 1721
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    .line 1722
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 1723
    return-void
.end method

.method public final setPositionDiscontinuity(I)V
    .locals 3

    .line 1730
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 1734
    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1735
    return-void

    .line 1737
    :cond_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 1738
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    .line 1739
    return-void
.end method
