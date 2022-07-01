.class public abstract Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final realFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 27
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "defaultAnimationId"    # I
    .param p3, "duration"    # I

    .line 31
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/content/Context;II)V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/animation/Animation;I)V
    .locals 1
    .param p1, "defaultAnimation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "duration"    # I

    .line 35
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsanandroid/view/animation/Animation;I)V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    .line 36
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

    .line 38
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    .local p1, "realFactory":Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<Lccsanandroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 40
    return-void
.end method


# virtual methods
.method public build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .locals 2
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-interface {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 45
    .local v0, "transition":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<Lccsanandroid/graphics/drawable/Drawable;>;"
    new-instance v1, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;

    invoke-direct {v1, p0, v0}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;-><init>(Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    return-object v1
.end method

.method protected abstract getBitmap(Ljava/lang/Object;)Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsanandroid/graphics/Bitmap;"
        }
    .end annotation
.end method
