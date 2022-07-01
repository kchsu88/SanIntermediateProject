.class interface abstract Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
.super Ljava/lang/Object;
.source "MotionStrategy.java"


# virtual methods
.method public abstract addAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
.end method

.method public abstract createAnimator()Lccsanandroid/animation/AnimatorSet;
.end method

.method public abstract getCurrentMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
.end method

.method public abstract getDefaultMotionSpecResource()I
.end method

.method public abstract getListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
.end method

.method public abstract onAnimationCancel()V
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart(Lccsanandroid/animation/Animator;)V
.end method

.method public abstract onChange(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
.end method

.method public abstract performNow()V
.end method

.method public abstract removeAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
.end method

.method public abstract setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
.end method

.method public abstract shouldCancel()Z
.end method
