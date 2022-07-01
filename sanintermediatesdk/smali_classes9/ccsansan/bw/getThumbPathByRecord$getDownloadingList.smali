.class final Lccsansan/bw/getThumbPathByRecord$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bw/getThumbPathByRecord;->getDownloadingList(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z
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
    const-string p1, "SourceXzUtils"

    const-string p2, "#hasXzImageWithGlide true"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lccsancom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsansan/bw/getThumbPathByRecord$getDownloadingList;->removeDownloadListener(Ljava/lang/Exception;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z
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

    invoke-virtual/range {v0 .. v5}, Lccsansan/bw/getThumbPathByRecord$getDownloadingList;->IncentiveDownloadUtils(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method

.method public removeDownloadListener(Ljava/lang/Exception;Ljava/lang/String;Lccsancom/bumptech/glide/request/target/Target;Z)Z
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

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "#hasXzImageWithGlide onException e "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SourceXzUtils"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
