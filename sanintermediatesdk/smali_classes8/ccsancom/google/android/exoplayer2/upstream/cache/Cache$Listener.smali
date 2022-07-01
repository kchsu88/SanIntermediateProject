.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/cache/Cache$Listener;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/cache/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSpanAdded(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
.end method

.method public abstract onSpanRemoved(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
.end method

.method public abstract onSpanTouched(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;Lccsancom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
.end method
