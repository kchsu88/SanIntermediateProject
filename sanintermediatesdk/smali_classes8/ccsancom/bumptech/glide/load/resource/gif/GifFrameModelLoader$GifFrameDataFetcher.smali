.class Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrameDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/data/DataFetcher<",
        "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 40
    return-void
.end method

.method public cleanup()V
    .locals 0

    .line 30
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 1
    .param p1, "priority"    # Lccsancom/bumptech/glide/Priority;

    .line 24
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->decoder:Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    return-object v0
.end method

.method public bridge synthetic loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v0

    return-object v0
.end method
