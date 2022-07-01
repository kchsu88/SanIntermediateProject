.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final positionMs:J

.field public final timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;IJ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 43
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 44
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;->windowIndex:I

    .line 45
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;->positionMs:J

    .line 46
    return-void
.end method
