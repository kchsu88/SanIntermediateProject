.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Lccsanandroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->assetManager:Lccsanandroid/content/res/AssetManager;

    .line 63
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 64
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->uri:Lccsanandroid/net/Uri;

    .line 147
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 154
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 155
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 156
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 161
    :cond_1
    return-void

    .line 153
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    :try_start_1
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 154
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 155
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 156
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 160
    :cond_2
    throw v2
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 140
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->uri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->uri:Lccsanandroid/net/Uri;

    .line 70
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 72
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->assetManager:Lccsanandroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 77
    iget-wide v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 78
    iget-wide v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_5

    .line 83
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    .line 84
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 87
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-nez v7, :cond_3

    .line 91
    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_3
    :goto_1
    nop

    .line 98
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_4

    .line 100
    invoke-interface {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 102
    :cond_4
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 81
    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 107
    if-nez p3, :cond_0

    .line 108
    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 110
    return v4

    .line 115
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    int-to-long v5, p3

    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 117
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 122
    if-ne p1, v4, :cond_4

    .line 123
    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    .line 127
    return v4

    .line 125
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 129
    :cond_4
    iget-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    .line 130
    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 132
    :cond_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    if-eqz p2, :cond_6

    .line 133
    invoke-interface {p2, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    .line 135
    :cond_6
    return p1

    .line 118
    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
