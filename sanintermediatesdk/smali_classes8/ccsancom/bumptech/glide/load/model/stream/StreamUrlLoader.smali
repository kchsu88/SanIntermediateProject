.class public Lccsancom/bumptech/glide/load/model/stream/StreamUrlLoader;
.super Lccsancom/bumptech/glide/load/model/UrlLoader;
.source "StreamUrlLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/UrlLoader<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Lccsancom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "glideUrlLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsancom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/model/UrlLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 38
    return-void
.end method
