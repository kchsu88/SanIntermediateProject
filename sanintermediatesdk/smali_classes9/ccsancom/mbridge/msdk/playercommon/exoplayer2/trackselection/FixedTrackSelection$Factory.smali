.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;
.super Ljava/lang/Object;
.source "FixedTrackSelection.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    .line 47
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public final varargs createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;
    .locals 3

    .line 52
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 53
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    aget p2, p2, v1

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection$Factory;->createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    move-result-object p1

    return-object p1
.end method
