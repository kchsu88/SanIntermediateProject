.class Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageVideoFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/data/DataFetcher<",
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final streamFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/load/data/DataFetcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "streamFetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
    .local p2, "fileDescriptorFetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<Lccsanandroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    .line 60
    iput-object p2, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 119
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 122
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 125
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 99
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 102
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 105
    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    .locals 5
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    const/4 v2, 0x2

    const-string v3, "IVML"

    if-eqz v1, :cond_2

    .line 70
    :try_start_0
    invoke-interface {v1, p1}, Lccsancom/bumptech/glide/load/data/DataFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const-string v4, "Exception fetching input stream, trying ParcelFileDescriptor"

    invoke-static {v3, v4, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_0
    iget-object v4, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v4, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    throw v1

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 81
    .local v1, "fileDescriptor":Lccsanandroid/os/ParcelFileDescriptor;
    iget-object v4, p0, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    if-eqz v4, :cond_5

    .line 83
    :try_start_1
    invoke-interface {v4, p1}, Lccsancom/bumptech/glide/load/data/DataFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    .line 91
    goto :goto_1

    .line 84
    :catch_1
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    const-string v2, "Exception fetching ParcelFileDescriptor"

    invoke-static {v3, v2, v4}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    .line 89
    :cond_4
    throw v4

    .line 93
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    new-instance v2, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-direct {v2, v0, v1}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Lccsanandroid/os/ParcelFileDescriptor;)V

    return-object v2
.end method

.method public bridge synthetic loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    move-result-object v0

    return-object v0
.end method
