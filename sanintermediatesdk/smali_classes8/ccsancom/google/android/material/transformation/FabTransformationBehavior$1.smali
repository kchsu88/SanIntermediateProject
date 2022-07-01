.class Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transformation/FabTransformationBehavior;->onCreateExpandedStateChangeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Lccsanandroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$child:Lccsanandroid/view/View;

.field final synthetic val$dependency:Lccsanandroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;ZLccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    .line 169
    iput-object p1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    iput-boolean p2, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    iput-object p3, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Lccsanandroid/view/View;

    iput-object p4, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 182
    iget-boolean v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Lccsanandroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 172
    iget-boolean v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 176
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Lccsanandroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    return-void
.end method
