.class public Lccsancom/bumptech/glide/load/model/stream/StreamFileLoader;
.super Lccsancom/bumptech/glide/load/model/FileLoader;
.source "StreamFileLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/FileLoader<",
        "Ljava/io/InputStream;",
        ">;",
        "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "Ljava/io/File;",
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

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/model/stream/StreamFileLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsanandroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/model/FileLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 41
    return-void
.end method
