.class public final Lccsancom/google/android/exoplayer2/source/EmptySampleStream;
.super Ljava/lang/Object;
.source "EmptySampleStream.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/SampleStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    .line 33
    return-void
.end method

.method public readData(Lccsancom/google/android/exoplayer2/FormatHolder;Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 1
    .param p1, "formatHolder"    # Lccsancom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 38
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 39
    const/4 v0, -0x4

    return v0
.end method

.method public skipData(J)I
    .locals 1
    .param p1, "positionUs"    # J

    .line 44
    const/4 v0, 0x0

    return v0
.end method
