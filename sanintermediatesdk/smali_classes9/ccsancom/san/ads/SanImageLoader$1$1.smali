.class Lccsancom/san/ads/SanImageLoader$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/SanImageLoader$1;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/RequestListener<",
        "Ljava/lang/String;",
        "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/ads/SanImageLoader$1;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SanImageLoader$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/SanImageLoader$1$1;->getDownloadingList:Lccsancom/san/ads/SanImageLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lccsancom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/san/ads/SanImageLoader$1$1;->onException(Ljava/lang/Exception;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    return p1
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lccsancom/san/ads/SanImageLoader$1$1;->getDownloadingList:Lccsancom/san/ads/SanImageLoader$1;

    iget-object p1, p1, Lccsancom/san/ads/SanImageLoader$1;->removeDownloadListener:Lccsancom/san/ads/SanImageLoader$OnLoadedListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lccsancom/san/ads/SanImageLoader$OnLoadedListener;->onImageLoadResult(Z)V

    :cond_0
    return p2
.end method

.method public onResourceReady(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/String;",
            "Lccsancom/bumptech/glide/request/target/Target<",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lccsancom/san/ads/SanImageLoader$1$1;->getDownloadingList:Lccsancom/san/ads/SanImageLoader$1;

    iget-object p1, p1, Lccsancom/san/ads/SanImageLoader$1;->removeDownloadListener:Lccsancom/san/ads/SanImageLoader$OnLoadedListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2}, Lccsancom/san/ads/SanImageLoader$OnLoadedListener;->onImageLoadResult(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/san/ads/SanImageLoader$1$1;->onResourceReady(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
