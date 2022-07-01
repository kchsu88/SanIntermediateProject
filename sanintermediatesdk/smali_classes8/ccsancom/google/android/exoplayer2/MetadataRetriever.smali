.class public final Lccsancom/google/android/exoplayer2/MetadataRetriever;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveMetadata(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lccsancom/google/android/exoplayer2/util/Clock;->DEFAULT:Lccsancom/google/android/exoplayer2/util/Clock;

    invoke-static {p0, p1, v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static retrieveMetadata(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "clock"    # Lccsancom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/android/exoplayer2/MediaItem;",
            "Lccsancom/google/android/exoplayer2/util/Clock;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 84
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v0

    .line 86
    .local v0, "extractorsFactory":Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;
    new-instance v1, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 88
    .local v1, "mediaSourceFactory":Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    invoke-static {v1, p1, p2}, Lccsancom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method public static retrieveMetadata(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;",
            "Lccsancom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lccsancom/google/android/exoplayer2/util/Clock;->DEFAULT:Lccsancom/google/android/exoplayer2/util/Clock;

    invoke-static {p0, p1, v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static retrieveMetadata(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "clock"    # Lccsancom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;",
            "Lccsancom/google/android/exoplayer2/MediaItem;",
            "Lccsancom/google/android/exoplayer2/util/Clock;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {v0, p0, p2}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/util/Clock;)V

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->retrieveMetadata(Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
