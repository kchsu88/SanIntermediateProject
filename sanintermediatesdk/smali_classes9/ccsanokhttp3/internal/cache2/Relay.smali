.class final Lccsanokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lccsanokio/ByteString;

.field static final PREFIX_DIRTY:Lccsanokio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lccsanokio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lccsanokio/ByteString;

.field sourceCount:I

.field upstream:Lccsanokio/Source;

.field final upstreamBuffer:Lccsanokio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lccsanokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsanokio/ByteString;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lccsanokio/ByteString;

    .line 46
    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lccsanokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsanokio/ByteString;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lccsanokio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lccsanokio/Source;JLccsanokio/ByteString;J)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "upstream"    # Lccsanokio/Source;
    .param p3, "upstreamPos"    # J
    .param p5, "metadata"    # Lccsanokio/ByteString;
    .param p6, "bufferMaxSize"    # J

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->upstreamBuffer:Lccsanokio/Buffer;

    .line 94
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->buffer:Lccsanokio/Buffer;

    .line 108
    iput-object p1, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 109
    iput-object p2, p0, Lccsanokhttp3/internal/cache2/Relay;->upstream:Lccsanokio/Source;

    .line 110
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsanokhttp3/internal/cache2/Relay;->complete:Z

    .line 111
    iput-wide p3, p0, Lccsanokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 112
    iput-object p5, p0, Lccsanokhttp3/internal/cache2/Relay;->metadata:Lccsanokio/ByteString;

    .line 113
    iput-wide p6, p0, Lccsanokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 114
    return-void
.end method

.method public static edit(Ljava/io/File;Lccsanokio/Source;Lccsanokio/ByteString;J)Lccsanokhttp3/internal/cache2/Relay;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "upstream"    # Lccsanokio/Source;
    .param p2, "metadata"    # Lccsanokio/ByteString;
    .param p3, "bufferMaxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    move-object v2, p0

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v1, Lccsanokhttp3/internal/cache2/Relay;

    const-wide/16 v6, 0x0

    move-object v3, v1

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    invoke-direct/range {v3 .. v10}, Lccsanokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lccsanokio/Source;JLccsanokio/ByteString;J)V

    .line 130
    .local v1, "result":Lccsanokhttp3/internal/cache2/Relay;
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 131
    sget-object v9, Lccsanokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lccsanokio/ByteString;

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lccsanokhttp3/internal/cache2/Relay;->writeHeader(Lccsanokio/ByteString;JJ)V

    .line 133
    return-object v1
.end method

