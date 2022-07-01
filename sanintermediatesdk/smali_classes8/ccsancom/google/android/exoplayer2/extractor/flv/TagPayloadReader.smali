.class abstract Lccsancom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 39
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .locals 1
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->parseHeader(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->parsePayload(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract parseHeader(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
