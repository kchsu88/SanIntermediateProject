.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract applyContentMetadataMutations(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract commitFile(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract getCacheSpace()J
.end method

.method public abstract getCachedLength(Ljava/lang/String;JJ)J
.end method

.method public abstract getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentLength(Ljava/lang/String;)J
.end method

.method public abstract getContentMetadata(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCached(Ljava/lang/String;JJ)Z
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract releaseHoleSpan(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
.end method

.method public abstract removeListener(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$Listener;)V
.end method

.method public abstract removeSpan(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract setContentLength(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract startReadWrite(Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract startReadWriteNonBlocking(Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method
