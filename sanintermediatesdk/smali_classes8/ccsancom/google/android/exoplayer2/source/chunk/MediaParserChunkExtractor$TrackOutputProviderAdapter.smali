.class Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOutputProviderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;

    .line 170
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 2

    .line 181
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$400(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getSampleFormats()[Lccsancom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$302(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;[Lccsancom/google/android/exoplayer2/Format;)[Lccsancom/google/android/exoplayer2/Format;

    .line 182
    return-void
.end method

.method public seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    .line 187
    return-void
.end method

.method public track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 174
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$100(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$100(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$200(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object v0

    :goto_0
    return-object v0
.end method
