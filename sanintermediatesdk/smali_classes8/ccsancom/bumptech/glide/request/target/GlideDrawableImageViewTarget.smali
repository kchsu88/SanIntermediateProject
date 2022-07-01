.class public Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.super Lccsancom/bumptech/glide/request/target/ImageViewTarget;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/ImageViewTarget<",
        "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final SQUARE_RATIO_MARGIN:F = 0.05f


# instance fields
.field private maxLoopCount:I

.field private resource:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/widget/ImageView;

    .line 24
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Lccsanandroid/widget/ImageView;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lccsanandroid/widget/ImageView;I)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/ImageView;
    .param p2, "maxLoopCount"    # I

    .line 37
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/target/ImageViewTarget;-><init>(Lccsanandroid/widget/ImageView;)V

    .line 38
    iput p2, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    .line 39
    return-void
.end method


# virtual methods
.method public onResourceReady(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 5
    .param p1, "resource"    # Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "animation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v1, Lccsanandroid/widget/ImageView;

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 60
    .local v0, "viewRatio":F
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 61
    .local v1, "drawableRatio":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    .line 63
    new-instance v2, Lccsancom/bumptech/glide/request/target/SquaringDrawable;

    iget-object v3, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v3, Lccsanandroid/widget/ImageView;

    invoke-virtual {v3}, Lccsanandroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lccsancom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V

    move-object p1, v2

    .line 66
    .end local v0    # "viewRatio":F
    .end local v1    # "drawableRatio":F
    :cond_0
    invoke-super {p0, p1, p2}, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 67
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 68
    iget v0, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->maxLoopCount:I

    invoke-virtual {p1, v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    .line 69
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 70
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 12
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 85
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 88
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->resource:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    .line 95
    :cond_0
    return-void
.end method

.method protected setResource(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
    .locals 1
    .param p1, "resource"    # Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 80
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 12
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->setResource(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;)V

    return-void
.end method
