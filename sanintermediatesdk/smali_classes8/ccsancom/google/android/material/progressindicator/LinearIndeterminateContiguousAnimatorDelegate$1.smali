.class Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    .line 80
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 83
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Lccsanandroid/animation/Animator;)V

    .line 84
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    .line 85
    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$000(Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {v3}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$100(Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v3

    iget-object v3, v3, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    .line 84
    invoke-static {v0, v1}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$002(Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;I)I

    .line 86
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {v0, v2}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->access$202(Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;Z)Z

    .line 87
    return-void
.end method
