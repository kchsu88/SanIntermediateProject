.class public final Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSink$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private bufferSize:I

.field private cache:Lccsancom/google/android/exoplayer2/upstream/cache/Cache;

.field private fragmentSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->fragmentSize:J

    .line 55
    const/16 v0, 0x5000

    iput v0, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->bufferSize:I

    .line 56
    return-void
.end method


# virtual methods
.method public createDataSink()Lccsancom/google/android/exoplayer2/upstream/DataSink;
    .locals 5

    .line 105
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->cache:Lccsancom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->fragmentSize:J

    iget v4, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->bufferSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-object v0
.end method

.method public setBufferSize(I)Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    .locals 0
    .param p1, "bufferSize"    # I

    .line 99
    iput p1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->bufferSize:I

    .line 100
    return-object p0
.end method

.method public setCache(Lccsancom/google/android/exoplayer2/upstream/cache/Cache;)Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    .locals 0
    .param p1, "cache"    # Lccsancom/google/android/exoplayer2/upstream/cache/Cache;

    .line 67
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->cache:Lccsancom/google/android/exoplayer2/upstream/cache/Cache;

    .line 68
    return-object p0
.end method

.method public setFragmentSize(J)Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    .locals 0
    .param p1, "fragmentSize"    # J

    .line 85
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->fragmentSize:J

    .line 86
    return-object p0
.end method
