.class public final Lccsancom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/FlacMetadataReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacStreamMetadataHolder"
.end annotation


# instance fields
.field public flacStreamMetadata:Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V
    .locals 0
    .param p1, "flacStreamMetadata"    # Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lccsancom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 46
    return-void
.end method
