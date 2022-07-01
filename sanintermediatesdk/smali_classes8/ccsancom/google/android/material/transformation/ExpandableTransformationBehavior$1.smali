.class Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ExpandableTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;

    .line 83
    iput-object p1, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior$1;->this$0:Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 86
    iget-object v0, p0, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior$1;->this$0:Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;->access$002(Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;Lccsanandroid/animation/AnimatorSet;)Lccsanandroid/animation/AnimatorSet;

    .line 87
    return-void
.end method
