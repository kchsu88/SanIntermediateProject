.class public Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
.super Ljava/lang/Object;
.source "DrawableCrossFadeViewAnimation.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lccsanandroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final duration:I


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/request/animation/GlideAnimation;I)V
    .locals 0
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;I)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    .local p1, "defaultAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 26
    iput p2, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    .line 27
    return-void
.end method


# virtual methods
.method public animate(Lccsanandroid/graphics/drawable/Drawable;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 4
    .param p2, "adapter"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    .local p1, "current":Lccsanandroid/graphics/drawable/Drawable;, "TT;"
    invoke-interface {p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getCurrentDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, "previous":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    new-instance v2, Lccsanandroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-direct {v2, v3}, Lccsanandroid/graphics/drawable/TransitionDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    .line 47
    .local v2, "transitionDrawable":Lccsanandroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v2, v1}, Lccsanandroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 48
    iget v3, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 49
    invoke-interface {p2, v2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->setDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 50
    return v1

    .line 52
    .end local v2    # "transitionDrawable":Lccsanandroid/graphics/drawable/TransitionDrawable;
    :cond_0
    iget-object v2, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    invoke-interface {v2, p1, p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    .line 53
    return v1
.end method

.method public bridge synthetic animate(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;

    .line 14
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->animate(Lccsanandroid/graphics/drawable/Drawable;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v0

    return v0
.end method
