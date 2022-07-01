.class public Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;
.super Ljava/lang/Object;
.source "ViewPropertyAnimation.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final animator:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .locals 0
    .param p1, "animator"    # Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 23
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;, "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;->animator:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 25
    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 3
    .param p2, "adapter"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .line 38
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;, "Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation<TR;>;"
    .local p1, "current":Ljava/lang/Object;, "TR;"
    invoke-interface {p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Lccsanandroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation;->animator:Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-interface {p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Lccsanandroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;->animate(Lccsanandroid/view/View;)V

    .line 42
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
