.class public interface abstract Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/TrackOutput$SampleDataPart;,
        Lccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    }
.end annotation


# static fields
.field public static final SAMPLE_DATA_PART_ENCRYPTION:I = 0x1

.field public static final SAMPLE_DATA_PART_MAIN:I = 0x0

.field public static final SAMPLE_DATA_PART_SUPPLEMENTAL:I = 0x2


# virtual methods
.method public abstract format(Lccsancom/google/android/exoplayer2/Format;)V
.end method

.method public abstract sampleData(Lccsancom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sampleData(Lccsancom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V
.end method

.method public abstract sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;II)V
.end method

.method public abstract sampleMetadata(JIIILccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
.end method
