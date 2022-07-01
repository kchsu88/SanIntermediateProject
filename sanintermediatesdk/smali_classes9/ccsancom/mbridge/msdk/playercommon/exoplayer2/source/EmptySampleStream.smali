.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/EmptySampleStream;
.super Ljava/lang/Object;
.source "EmptySampleStream.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public final readData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 0

    .line 41
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 42
    const/4 p1, -0x4

    return p1
.end method

.method public final skipData(J)I
    .locals 0

    .line 47
    const/4 p1, 0x0

    return p1
.end method
