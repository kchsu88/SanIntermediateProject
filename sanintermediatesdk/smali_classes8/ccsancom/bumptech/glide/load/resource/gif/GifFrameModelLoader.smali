.class Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/model/ModelLoader<",
        "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
        "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "model"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "II)",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;-><init>(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;)V

    return-object v0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 8
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader;->getResourceFetcher(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;II)Lccsancom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
