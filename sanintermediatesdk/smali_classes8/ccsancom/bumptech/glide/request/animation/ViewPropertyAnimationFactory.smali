.class public Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "ViewPropertyAnimationFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
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
.field private animation:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .locals 0
    .param p1, "animator"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 12
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 14
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

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory<TR;>;"
    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;

    iget-object v1, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;-><init>(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;

    .line 32
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;

    return-object v0

    .line 26
    :cond_2
    :goto_0
    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->get()Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0
.end method
