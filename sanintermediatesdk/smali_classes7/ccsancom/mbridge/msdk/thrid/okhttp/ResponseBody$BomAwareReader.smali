.class final Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BomAwareReader"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 246
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 247
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 248
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    .line 249
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->closed:Z

    .line 264
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->close()V

    .line 269
    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 4
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->closed:Z

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    .line 255
    .local v0, "delegate":Ljava/io/Reader;
    if-nez v0, :cond_0

    .line 256
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->bomAwareCharset(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 257
    .local v1, "charset":Ljava/nio/charset/Charset;
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v0, v2

    .line 259
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    return v1

    .line 252
    .end local v0    # "delegate":Ljava/io/Reader;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
