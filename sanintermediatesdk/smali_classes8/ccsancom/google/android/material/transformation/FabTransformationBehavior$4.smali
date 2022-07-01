.class Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

.field final synthetic val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    .line 405
    iput-object p1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;->this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;->val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 410
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;->val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-interface {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    .line 411
    .local v0, "revealInfo":Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 412
    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;->val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-interface {v1, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 413
    return-void
.end method
