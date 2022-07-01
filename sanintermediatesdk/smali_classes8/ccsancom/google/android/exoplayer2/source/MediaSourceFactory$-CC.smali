.class public final synthetic Lccsancom/google/android/exoplayer2/source/MediaSourceFactory$-CC;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"


# direct methods
.method public static $default$createMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/source/MediaSource;
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem;->fromUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-interface {p0, v0}, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method public static $default$setStreamKeys(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Ljava/util/List;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/offline/StreamKey;>;"
    return-object p0
.end method
