.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .line 183
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    move-result-object v0

    .line 184
    .local v0, "contentType":Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .locals 2
    .param p0, "contentType"    # Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 223
    if-eqz p3, :cond_0

    .line 224
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 216
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v0

    .line 217
    .local v0, "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # Ljava/lang/String;

    .line 196
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 197
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->parse(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    move-result-object p0

    .line 204
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v1

    .line 205
    .local v1, "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;[B)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # [B

    .line 210
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write([B)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v0

    .line 211
    .local v0, "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 130
    .local v0, "contentLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 134
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v2

    .line 137
    .local v2, "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    :try_start_0
    invoke-interface {v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v3, "bytes":[B
    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    nop

    .line 141
    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    array-length v4, v3

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") and stream length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") disagree"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_1
    :goto_0
    return-object v3

    .line 139
    .end local v3    # "bytes":[B
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    throw v3

    .line 131
    .end local v2    # "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 4

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    .line 159
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v2

    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;-><init>(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    :goto_0
    return-object v1
.end method

.method public close()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 189
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v0

    .line 175
    .local v0, "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->bomAwareCharset(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 176
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    return-object v2

    .line 178
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    throw v1
.end method
