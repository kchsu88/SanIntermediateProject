.class public final synthetic Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(ILccsancom/google/android/exoplayer2/Format;ZLjava/util/List;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->lambda$static$0(ILccsancom/google/android/exoplayer2/Format;ZLjava/util/List;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-result-object p1

    return-object p1
.end method
