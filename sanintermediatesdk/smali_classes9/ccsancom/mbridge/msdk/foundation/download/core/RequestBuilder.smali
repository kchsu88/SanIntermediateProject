.class public interface abstract Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withDirectoryPathExternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withDirectoryPathInternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withDownloadPriority(Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withDownloadStateListener(Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withProgressStateListener(Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withUserAgent(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withWriteTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end method
