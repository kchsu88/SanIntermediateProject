.class public Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/model/ModelLoaderFactory<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "factories"    # Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader;-><init>()V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    .line 51
    return-void
.end method
