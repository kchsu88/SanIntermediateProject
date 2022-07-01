.class final Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FadeThroughProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Lccsanandroid/view/View;FFFFF)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$originalAlpha:F

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;F)V
    .locals 0

    .line 88
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;->val$view:Lccsanandroid/view/View;

    iput p2, p0, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;->val$originalAlpha:F

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 92
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;->val$view:Lccsanandroid/view/View;

    iget v1, p0, Lccsancom/google/android/material/transition/platform/FadeThroughProvider$2;->val$originalAlpha:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 93
    return-void
.end method
