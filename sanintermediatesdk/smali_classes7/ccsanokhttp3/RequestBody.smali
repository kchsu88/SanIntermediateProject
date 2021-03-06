.class public abstract Lccsanokhttp3/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lccsanokhttp3/MediaType;Ljava/io/File;)Lccsanokhttp3/RequestBody;
    .locals 2
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;

    .line 158
    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lccsanokhttp3/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lccsanokhttp3/RequestBody$3;-><init>(Lccsanokhttp3/MediaType;Ljava/io/File;)V

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lccsanokhttp3/MediaType;Ljava/lang/String;)Lccsanokhttp3/RequestBody;
    .locals 3
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # Ljava/lang/String;

    .line 101
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Lccsanokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanokhttp3/MediaType;->parse(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object p0

    .line 109
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 110
    .local v1, "bytes":[B
    invoke-static {p0, v1}, Lccsanokhttp3/RequestBody;->create(Lccsanokhttp3/MediaType;[B)Lccsanokhttp3/RequestBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lccsanokhttp3/MediaType;Lccsanokio/ByteString;)Lccsanokhttp3/RequestBody;
    .locals 1
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # Lccsanokio/ByteString;

    .line 116
    new-instance v0, Lccsanokhttp3/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lccsanokhttp3/RequestBody$1;-><init>(Lccsanokhttp3/MediaType;Lccsanokio/ByteString;)V

    return-object v0
.end method

.method public static create(Lccsanokhttp3/MediaType;[B)Lccsanokhttp3/RequestBody;
    .locals 2
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # [B

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lccsanokhttp3/RequestBody;->create(Lccsanokhttp3/MediaType;[BII)Lccsanokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lccsanokhttp3/MediaType;[BII)Lccsanokhttp3/RequestBody;
    .locals 7
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 139
    if-eqz p1, :cond_0

    .line 140
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lccsanokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 141
    new-instance v0, Lccsanokhttp3/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lccsanokhttp3/RequestBody$2;-><init>(Lccsanokhttp3/MediaType;I[BI)V

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lccsanokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public isDuplex()Z
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeTo(Lccsanokio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
