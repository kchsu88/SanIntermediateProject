.class Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "DrawableWithAnimatedVisibilityChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setHideAnimator(Lccsanandroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 376
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;->this$0:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 379
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Lccsanandroid/animation/Animator;)V

    .line 381
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;->this$0:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->access$101(Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;ZZ)Z

    .line 383
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;->this$0:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->access$200(Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    .line 384
    return-void
.end method
