.class public final Lccsancom/google/android/exoplayer2/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final positionMs:J

.field public final timeline:Lccsancom/google/android/exoplayer2/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/Timeline;IJ)V
    .locals 0
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/IllegalSeekPositionException;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 38
    iput p2, p0, Lccsancom/google/android/exoplayer2/IllegalSeekPositionException;->windowIndex:I

    .line 39
    iput-wide p3, p0, Lccsancom/google/android/exoplayer2/IllegalSeekPositionException;->positionMs:J

    .line 40
    return-void
.end method
