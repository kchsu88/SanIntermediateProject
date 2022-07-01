.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x5000


# instance fields
.field private final bufferSize:I

.field private bufferedOutputStream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;

.field private final cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

.field private dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field private dataSpecBytesWritten:J

.field private file:Ljava/io/File;

.field private final maxCacheFileSize:J

.field private outputStream:Ljava/io/OutputStream;

.field private outputStreamBytesWritten:J

.field private final syncFileDescriptor:Z

.field private underlyingFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;J)V
    .locals 6

    .line 76
    const/16 v4, 0x5000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;JIZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;JI)V
    .locals 6

    .line 101
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;JIZ)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;JIZ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    .line 116
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    .line 117
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->bufferSize:I

    .line 118
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->syncFileDescriptor:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;JZ)V
    .locals 6

    .line 89
    const/16 v4, 0x5000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;JIZ)V

    .line 90
    return-void
.end method

.method private closeCurrentOutputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    nop

    .line 201
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 202
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->syncFileDescriptor:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->underlyingFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    nop

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    .line 209
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 210
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 211
    nop

    .line 212
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->commitFile(Ljava/io/File;)V

    .line 216
    nop

    .line 217
    return-void

    .line 207
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    .line 209
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 210
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 211
    nop

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 216
    throw v0
.end method

.method private openNextOutputStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    move-wide v6, v0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v6, v0

    .line 176
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    add-long/2addr v4, v0

    invoke-interface/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->startFile(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 178
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->underlyingFileOutputStream:Ljava/io/FileOutputStream;

    .line 179
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->bufferSize:I

    if-lez v1, :cond_2

    .line 180
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->bufferedOutputStream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;

    if-nez v1, :cond_1

    .line 181
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->underlyingFileOutputStream:Ljava/io/FileOutputStream;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->bufferSize:I

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->bufferedOutputStream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V

    .line 186
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->bufferedOutputStream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    goto :goto_2

    .line 188
    :cond_2
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    .line 190
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    .line 191
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->closeCurrentOutputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 123
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x2

    .line 124
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 126
    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    .line 131
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->openNextOutputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    nop

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    if-ge v0, p3, :cond_2

    .line 145
    :try_start_0
    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 146
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->closeCurrentOutputStream()V

    .line 147
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->openNextOutputStream()V

    .line 149
    :cond_1
    sub-int v1, p3, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->maxCacheFileSize:J

    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 151
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 152
    add-int/2addr v0, v2

    .line 153
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    .line 154
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 156
    :catch_0
    move-exception p1

    .line 157
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 158
    :cond_2
    nop

    .line 159
    return-void
.end method
