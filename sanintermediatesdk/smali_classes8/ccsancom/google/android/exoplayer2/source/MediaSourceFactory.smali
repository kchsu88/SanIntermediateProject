.class public interface abstract Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"


# static fields
.field public static final UNSUPPORTED:Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;->UNSUPPORTED:Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    return-void
.end method


# virtual methods
.method public abstract createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/source/MediaSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createMediaSource(Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/android/exoplayer2/source/MediaSource;
.end method

.method public abstract getSupportedTypes()[I
.end method

.method public abstract setDrmHttpDataSourceFactory(Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDrmSessionManager(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDrmSessionManagerProvider(Lccsancom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
.end method

.method public abstract setDrmUserAgent(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLoadErrorHandlingPolicy(Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
.end method

.method public abstract setStreamKeys(Ljava/util/List;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
