.class Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "DrawableWithAnimatedVisibilityChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setShowAnimator(Lccsanandroid/animation/ValueAnimator;)V
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

    .line 345
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;->this$0:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 348
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationStart(Lccsanandroid/animation/Animator;)V

    .line 350
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;->this$0:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->access$000(Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    .line 351
    return-void
.end method
