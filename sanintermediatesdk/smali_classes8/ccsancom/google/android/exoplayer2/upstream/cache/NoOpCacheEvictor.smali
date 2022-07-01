.class public final Lccsancom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;
.super Ljava/lang/Object;
.source "NoOpCacheEvictor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/cache/CacheEvictor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 0

    .line 34
    return-void
.end method

.method public onSpanAdded(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lccsancom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 44
    return-void
.end method

.method public onSpanRemoved(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lccsancom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 49
    return-void
.end method

.method public onSpanTouched(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lccsancom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 54
    return-void
.end method

.method public onStartFile(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "cache"    # Lccsancom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .line 39
    return-void
.end method

.method public requiresCacheSpanTouches()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method