.method public static read(Ljava/io/File;)Lccsanokhttp3/internal/cache2/Relay;
    .locals 22
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    move-object/from16 v8, p0

    invoke-direct {v1, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v1, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v9, Lccsanokhttp3/internal/cache2/FileOperator;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {v9, v0}, Lccsanokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 148
    .local v9, "fileOperator":Lccsanokhttp3/internal/cache2/FileOperator;
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    move-object v15, v0

    .line 149
    .local v15, "header":Lccsanokio/Buffer;
    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x20

    move-object v12, v15

    invoke-virtual/range {v9 .. v14}, Lccsanokhttp3/internal/cache2/FileOperator;->read(JLccsanokio/Buffer;J)V

    .line 150
    sget-object v0, Lccsanokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lccsanokio/ByteString;

    invoke-virtual {v0}, Lccsanokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v15, v2, v3}, Lccsanokio/Buffer;->readByteString(J)Lccsanokio/ByteString;

    move-result-object v10

    .line 151
    .local v10, "prefix":Lccsanokio/ByteString;
    invoke-virtual {v10, v0}, Lccsanokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v15}, Lccsanokio/Buffer;->readLong()J

    move-result-wide v11

    .line 153
    .local v11, "upstreamSize":J
    invoke-virtual {v15}, Lccsanokio/Buffer;->readLong()J

    move-result-wide v13

    .line 156
    .local v13, "metadataSize":J
    new-instance v19, Lccsanokio/Buffer;

    invoke-direct/range {v19 .. v19}, Lccsanokio/Buffer;-><init>()V

    .line 157
    .local v19, "metadataBuffer":Lccsanokio/Buffer;
    const-wide/16 v2, 0x20

    add-long v17, v11, v2

    move-object/from16 v16, v9

    move-wide/from16 v20, v13

    invoke-virtual/range {v16 .. v21}, Lccsanokhttp3/internal/cache2/FileOperator;->read(JLccsanokio/Buffer;J)V

    .line 158
    invoke-virtual/range {v19 .. v19}, Lccsanokio/Buffer;->readByteString()Lccsanokio/ByteString;

    move-result-object v16

    .line 161
    .local v16, "metadata":Lccsanokio/ByteString;
    new-instance v17, Lccsanokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    move-wide v3, v11

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v7}, Lccsanokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lccsanokio/Source;JLccsanokio/ByteString;J)V

    return-object v17

    .line 151
    .end local v11    # "upstreamSize":J
    .end local v13    # "metadataSize":J
    .end local v16    # "metadata":Lccsanokio/ByteString;
    .end local v19    # "metadataBuffer":Lccsanokio/Buffer;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "unreadable cache file"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeHeader(Lccsanokio/ByteString;JJ)V
    .locals 7
    .param p1, "prefix"    # Lccsanokio/ByteString;
    .param p2, "upstreamSize"    # J
    .param p4, "metadataSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    .line 167
    .local v0, "header":Lccsanokio/Buffer;
    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->write(Lccsanokio/ByteString;)Lccsanokio/Buffer;

    .line 168
    invoke-virtual {v0, p2, p3}, Lccsanokio/Buffer;->writeLong(J)Lccsanokio/Buffer;

    .line 169
    invoke-virtual {v0, p4, p5}, Lccsanokio/Buffer;->writeLong(J)Lccsanokio/Buffer;

    .line 170
    invoke-virtual {v0}, Lccsanokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 172
    new-instance v1, Lccsanokhttp3/internal/cache2/FileOperator;

    iget-object v2, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 173
    .local v1, "fileOperator":Lccsanokhttp3/internal/cache2/FileOperator;
    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x20

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lccsanokhttp3/internal/cache2/FileOperator;->write(JLccsanokio/Buffer;J)V

    .line 174
    return-void

    .line 170
    .end local v1    # "fileOperator":Lccsanokhttp3/internal/cache2/FileOperator;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private writeMetadata(J)V
    .locals 7
    .param p1, "upstreamSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    .line 178
    .local v0, "metadataBuffer":Lccsanokio/Buffer;
    iget-object v1, p0, Lccsanokhttp3/internal/cache2/Relay;->metadata:Lccsanokio/ByteString;

    invoke-virtual {v0, v1}, Lccsanokio/Buffer;->write(Lccsanokio/ByteString;)Lccsanokio/Buffer;

    .line 180
    new-instance v1, Lccsanokhttp3/internal/cache2/FileOperator;

    iget-object v2, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 181
    .local v1, "fileOperator":Lccsanokhttp3/internal/cache2/FileOperator;
    const-wide/16 v2, 0x20

    add-long/2addr v2, p1

    iget-object v4, p0, Lccsanokhttp3/internal/cache2/Relay;->metadata:Lccsanokio/ByteString;

    invoke-virtual {v4}, Lccsanokio/ByteString;->size()I

    move-result v4

    int-to-long v5, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lccsanokhttp3/internal/cache2/FileOperator;->write(JLccsanokio/Buffer;J)V

    .line 182
    return-void
.end method


# virtual methods
.method commit(J)V
    .locals 8
    .param p1, "upstreamSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Lccsanokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 187
    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 190
    sget-object v3, Lccsanokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lccsanokio/ByteString;

    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->metadata:Lccsanokio/ByteString;

    invoke-virtual {v0}, Lccsanokio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lccsanokhttp3/internal/cache2/Relay;->writeHeader(Lccsanokio/ByteString;JJ)V

    .line 191
    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 194
    monitor-enter p0

    .line 195
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccsanokhttp3/internal/cache2/Relay;->complete:Z

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->upstream:Lccsanokio/Source;

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->upstream:Lccsanokio/Source;

    .line 200
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isClosed()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public metadata()Lccsanokio/ByteString;
    .locals 1

    .line 207
    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->metadata:Lccsanokio/ByteString;

    return-object v0
.end method

.method public newSource()Lccsanokio/Source;
    .locals 1

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 218
    :cond_0
    iget v0, p0, Lccsanokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsanokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 219
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    new-instance v0, Lccsanokhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lccsanokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lccsanokhttp3/internal/cache2/Relay;)V

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
