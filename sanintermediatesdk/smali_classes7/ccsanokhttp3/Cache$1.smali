.class Lccsanokhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lccsanokhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/Cache;


# direct methods
.method constructor <init>(Lccsanokhttp3/Cache;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/Cache;

    .line 143
    iput-object p1, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;
    .locals 1
    .param p1, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 145
    iget-object v0, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Cache;->get(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/cache/CacheRequest;
    .locals 1
    .param p1, "response"    # Lccsanokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 149
    iget-object v0, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Cache;->put(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lccsanokhttp3/Request;)V
    .locals 1
    .param p1, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Cache;->remove(Lccsanokhttp3/Request;)V

    .line 154
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .line 161
    iget-object v0, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-virtual {v0}, Lccsanokhttp3/Cache;->trackConditionalCacheHit()V

    .line 162
    return-void
.end method

.method public trackResponse(Lccsanokhttp3/internal/cache/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lccsanokhttp3/internal/cache/CacheStrategy;

    .line 165
    iget-object v0, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Cache;->trackResponse(Lccsanokhttp3/internal/cache/CacheStrategy;)V

    .line 166
    return-void
.end method

.method public update(Lccsanokhttp3/Response;Lccsanokhttp3/Response;)V
    .locals 1
    .param p1, "cached"    # Lccsanokhttp3/Response;
    .param p2, "network"    # Lccsanokhttp3/Response;

    .line 157
    iget-object v0, p0, Lccsanokhttp3/Cache$1;->this$0:Lccsanokhttp3/Cache;

    invoke-virtual {v0, p1, p2}, Lccsanokhttp3/Cache;->update(Lccsanokhttp3/Response;Lccsanokhttp3/Response;)V

    .line 158
    return-void
.end method
