.class Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifHeaderParserPool"
.end annotation


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain([B)Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 2
    .param p1, "data"    # [B

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 140
    .local v0, "result":Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    if-nez v0, :cond_0

    .line 141
    new-instance v1, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v1}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    move-object v0, v1

    .line 143
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    :cond_0
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 138
    .end local v0    # "result":Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    .end local p1    # "data":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;)V
    .locals 1
    .param p1, "parser"    # Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->clear()V

    .line 148
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 146
    .end local p0    # "this":Lccsancom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
    .end local p1    # "parser":Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
