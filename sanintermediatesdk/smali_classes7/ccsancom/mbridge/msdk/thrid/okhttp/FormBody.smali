.class public final Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;
.super Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/FormBody$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->get(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->CONTENT_TYPE:Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "encodedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "encodedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;-><init>()V

    .line 37
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedNames:Ljava/util/List;

    .line 38
    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedValues:Ljava/util/List;

    .line 39
    return-void
.end method

.method private writeOrCountBytes(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Z)J
    .locals 6
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "countBytes"    # Z

    .line 81
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "byteCount":J
    if-eqz p2, :cond_0

    .line 85
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    .local v2, "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    goto :goto_0

    .line 87
    .end local v2    # "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    :cond_0
    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v2

    .line 90
    .restart local v2    # "buffer":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 91
    if-lez v3, :cond_1

    const/16 v5, 0x26

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 92
    :cond_1
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 93
    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 94
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v0

    .line 99
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->clear()V

    .line 102
    :cond_3
    return-wide v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->writeOrCountBytes(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    .locals 1

    .line 63
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->CONTENT_TYPE:Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    return-object v0
.end method

.method public encodedName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public encodedValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 51
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 43
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 59
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/FormBody;->writeOrCountBytes(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Z)J

    .line 72
    return-void
.end method
