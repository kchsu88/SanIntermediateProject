.class public abstract Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.super Ljava/lang/Object;
.source "BaseGlideUrlLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final concreteLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final modelCache:Lccsancom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelCache<",
            "TT;",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 26
    .local p0, "this":Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelCache;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelCache;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/ModelCache<",
            "TT;",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p2, "modelCache":Lccsancom/bumptech/glide/load/model/ModelCache;, "Lccsancom/bumptech/glide/load/model/ModelCache<TT;Lccsancom/bumptech/glide/load/model/GlideUrl;>;"
    const-class v0, Lccsancom/bumptech/glide/load/model/GlideUrl;

    const-class v1, Ljava/io/InputStream;

    invoke-static {v0, v1, p1}, Lccsancom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelCache;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "concreteLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsancom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelCache;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;",
            "Lccsancom/bumptech/glide/load/model/ModelCache<",
            "TT;",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "concreteLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsancom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    .local p2, "modelCache":Lccsancom/bumptech/glide/load/model/ModelCache;, "Lccsancom/bumptech/glide/load/model/ModelCache<TT;Lccsancom/bumptech/glide/load/model/GlideUrl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 39
    iput-object p2, p0, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lccsancom/bumptech/glide/load/model/ModelCache;

    .line 40
    return-void
.end method


# virtual methods
.method protected getHeaders(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/model/Headers;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lccsancom/bumptech/glide/load/model/Headers;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    sget-object v0, Lccsancom/bumptech/glide/load/model/Headers;->DEFAULT:Lccsancom/bumptech/glide/load/model/Headers;

    return-object v0
.end method

.method public getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 4
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 45
    .local v0, "result":Lccsancom/bumptech/glide/load/model/GlideUrl;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lccsancom/bumptech/glide/load/model/ModelCache;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, p1, p2, p3}, Lccsancom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lccsancom/bumptech/glide/load/model/GlideUrl;

    .line 49
    :cond_0
    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getUrl(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "stringURL":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v2, 0x0

    return-object v2

    .line 55
    :cond_1
    new-instance v2, Lccsancom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getHeaders(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/model/Headers;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lccsancom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lccsancom/bumptech/glide/load/model/Headers;)V

    move-object v0, v2

    .line 57
    iget-object v2, p0, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lccsancom/bumptech/glide/load/model/ModelCache;

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2, p1, p2, p3, v0}, Lccsancom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 62
    .end local v1    # "stringURL":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v1, v0, p2, p3}, Lccsancom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getUrl(Ljava/lang/Object;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
