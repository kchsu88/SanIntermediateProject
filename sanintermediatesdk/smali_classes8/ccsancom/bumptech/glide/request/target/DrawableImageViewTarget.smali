.class public Lccsancom/bumptech/glide/request/target/DrawableImageViewTarget;
.super Lccsancom/bumptech/glide/request/target/ImageViewTarget;
.source "DrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/ImageViewTarget<",
        "Lccsanandroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/ImageView;

    .line 11
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/target/ImageViewTarget;-><init>(Lccsanandroid/widget/ImageView;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected setResource(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "resource"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 16
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/DrawableImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 17
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 9
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/target/DrawableImageViewTarget;->setResource(Lccsanandroid/graphics/drawable/Drawable;)V

    return-void
.end method
