.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 56
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->uri:Lccsanandroid/net/Uri;

    .line 115
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 122
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 123
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 129
    :cond_1
    return-void

    .line 121
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    :try_start_1
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 122
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 123
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 128
    :cond_2
    throw v2
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->uri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->uri:Lccsanandroid/net/Uri;

    .line 62
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 63
    iget-wide v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 65
    :cond_0
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    :goto_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 71
    nop

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 78
    :cond_1
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    return-wide v0

    .line 67
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 83
    if-nez p3, :cond_0

    .line 84
    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 86
    const/4 p1, -0x1

    return p1

    .line 90
    :cond_1
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 95
    if-lez p1, :cond_2

    .line 96
    iget-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 97
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz p2, :cond_2

    .line 98
    invoke-interface {p2, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    .line 102
    :cond_2
    return p1

    .line 91
    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
