.class interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader$Handler;
.super Ljava/lang/Object;
.source "Http2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILccsancom/mbridge/msdk/thrid/okio/BufferedSource;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract goAway(ILccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
.end method

.method public abstract headers(ZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rstStream(ILccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V
.end method

.method public abstract settings(ZLccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
