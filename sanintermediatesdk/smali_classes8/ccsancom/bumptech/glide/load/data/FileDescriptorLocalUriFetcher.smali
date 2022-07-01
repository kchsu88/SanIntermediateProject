.class public Lccsancom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;
.super Lccsancom/bumptech/glide/load/data/LocalUriFetcher;
.source "FileDescriptorLocalUriFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/data/LocalUriFetcher<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;

    .line 16
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/data/LocalUriFetcher;-><init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected close(Lccsanandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "data"    # Lccsanandroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lccsanandroid/os/ParcelFileDescriptor;->close()V

    .line 27
    return-void
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;->close(Lccsanandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method protected loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Lccsanandroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "contentResolver"    # Lccsanandroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 21
    const-string v0, "r"

    invoke-virtual {p2, p1, v0}, Lccsanandroid/content/ContentResolver;->openAssetFileDescriptor(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/net/Uri;
    .param p2, "x1"    # Lccsanandroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;->loadResource(Lccsanandroid/net/Uri;Lccsanandroid/content/ContentResolver;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
