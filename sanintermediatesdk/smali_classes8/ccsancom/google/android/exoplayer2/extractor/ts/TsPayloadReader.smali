.class public interface abstract Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Flags;,
        Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;,
        Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# static fields
.field public static final FLAG_DATA_ALIGNMENT_INDICATOR:I = 0x4

.field public static final FLAG_PAYLOAD_UNIT_START_INDICATOR:I = 0x1

.field public static final FLAG_RANDOM_ACCESS_INDICATOR:I = 0x2


# virtual methods
.method public abstract consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract init(Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract seek()V
.end method
