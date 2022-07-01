.class Lccsancom/google/android/material/internal/StateListAnimator$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/StateListAnimator;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/StateListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/StateListAnimator;

    .line 45
    iput-object p1, p0, Lccsancom/google/android/material/internal/StateListAnimator$1;->this$0:Lccsancom/google/android/material/internal/StateListAnimator;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 48
    iget-object v0, p0, Lccsancom/google/android/material/internal/StateListAnimator$1;->this$0:Lccsancom/google/android/material/internal/StateListAnimator;

    iget-object v0, v0, Lccsancom/google/android/material/internal/StateListAnimator;->runningAnimator:Lccsanandroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    .line 49
    iget-object v0, p0, Lccsancom/google/android/material/internal/StateListAnimator$1;->this$0:Lccsancom/google/android/material/internal/StateListAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/google/android/material/internal/StateListAnimator;->runningAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 51
    :cond_0
    return-void
.end method
