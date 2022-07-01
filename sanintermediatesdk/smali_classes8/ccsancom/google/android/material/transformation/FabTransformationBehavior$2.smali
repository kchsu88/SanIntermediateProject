.class Lccsancom/google/android/material/transformation/FabTransformationBehavior$2;
.super Ljava/lang/Object;
.source "FabTransformationBehavior.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$child:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    .line 342
    iput-object p1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$2;->this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$2;->val$child:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/ValueAnimator;

    .line 345
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$2;->val$child:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 346
    return-void
.end method
