.class Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;
.super Lccsanandroid/view/animation/AnimationSet;
.source "FragmentManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Lccsanandroid/view/View;

.field private mEnded:Z

.field private final mParent:Lccsanandroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Lccsanandroid/view/animation/Animation;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;
    .param p2, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p3, "child"    # Lccsanandroid/view/View;

    .line 3433
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3434
    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Lccsanandroid/view/ViewGroup;

    .line 3435
    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mChild:Lccsanandroid/view/View;

    .line 3436
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->addAnimation(Lccsanandroid/view/animation/Animation;)V

    .line 3439
    invoke-virtual {p2, p0}, Lccsanandroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3440
    return-void
.end method


# virtual methods
.method public getTransformation(JLccsanandroid/view/animation/Transformation;)Z
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "t"    # Lccsanandroid/view/animation/Transformation;

    .line 3444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3445
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_0

    .line 3446
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 3448
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/view/animation/AnimationSet;->getTransformation(JLccsanandroid/view/animation/Transformation;)Z

    move-result v1

    .line 3449
    .local v1, "more":Z
    if-nez v1, :cond_1

    .line 3450
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    .line 3451
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v2, p0}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 3453
    :cond_1
    return v0
.end method

.method public getTransformation(JLccsanandroid/view/animation/Transformation;F)Z
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Lccsanandroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 3459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3460
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_0

    .line 3461
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 3463
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/view/animation/AnimationSet;->getTransformation(JLccsanandroid/view/animation/Transformation;F)Z

    move-result v1

    .line 3464
    .local v1, "more":Z
    if-nez v1, :cond_1

    .line 3465
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    .line 3466
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v2, p0}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 3468
    :cond_1
    return v0
.end method

.method public run()V
    .locals 2

    .line 3473
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 3474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3476
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3478
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mChild:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->endViewTransition(Lccsanandroid/view/View;)V

    .line 3479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    .line 3481
    :goto_0
    return-void
.end method
