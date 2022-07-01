.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

.field final frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field final sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/Random;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .param p3, "random"    # Ljava/util/Random;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 54
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    .line 62
    if-eqz p2, :cond_3

    .line 63
    if-eqz p3, :cond_2

    .line 64
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    .line 65
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 66
    invoke-interface {p2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 67
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 70
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    .line 71
    if-eqz p1, :cond_1

    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;-><init>()V

    :cond_1
    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    .line 72
    return-void

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeControlFrame(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "payload"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v0

    .line 116
    .local v0, "length":I
    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 121
    or-int/lit16 v1, p1, 0x80

    .line 122
    .local v1, "b0":I
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 124
    move v2, v0

    .line 125
    .local v2, "b1":I
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v3, :cond_0

    .line 126
    or-int/lit16 v2, v2, 0x80

    .line 127
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 129
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 130
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write([B)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 132
    if-lez v0, :cond_1

    .line 133
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v3

    .line 134
    .local v3, "payloadStart":J
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v5, p2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 136
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readAndWriteUnsafe(Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;)Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    .line 137
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-virtual {v5, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 138
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketProtocol;->toggleMask(Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;[B)V

    .line 139
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->close()V

    .line 140
    .end local v3    # "payloadStart":J
    goto :goto_0

    .line 142
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 143
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 146
    :cond_1
    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V

    .line 147
    return-void

    .line 117
    .end local v1    # "b0":I
    .end local v2    # "b1":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Payload size must be less than or equal to 125"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "length":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method newMessageSink(IJ)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 2
    .param p1, "formatOpcode"    # I
    .param p2, "contentLength"    # J

    .line 154
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 160
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 161
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 162
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 163
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->frameSink:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter$FrameSink;

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeClose(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->EMPTY:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 93
    .local v0, "payload":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 95
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 97
    :cond_1
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    .line 98
    .local v1, "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeShort(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 99
    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 102
    :cond_2
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readByteString()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    .line 106
    .end local v1    # "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    :cond_3
    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 109
    throw v1
.end method

.method writeMessageFrame(IJZZ)V
    .locals 6
    .param p1, "formatOpcode"    # I
    .param p2, "byteCount"    # J
    .param p4, "isFirstFrame"    # Z
    .param p5, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_7

    .line 172
    if-eqz p4, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, "b0":I
    :goto_0
    if-eqz p5, :cond_1

    .line 174
    or-int/lit16 v0, v0, 0x80

    .line 176
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "b1":I
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v2, :cond_2

    .line 180
    or-int/lit16 v1, v1, 0x80

    .line 182
    :cond_2
    const-wide/16 v2, 0x7d

    cmp-long v4, p2, v2

    if-gtz v4, :cond_3

    .line 183
    long-to-int v2, p2

    or-int/2addr v1, v2

    .line 184
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    goto :goto_1

    .line 185
    :cond_3
    const-wide/32 v2, 0xffff

    cmp-long v4, p2, v2

    if-gtz v4, :cond_4

    .line 186
    or-int/lit8 v1, v1, 0x7e

    .line 187
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 188
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    long-to-int v3, p2

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeShort(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    goto :goto_1

    .line 190
    :cond_4
    or-int/lit8 v1, v1, 0x7f

    .line 191
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 192
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeLong(J)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 195
    :goto_1
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v2, :cond_5

    .line 196
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 197
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write([B)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 199
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_6

    .line 200
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v2

    .line 201
    .local v2, "bufferStart":J
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v4, v5, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 203
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->readAndWriteUnsafe(Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;)Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    .line 204
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-virtual {v4, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 205
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketProtocol;->toggleMask(Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;[B)V

    .line 206
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->maskCursor:Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okio/Buffer$UnsafeCursor;->close()V

    .line 207
    .end local v2    # "bufferStart":J
    goto :goto_2

    .line 209
    :cond_5
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sinkBuffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->buffer:Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v3, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 212
    :cond_6
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->emit()Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 213
    return-void

    .line 170
    .end local v0    # "b0":I
    .end local v1    # "b1":I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writePing(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    .line 77
    return-void
.end method

.method writePong(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeControlFrame(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    .line 82
    return-void
.end method
