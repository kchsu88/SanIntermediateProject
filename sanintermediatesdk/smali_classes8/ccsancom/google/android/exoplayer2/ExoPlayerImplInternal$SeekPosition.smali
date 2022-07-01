.class final Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekPosition"
.end annotation


# instance fields
.field public final timeline:Lccsancom/google/android/exoplayer2/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/Timeline;IJ)V
    .locals 0
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J

    .line 2928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2929
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 2930
    iput p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    .line 2931
    iput-wide p3, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 2932
    return-void
.end method
