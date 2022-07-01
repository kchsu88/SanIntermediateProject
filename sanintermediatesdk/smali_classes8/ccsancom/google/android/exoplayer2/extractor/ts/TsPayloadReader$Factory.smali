.class public interface abstract Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createInitialPayloadReaders()Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createPayloadReader(ILccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.end method
