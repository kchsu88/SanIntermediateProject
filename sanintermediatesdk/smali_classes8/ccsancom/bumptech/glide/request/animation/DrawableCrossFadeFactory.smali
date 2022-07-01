.class public Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lccsanandroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private final animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final duration:I

.field private firstResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private secondResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    new-instance v1, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;

    invoke-direct {v1, p1}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;-><init>(I)V

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    invoke-direct {p0, v0, p1}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "defaultAnimationId"    # I
    .param p3, "duration"    # I

    .line 38
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsanandroid/content/Context;I)V

    invoke-direct {p0, v0, p3}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/animation/Animation;I)V
    .locals 1
    .param p1, "defaultAnimation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "duration"    # I

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lccsanandroid/view/animation/Animation;)V

    invoke-direct {p0, v0, p2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 43
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
    .locals 0
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<",
            "TT;>;I)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    .local p1, "animationFactory":Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    .line 47
    iput p2, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    .line 48
    return-void
.end method

.method private getFirstResourceAnimation()Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 65
    .local v0, "defaultAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    new-instance v1, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v1, v0, v2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 67
    .end local v0    # "defaultAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object v0
.end method

.method private getSecondResourceAnimation()Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 74
    .local v0, "defaultAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    new-instance v1, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v1, v0, v2}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lccsancom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 76
    .end local v0    # "defaultAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object v0
.end method


# virtual methods
.method public build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .locals 1
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->get()Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->getFirstResourceAnimation()Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->getSecondResourceAnimation()Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0
.end method
