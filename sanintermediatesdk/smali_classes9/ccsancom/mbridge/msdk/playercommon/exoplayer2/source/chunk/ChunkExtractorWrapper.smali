.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    }
.end annotation


# instance fields
.field private final bindingTrackOutputs:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field public final extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

.field private extractorInitialized:Z

.field private final primaryTrackManifestFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private final primaryTrackType:I

.field private sampleFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

.field private trackOutputProvider:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    .line 79
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackType:I

    .line 80
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackManifestFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 81
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    .line 82
    return-void
.end method


# virtual methods
.method public final endTracks()V
    .locals 3

    .line 141
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 142
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    aput-object v2, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 146
    return-void
.end method

.method public final getSampleFormats()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    return-object v0
.end method

.method public final getSeekMap()Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    return-object v0
.end method

.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    .locals 6

    .line 107
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .line 108
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 109
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V

    .line 110
    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    invoke-interface {p1, v3, v4, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 113
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    cmp-long v5, p2, v1

    if-nez v5, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 116
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {p3}, Lccsanandroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 117
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {p3, p2}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    invoke-virtual {p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V

    .line 116
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 120
    :cond_3
    :goto_1
    return-void
.end method

.method public final seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    .line 151
    return-void
.end method

.method public final track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;
    .locals 2

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    .line 127
    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 131
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    .line 132
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackType:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackManifestFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;-><init>(IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 133
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V

    .line 134
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Lccsanandroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    :cond_2
    return-object v0
.end method
