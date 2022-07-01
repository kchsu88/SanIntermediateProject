.class public abstract Lccsancom/bumptech/glide/request/target/ImageViewTarget;
.super Lccsancom/bumptech/glide/request/target/ViewTarget;
.source "ImageViewTarget.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/request/target/ViewTarget<",
        "Lccsanandroid/widget/ImageView;",
        "TZ;>;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/ImageView;

    .line 17
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/target/ViewTarget;-><init>(Lccsanandroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCurrentDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 26
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onLoadCleared(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 70
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 59
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p2}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public onLoadStarted(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 48
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lccsancom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->setResource(Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method

.method public setDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 37
    .local p0, "this":Lccsancom/bumptech/glide/request/target/ImageViewTarget;, "Lccsancom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method protected abstract setResource(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
