.class public Lccsancom/bumptech/glide/request/target/BitmapImageViewTarget;
.super Lccsancom/bumptech/glide/request/target/ImageViewTarget;
.source "BitmapImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/ImageViewTarget<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/ImageView;

    .line 14
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/target/ImageViewTarget;-><init>(Lccsanandroid/widget/ImageView;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected setResource(Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "resource"    # Lccsanandroid/graphics/Bitmap;

    .line 25
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/BitmapImageViewTarget;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 12
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/target/BitmapImageViewTarget;->setResource(Lccsanandroid/graphics/Bitmap;)V

    return-void
.end method
