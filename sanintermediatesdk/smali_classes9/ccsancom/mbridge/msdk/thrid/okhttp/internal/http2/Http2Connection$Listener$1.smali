.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener$1;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;->REFUSED_STREAM:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->close(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V

    .line 1004
    return-void
.end method
