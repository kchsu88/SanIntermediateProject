.class public Lccsancom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "GifDrawableBytesTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    .line 15
    .local p1, "toTranscode":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 16
    .local v0, "gifData":Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bytes/BytesResource;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/load/resource/bytes/BytesResource;-><init>([B)V

    return-object v1
.end method
