.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/BaseTrackSelection;
.source "FixedTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;I)V
    .locals 2

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)V

    .line 76
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;->reason:I

    .line 77
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public final getSelectedIndex()I
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSelectionReason()I
    .locals 1

    .line 93
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;->reason:I

    return v0
.end method

.method public final updateSelectedTrack(JJJ)V
    .locals 0

    .line 84
    return-void
.end method
