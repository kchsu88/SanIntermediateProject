.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 127
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    const/high16 p2, 0x20000

    new-array v3, p2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->cache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;[BLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 137
    return-void
.end method

.method public static cache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;[BLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 174
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p6

    invoke-static/range {p2 .. p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static/range {p3 .. p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    if-eqz v0, :cond_0

    .line 179
    invoke-static {v10, v11, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getCached(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    move-object v12, v0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    move-object v12, v0

    .line 185
    :goto_0
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getKey(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v13

    .line 186
    iget-wide v0, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 187
    iget-wide v2, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v14, -0x1

    cmp-long v4, v2, v14

    if-eqz v4, :cond_1

    iget-wide v2, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_1

    :cond_1
    invoke-interface {v11, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    .line 188
    :goto_2
    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-eqz v0, :cond_9

    .line 189
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 190
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 192
    :cond_3
    :goto_3
    nop

    .line 193
    cmp-long v0, v18, v14

    if-eqz v0, :cond_4

    move-wide/from16 v4, v18

    goto :goto_4

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    :goto_4
    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v2, v16

    invoke-interface/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    .line 194
    cmp-long v2, v0, v20

    if-lez v2, :cond_5

    goto :goto_5

    .line 198
    :cond_5
    neg-long v8, v0

    .line 199
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide v3, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v22, v8

    move/from16 v8, p5

    move-object v9, v12

    invoke-static/range {v0 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;JJLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;[BLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J

    move-result-wide v0

    .line 201
    cmp-long v2, v0, v22

    if-gez v2, :cond_7

    .line 203
    if-eqz p8, :cond_9

    cmp-long v0, v18, v14

    if-nez v0, :cond_6

    goto :goto_7

    .line 204
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 201
    :cond_7
    move-wide/from16 v0, v22

    .line 209
    :goto_5
    add-long v16, v16, v0

    .line 210
    cmp-long v2, v18, v14

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move-wide/from16 v20, v0

    :goto_6
    sub-long v18, v18, v20

    .line 211
    goto :goto_2

    .line 212
    :cond_9
    :goto_7
    return-void
.end method

.method public static generateKey(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCached(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 19

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getKey(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v8

    .line 87
    iget-wide v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 88
    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v6, v4, v9

    if-eqz v6, :cond_0

    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    .line 89
    :goto_0
    iput-wide v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 90
    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 91
    iput-wide v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-wide v13, v2

    move-wide v15, v4

    .line 92
    :goto_1
    cmp-long v2, v15, v11

    if-eqz v2, :cond_5

    .line 93
    nop

    .line 94
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v2, v15, v9

    if-eqz v2, :cond_1

    move-wide v6, v15

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v17

    :goto_2
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v13

    invoke-interface/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v2

    .line 95
    cmp-long v4, v2, v11

    if-lez v4, :cond_2

    .line 96
    iget-wide v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    goto :goto_3

    .line 98
    :cond_2
    neg-long v2, v2

    .line 99
    cmp-long v4, v2, v17

    if-nez v4, :cond_3

    .line 100
    return-void

    .line 103
    :cond_3
    :goto_3
    add-long/2addr v13, v2

    .line 104
    cmp-long v4, v15, v9

    if-nez v4, :cond_4

    move-wide v2, v11

    :cond_4
    sub-long/2addr v15, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    return-void
.end method

.method public static getKey(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->generateKey(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static readAndDiscard(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;JJLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;[BLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p0

    .line 234
    :goto_0
    if-eqz p7, :cond_0

    .line 236
    invoke-virtual/range {p7 .. p8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 239
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 244
    new-instance v15, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v6, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    iget-object v7, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v8, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    add-long v8, v8, p1

    iget-wide v10, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v10, v8, v10

    const-wide/16 v12, -0x1

    iget-object v14, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v0, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->flags:I
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/lit8 v0, v0, 0x2

    move-object v5, v15

    move-wide/from16 v8, p1

    move-object/from16 p0, v4

    move-object v4, v15

    move v15, v0

    :try_start_1
    invoke-direct/range {v5 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;-><init>(Lccsanandroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_1
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    invoke-interface {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    .line 249
    iget-wide v7, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    cmp-long v0, v5, v9

    if-eqz v0, :cond_1

    .line 250
    iget-wide v7, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 252
    :cond_1
    const-wide/16 v5, 0x0

    .line 253
    :goto_1
    cmp-long v0, v5, p3

    if-eqz v0, :cond_5

    .line 254
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    const/4 v0, 0x0

    .line 258
    cmp-long v7, p3, v9

    if-eqz v7, :cond_2

    array-length v7, v2

    int-to-long v7, v7

    sub-long v11, p3, v5

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    goto :goto_2

    .line 259
    :cond_2
    array-length v8, v2

    .line 257
    :goto_2
    invoke-interface {v1, v2, v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 260
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 261
    iget-wide v7, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_5

    .line 262
    iget-wide v7, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    goto :goto_3

    .line 266
    :cond_3
    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 267
    iget-wide v11, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v11, v7

    iput-wide v11, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    .line 268
    goto :goto_1

    .line 255
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :cond_5
    :goto_3
    nop

    .line 273
    invoke-static/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 269
    return-wide v5

    .line 270
    :catch_0
    move-exception v0

    goto :goto_4

    .line 240
    :cond_6
    move-object/from16 p0, v4

    :try_start_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_3
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_4

    .line 273
    :catchall_0
    move-exception v0

    invoke-static/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 274
    throw v0

    .line 270
    :catch_2
    move-exception v0

    move-object/from16 p0, v4

    .line 273
    :goto_4
    invoke-static/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 274
    goto/16 :goto_0
.end method

.method public static remove(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 1

    .line 280
    invoke-interface {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 281
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;

    .line 283
    :try_start_0
    invoke-interface {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->removeSpan(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 287
    :goto_1
    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method
