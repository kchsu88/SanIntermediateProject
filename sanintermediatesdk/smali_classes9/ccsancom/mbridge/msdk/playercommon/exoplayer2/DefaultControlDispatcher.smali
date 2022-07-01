.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultControlDispatcher;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/ControlDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;IJ)Z
    .locals 0

    .line 34
    invoke-interface {p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->seekTo(IJ)V

    .line 35
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetPlayWhenReady(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Z)Z
    .locals 0

    .line 28
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 29
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetRepeatMode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;I)Z
    .locals 0

    .line 40
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->setRepeatMode(I)V

    .line 41
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetShuffleModeEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Z)Z
    .locals 0

    .line 46
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    .line 47
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchStop(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Z)Z
    .locals 0

    .line 52
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->stop(Z)V

    .line 53
    const/4 p1, 0x1

    return p1
.end method
