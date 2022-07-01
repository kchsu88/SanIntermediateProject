.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# instance fields
.field private cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final secretKey:[B

.field private final upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>([BLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->secretKey:[B

    .line 38
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->close()V

    .line 66
    return-void
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    .line 43
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v6

    .line 44
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->secretKey:[B

    iget-wide v8, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v4, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 46
    return-wide v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    if-nez p3, :cond_0

    .line 52
    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p3

    .line 55
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 56
    return v0

    .line 58
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 59
    return p3
.end method
