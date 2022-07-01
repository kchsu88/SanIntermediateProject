.class public Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;
.super Lccsancom/bumptech/glide/load/model/ResourceLoader;
.source "FileDescriptorResourceLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/ResourceLoader<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;",
        "Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 37
    const-class v0, Lccsanandroid/net/Uri;

    invoke-static {v0, p1}, Lccsancom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 38
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
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Lccsanandroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/model/ResourceLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 42
    return-void
.end method
