.class public Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;
.super Ljava/lang/Object;
.source "FileDescriptorResourceLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "factories"    # Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;

    const-class v1, Lccsanandroid/net/Uri;

    const-class v2, Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lccsancom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    .line 33
    return-void
.end method
