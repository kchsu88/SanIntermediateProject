.class public Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
.super Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.source "BitmapCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 21
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "defaultAnimationId"    # I
    .param p3, "duration"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsanandroid/content/Context;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/animation/Animation;I)V
    .locals 0
    .param p1, "defaultAnimation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "duration"    # I

    .line 29
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsanandroid/view/animation/Animation;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "realFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<Lccsanandroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 0
    .param p1, "current"    # Lccsanandroid/graphics/Bitmap;

    .line 38
    return-object p1
.end method

.method protected bridge synthetic getBitmap(Ljava/lang/Object;)Lccsanandroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 15
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/animation/BitmapCrossFadeFactory;->getBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
