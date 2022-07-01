.class public Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;,
        Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

.field private glideAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "animationId"    # I

    .line 22
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;-><init>(Lccsanandroid/content/Context;I)V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 18
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;-><init>(Lccsanandroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    .line 19
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .locals 0
    .param p1, "animationFactory"    # Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .line 27
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
            "TR;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<TR;>;"
    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimation;

    iget-object v1, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/request/animation/ViewAnimation;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 48
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    return-object v0

    .line 41
    :cond_2
    :goto_0
    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->get()Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0
.end method
