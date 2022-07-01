.class public final Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
.super Ljava/lang/Object;
.source "WebvttCueInfo.java"


# instance fields
.field public final cue:Lccsancom/google/android/exoplayer2/text/Cue;

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/text/Cue;JJ)V
    .locals 0
    .param p1, "cue"    # Lccsancom/google/android/exoplayer2/text/Cue;
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lccsancom/google/android/exoplayer2/text/Cue;

    .line 29
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    .line 30
    iput-wide p4, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->endTimeUs:J

    .line 31
    return-void
.end method
