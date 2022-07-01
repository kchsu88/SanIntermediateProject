.class Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcreteAnimationFactory"
.end annotation


# instance fields
.field private final animation:Lccsanandroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Lccsanandroid/view/animation/Animation;

    .line 56
    return-void
.end method


# virtual methods
.method public build()Lccsanandroid/view/animation/Animation;
    .locals 1

    .line 60
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Lccsanandroid/view/animation/Animation;

    return-object v0
.end method
