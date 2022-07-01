.class public abstract Lccsanokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 137
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .line 187
    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->contentType()Lccsanokhttp3/MediaType;

    move-result-object v0

    .line 188
    .local v0, "contentType":Lccsanokhttp3/MediaType;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lccsanokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static create(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)Lccsanokhttp3/ResponseBody;
    .locals 2
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lccsanokio/BufferedSource;

    .line 227
    if-eqz p3, :cond_0

    .line 228
    new-instance v0, Lccsanokhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanokhttp3/ResponseBody$1;-><init>(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)V

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lccsanokhttp3/MediaType;Ljava/lang/String;)Lccsanokhttp3/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # Ljava/lang/String;

    .line 200
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lccsanokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanokhttp3/MediaType;->parse(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object p0

    .line 208
    :cond_0
    new-instance v1, Lccsanokio/Buffer;

    invoke-direct {v1}, Lccsanokio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lccsanokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lccsanokio/Buffer;

    move-result-object v1

    .line 209
    .local v1, "buffer":Lccsanokio/Buffer;
    invoke-virtual {v1}, Lccsanokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lccsanokhttp3/ResponseBody;->create(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)Lccsanokhttp3/ResponseBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lccsanokhttp3/MediaType;Lccsanokio/ByteString;)Lccsanokhttp3/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # Lccsanokio/ByteString;

    .line 220
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->write(Lccsanokio/ByteString;)Lccsanokio/Buffer;

    move-result-object v0

    .line 221
    .local v0, "buffer":Lccsanokio/Buffer;
    invoke-virtual {p1}, Lccsanokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lccsanokhttp3/ResponseBody;->create(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)Lccsanokhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lccsanokhttp3/MediaType;[B)Lccsanokhttp3/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lccsanokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "content"    # [B

    .line 214
    new-instance v0, Lccsanokio/Buffer;

    invoke-direct {v0}, Lccsanokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lccsanokio/Buffer;->write([B)Lccsanokio/Buffer;

    move-result-object v0

    .line 215
    .local v0, "buffer":Lccsanokio/Buffer;
    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lccsanokhttp3/ResponseBody;->create(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)Lccsanokhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lccsanokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 130
    .local v0, "contentLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 135
    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v2

    .local v2, "source":Lccsanokio/BufferedSource;
    const/4 v3, 0x0

    .line 136
    :try_start_0
    invoke-interface {v2}, Lccsanokio/BufferedSource;->readByteArray()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v4, "bytes":[B
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lccsanokhttp3/ResponseBody$$ExternalSyntheticTwrCloseResource0;->m(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 138
    .end local v2    # "source":Lccsanokio/BufferedSource;
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    array-length v2, v4

    int-to-long v2, v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") and stream length ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") disagree"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_2
    :goto_0
    return-object v4

    .line 135
    .end local v4    # "bytes":[B
    .restart local v2    # "source":Lccsanokio/BufferedSource;
    :catchall_0
    move-exception v3

    .end local v0    # "contentLength":J
    .end local v2    # "source":Lccsanokio/BufferedSource;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .restart local v0    # "contentLength":J
    .restart local v2    # "source":Lccsanokio/BufferedSource;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_3

    invoke-static {v3, v2}, Lccsanokhttp3/ResponseBody$$ExternalSyntheticTwrCloseResource0;->m(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_3
    throw v4

    .line 131
    .end local v2    # "source":Lccsanokio/BufferedSource;
    :cond_4
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

    .line 160
    iget-object v0, p0, Lccsanokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    .line 161
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsanokhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v2

    invoke-direct {p0}, Lccsanokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanokhttp3/ResponseBody$BomAwareReader;-><init>(Lccsanokio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lccsanokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    :goto_0
    return-object v1
.end method

.method public close()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lccsanokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lccsanokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v0

    .line 181
    .local v0, "source":Lccsanokio/BufferedSource;
    :try_start_0
    invoke-direct {p0}, Lccsanokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanokhttp3/internal/Util;->bomAwareCharset(Lccsanokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 182
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-interface {v0, v1}, Lccsanokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lccsanokhttp3/ResponseBody$$ExternalSyntheticTwrCloseResource0;->m(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-object v2

    .line 180
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v1

    .end local v0    # "source":Lccsanokio/BufferedSource;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .restart local v0    # "source":Lccsanokio/BufferedSource;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lccsanokhttp3/ResponseBody$$ExternalSyntheticTwrCloseResource0;->m(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method
