.class public interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
.end method
