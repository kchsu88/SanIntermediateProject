.class public Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;
.super Lccsancom/bumptech/glide/load/model/StringLoader;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/model/StringLoader<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;",
        "Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 36
    const-class v0, Lccsanandroid/net/Uri;

    invoke-static {v0, p1}, Lccsancom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V

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
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "uriLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Lccsanandroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/model/StringLoader;-><init>(Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 41
    return-void
.end method
