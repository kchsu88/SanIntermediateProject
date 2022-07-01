.class public final Lccsanokio/HashingSink;
.super Lccsanokio/ForwardingSink;
.source "HashingSink.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final messageDigest:Ljava/security/MessageDigest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsanokio/Sink;Ljava/lang/String;)V
    .locals 2
    .param p1, "sink"    # Lccsanokio/Sink;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lccsanokio/ForwardingSink;-><init>(Lccsanokio/Sink;)V

    .line 86
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lccsanokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokio/HashingSink;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private constructor <init>(Lccsanokio/Sink;Lccsanokio/ByteString;Ljava/lang/String;)V
    .locals 3
    .param p1, "sink"    # Lccsanokio/Sink;
    .param p2, "key"    # Lccsanokio/ByteString;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lccsanokio/ForwardingSink;-><init>(Lccsanokio/Sink;)V

    .line 96
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lccsanokio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 97
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lccsanokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static hmacSha1(Lccsanokio/Sink;Lccsanokio/ByteString;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;
    .param p1, "key"    # Lccsanokio/ByteString;

    .line 70
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Lccsanokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lccsanokio/Sink;Lccsanokio/ByteString;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;
    .param p1, "key"    # Lccsanokio/ByteString;

    .line 75
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Lccsanokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512(Lccsanokio/Sink;Lccsanokio/ByteString;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;
    .param p1, "key"    # Lccsanokio/ByteString;

    .line 80
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Lccsanokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lccsanokio/Sink;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;

    .line 50
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lccsanokio/Sink;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;

    .line 55
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lccsanokio/Sink;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;

    .line 60
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha512(Lccsanokio/Sink;)Lccsanokio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lccsanokio/Sink;

    .line 65
    new-instance v0, Lccsanokio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Lccsanokio/HashingSink;-><init>(Lccsanokio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final hash()Lccsanokio/ByteString;
    .locals 2

    .line 132
    iget-object v0, p0, Lccsanokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanokio/HashingSink;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 133
    .local v0, "result":[B
    :goto_0
    invoke-static {v0}, Lccsanokio/ByteString;->of([B)Lccsanokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-wide v0, p1, Lccsanokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lccsanokio/Util;->checkOffsetAndCount(JJJ)V

    .line 110
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "hashedCount":J
    iget-object v2, p1, Lccsanokio/Buffer;->head:Lccsanokio/Segment;

    .local v2, "s":Lccsanokio/Segment;
    :goto_0
    cmp-long v3, v0, p2

    if-gez v3, :cond_1

    .line 112
    sub-long v3, p2, v0

    iget v5, v2, Lccsanokio/Segment;->limit:I

    iget v6, v2, Lccsanokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 113
    .local v4, "toHash":I
    iget-object v3, p0, Lccsanokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v3, :cond_0

    .line 114
    iget-object v5, v2, Lccsanokio/Segment;->data:[B

    iget v6, v2, Lccsanokio/Segment;->pos:I

    invoke-virtual {v3, v5, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 116
    :cond_0
    iget-object v3, p0, Lccsanokio/HashingSink;->mac:Ljavax/crypto/Mac;

    iget-object v5, v2, Lccsanokio/Segment;->data:[B

    iget v6, v2, Lccsanokio/Segment;->pos:I

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 118
    :goto_1
    int-to-long v5, v4

    add-long/2addr v0, v5

    .line 111
    .end local v4    # "toHash":I
    iget-object v2, v2, Lccsanokio/Segment;->next:Lccsanokio/Segment;

    goto :goto_0

    .line 122
    .end local v2    # "s":Lccsanokio/Segment;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lccsanokio/ForwardingSink;->write(Lccsanokio/Buffer;J)V

    .line 123
    return-void
.end method
