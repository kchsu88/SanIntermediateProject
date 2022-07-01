.class Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


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

.field final synthetic val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

.field final synthetic val$icon:Lccsanandroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;Lccsancom/google/android/material/circularreveal/CircularRevealWidget;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    .line 353
    iput-object p1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;->this$0:Lccsancom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;->val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    iput-object p3, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;->val$icon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 362
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;->val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 363
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 357
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;->val$circularRevealChild:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;->val$icon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 358
    return-void
.end method
