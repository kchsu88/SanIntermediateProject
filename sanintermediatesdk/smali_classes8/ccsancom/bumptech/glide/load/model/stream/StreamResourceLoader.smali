.class public Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader;
.super Lccsancom/bumptech/glide/load/model/ResourceLoader;
.source "StreamResourceLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/ResourceLoader<",
        "Ljava/io/InputStream;",
        ">;",
        "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 36
    const-class v0, Lccsanandroid/net/Uri;

    invoke-static {v0, p1}, Lccsancom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/stream/StreamResourceLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/model/ResourceLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 41
    return-void
.end method
