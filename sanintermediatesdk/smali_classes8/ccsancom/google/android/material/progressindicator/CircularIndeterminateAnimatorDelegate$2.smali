.class Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 107
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 110
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Lccsanandroid/animation/Animator;)V

    .line 111
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-virtual {v0}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 112
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget-object v1, v1, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, v1}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method
