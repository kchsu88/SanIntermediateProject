.class Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;
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
    name = "ResourceAnimationFactory"
.end annotation


# instance fields
.field private final animationId:I

.field private final context:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "animationId"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->context:Lccsanandroid/content/Context;

    .line 70
    iput p2, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->animationId:I

    .line 71
    return-void
.end method


# virtual methods
.method public build()Lccsanandroid/view/animation/Animation;
    .locals 2

    .line 75
    iget-object v0, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->context:Lccsanandroid/content/Context;

    iget v1, p0, Lccsancom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;->animationId:I

    invoke-static {v0, v1}, Lccsanandroid/view/animation/AnimationUtils;->loadAnimation(Lccsanandroid/content/Context;I)Lccsanandroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
