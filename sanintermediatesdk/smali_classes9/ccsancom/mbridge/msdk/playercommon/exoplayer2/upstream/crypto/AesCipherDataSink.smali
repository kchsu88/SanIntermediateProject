.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;
.super Ljava/lang/Object;
.source "AesCipherDataSink.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;


# instance fields
.field private cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final scratch:[B

.field private final secretKey:[B

.field private final wrappedDataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;


# direct methods
.method public constructor <init>([BLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;-><init>([BLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;[B)V

    .line 44
    return-void
.end method

.method public constructor <init>([BLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;[B)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    .line 59
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    .line 60
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 61
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

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 92
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->close()V

    .line 93
    return-void
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 66
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    iget-wide v6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 69
    return-void
.end method

.method public final write([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 76
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->write([BII)V

    goto :goto_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    :goto_0
    if-ge v1, p3, :cond_1

    .line 81
    sub-int v2, p3, v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;

    add-int v6, p2, v1

    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    const/4 v9, 0x0

    move-object v5, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 83
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    invoke-interface {v3, v4, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->write([BII)V

    .line 84
    add-int/2addr v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    return-void
.end method
