.class Lccsancom/bumptech/glide/Glide$ClearTarget;
.super Lccsancom/bumptech/glide/request/target/ViewTarget;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/Glide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/ViewTarget<",
        "Lccsanandroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 711
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/target/ViewTarget;-><init>(Lccsanandroid/view/View;)V

    .line 712
    return-void
.end method


# virtual methods
.method public onLoadCleared(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 732
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 722
    return-void
.end method

.method public onLoadStarted(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 717
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-Ljava/lang/Object;>;"
    return-void
.end method
