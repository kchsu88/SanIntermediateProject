.class Lccsanandroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Lccsanandroid/view/animation/Animation;

.field public final animator:Lccsanandroid/animation/Animator;


# direct methods
.method constructor <init>(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 3409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3410
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Lccsanandroid/view/animation/Animation;

    .line 3411
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Lccsanandroid/animation/Animator;

    .line 3412
    if-eqz p1, :cond_0

    .line 3415
    return-void

    .line 3413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lccsanandroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 3401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3402
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Lccsanandroid/view/animation/Animation;

    .line 3403
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Lccsanandroid/animation/Animator;

    .line 3404
    if-eqz p1, :cond_0

    .line 3407
    return-void

    .line 3405
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
