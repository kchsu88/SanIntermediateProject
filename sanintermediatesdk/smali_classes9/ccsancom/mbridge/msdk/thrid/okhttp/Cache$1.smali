.class Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    .line 143
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 1
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;
    .locals 1
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->put(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 1
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->remove(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V

    .line 154
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->trackConditionalCacheHit()V

    .line 162
    return-void
.end method

.method public trackResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->trackResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;)V

    .line 166
    return-void
.end method

.method public update(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 1
    .param p1, "cached"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .param p2, "network"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->update(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 158
    return-void
.end method
