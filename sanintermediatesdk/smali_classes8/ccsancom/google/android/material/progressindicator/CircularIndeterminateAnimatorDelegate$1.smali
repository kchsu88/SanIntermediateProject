.class Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;
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

    .line 92
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 95
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Lccsanandroid/animation/Animator;)V

    .line 96
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 97
    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$000(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-static {v2}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$100(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v2

    iget-object v2, v2, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 96
    invoke-static {v0, v1}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$002(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;I)I

    .line 98
    return-void
.end method
