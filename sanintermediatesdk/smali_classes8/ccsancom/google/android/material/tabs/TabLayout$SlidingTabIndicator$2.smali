.class Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3191
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 3199
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput v1, v0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3200
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 3194
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput v1, v0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3195
    return-void
.end method
