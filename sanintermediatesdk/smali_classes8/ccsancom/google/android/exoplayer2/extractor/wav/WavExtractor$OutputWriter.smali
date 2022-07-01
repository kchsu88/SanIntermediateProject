.class interface abstract Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OutputWriter"
.end annotation


# virtual methods
.method public abstract init(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract reset(J)V
.end method

.method public abstract sampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
