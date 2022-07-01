.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;
.super Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V
    .locals 0
    .param p1, "contentTypeString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentLength"    # J
    .param p4, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 33
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;-><init>()V

    .line 34
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;->contentLength:J

    .line 36
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 37
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    .locals 1

    .line 40
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->parse(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .locals 1

    .line 48
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    return-object v0
.end method
