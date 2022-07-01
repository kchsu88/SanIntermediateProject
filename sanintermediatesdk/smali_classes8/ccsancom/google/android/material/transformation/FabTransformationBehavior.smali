.class public abstract Lccsancom/google/android/material/transformation/FabTransformationBehavior;
.super Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dependencyOriginalTranslationX:F

.field private dependencyOriginalTranslationY:F

.field private final tmpArray:[I

.field private final tmpRect:Lccsanandroid/graphics/Rect;

.field private final tmpRectF1:Lccsanandroid/graphics/RectF;

.field private final tmpRectF2:Lccsanandroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 79
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 80
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 81
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 89
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 92
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 80
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 81
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 93
    return-void
.end method

.method private calculateChildContentContainer(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 710
    sget v0, Lccsancom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 711
    .local v0, "childContentContainer":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 712
    invoke-direct {p0, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 716
    :cond_0
    instance-of v1, p1, Lccsancom/google/android/material/transformation/TransformationChildLayout;

    if-nez v1, :cond_2

    instance-of v1, p1, Lccsancom/google/android/material/transformation/TransformationChildCard;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 722
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 717
    :cond_2
    :goto_0
    move-object v1, p1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 718
    invoke-direct {p0, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Lccsanandroid/view/View;Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;FFFFLccsanandroid/graphics/RectF;)V
    .locals 5
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p3, "translationXTiming"    # Lccsancom/google/android/material/animation/MotionTiming;
    .param p4, "translationYTiming"    # Lccsancom/google/android/material/animation/MotionTiming;
    .param p5, "fromX"    # F
    .param p6, "fromY"    # F
    .param p7, "toX"    # F
    .param p8, "toY"    # F
    .param p9, "childBounds"    # Lccsanandroid/graphics/RectF;

    .line 668
    nop

    .line 669
    invoke-direct {p0, p2, p3, p5, p7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lccsancom/google/android/material/animation/MotionTiming;FF)F

    move-result v0

    .line 670
    .local v0, "translationX":F
    nop

    .line 671
    invoke-direct {p0, p2, p4, p6, p8}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lccsancom/google/android/material/animation/MotionTiming;FF)F

    move-result v1

    .line 674
    .local v1, "translationY":F
    iget-object v2, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 675
    .local v2, "window":Lccsanandroid/graphics/Rect;
    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->getWindowVisibleDisplayFrame(Lccsanandroid/graphics/Rect;)V

    .line 676
    iget-object v3, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 677
    .local v3, "windowF":Lccsanandroid/graphics/RectF;
    invoke-virtual {v3, v2}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 680
    iget-object v4, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 681
    .local v4, "childVisibleBounds":Lccsanandroid/graphics/RectF;
    invoke-direct {p0, p1, v4}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 682
    invoke-virtual {v4, v0, v1}, Lccsanandroid/graphics/RectF;->offset(FF)V

    .line 683
    invoke-virtual {v4, v3}, Lccsanandroid/graphics/RectF;->intersect(Lccsanandroid/graphics/RectF;)Z

    .line 685
    invoke-virtual {p9, v4}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/RectF;)V

    .line 686
    return-void
.end method

.method private calculateDependencyWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "rect"    # Lccsanandroid/graphics/RectF;

    .line 626
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 627
    iget v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {p2, v0, v1}, Lccsanandroid/graphics/RectF;->offset(FF)V

    .line 628
    return-void
.end method

.method private calculateMotionTiming(FFZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Lccsanandroid/util/Pair;
    .locals 3
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "expanded"    # Z
    .param p4, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Lccsancom/google/android/material/animation/MotionTiming;",
            "Lccsancom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_4

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    if-eqz p3, :cond_1

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    :cond_1
    if-nez p3, :cond_3

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 548
    :cond_2
    iget-object v0, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string/jumbo v1, "translationXCurveUpwards"

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v0

    .line 549
    .local v0, "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    iget-object v1, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string/jumbo v2, "translationYCurveUpwards"

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .local v1, "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    goto :goto_1

    .line 552
    .end local v0    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v1    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    :cond_3
    iget-object v0, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string/jumbo v1, "translationXCurveDownwards"

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v0

    .line 553
    .restart local v0    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    iget-object v1, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string/jumbo v2, "translationYCurveDownwards"

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .restart local v1    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    goto :goto_1

    .line 544
    .end local v0    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v1    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    :cond_4
    :goto_0
    iget-object v0, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string/jumbo v1, "translationXLinear"

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v0

    .line 545
    .restart local v0    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    iget-object v1, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string/jumbo v2, "translationYLinear"

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .line 556
    .restart local v1    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    :goto_1
    new-instance v2, Lccsanandroid/util/Pair;

    invoke-direct {v2, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private calculateRevealCenterX(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "positioning"    # Lccsancom/google/android/material/animation/Positioning;

    .line 632
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 633
    .local v0, "dependencyBounds":Lccsanandroid/graphics/RectF;
    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 635
    .local v1, "childBounds":Lccsanandroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 636
    invoke-direct {p0, p2, v1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 638
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v2

    .line 639
    .local v2, "translationX":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lccsanandroid/graphics/RectF;->offset(FF)V

    .line 641
    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v1, Lccsanandroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateRevealCenterY(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "positioning"    # Lccsancom/google/android/material/animation/Positioning;

    .line 646
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 647
    .local v0, "dependencyBounds":Lccsanandroid/graphics/RectF;
    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 649
    .local v1, "childBounds":Lccsanandroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 650
    invoke-direct {p0, p2, v1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 652
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v2

    .line 653
    .local v2, "translationY":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lccsanandroid/graphics/RectF;->offset(FF)V

    .line 655
    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v1, Lccsanandroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateTranslationX(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "positioning"    # Lccsancom/google/android/material/animation/Positioning;

    .line 561
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 562
    .local v0, "dependencyBounds":Lccsanandroid/graphics/RectF;
    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 564
    .local v1, "childBounds":Lccsanandroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 565
    invoke-direct {p0, p2, v1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "translationX":F
    iget v3, p3, Lccsancom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 576
    :pswitch_1
    iget v3, v1, Lccsanandroid/graphics/RectF;->right:F

    iget v4, v0, Lccsanandroid/graphics/RectF;->right:F

    sub-float v2, v3, v4

    .line 577
    goto :goto_0

    .line 570
    :pswitch_2
    iget v3, v1, Lccsanandroid/graphics/RectF;->left:F

    iget v4, v0, Lccsanandroid/graphics/RectF;->left:F

    sub-float v2, v3, v4

    .line 571
    goto :goto_0

    .line 573
    :pswitch_3
    invoke-virtual {v1}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v2, v3, v4

    .line 574
    nop

    .line 581
    :goto_0
    iget v3, p3, Lccsancom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr v2, v3

    .line 582
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private calculateTranslationY(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "positioning"    # Lccsancom/google/android/material/animation/Positioning;

    .line 587
    iget-object v0, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 588
    .local v0, "dependencyBounds":Lccsanandroid/graphics/RectF;
    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 590
    .local v1, "childBounds":Lccsanandroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 591
    invoke-direct {p0, p2, v1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "translationY":F
    iget v3, p3, Lccsancom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 602
    :sswitch_0
    iget v3, v1, Lccsanandroid/graphics/RectF;->bottom:F

    iget v4, v0, Lccsanandroid/graphics/RectF;->bottom:F

    sub-float v2, v3, v4

    .line 603
    goto :goto_0

    .line 596
    :sswitch_1
    iget v3, v1, Lccsanandroid/graphics/RectF;->top:F

    iget v4, v0, Lccsanandroid/graphics/RectF;->top:F

    sub-float v2, v3, v4

    .line 597
    goto :goto_0

    .line 599
    :sswitch_2
    invoke-virtual {v1}, Lccsanandroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v2, v3, v4

    .line 600
    nop

    .line 607
    :goto_0
    iget v3, p3, Lccsancom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr v2, v3

    .line 608
    return v2

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lccsancom/google/android/material/animation/MotionTiming;FF)F
    .locals 9
    .param p1, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p2, "timing"    # Lccsancom/google/android/material/animation/MotionTiming;
    .param p3, "from"    # F
    .param p4, "to"    # F

    .line 690
    invoke-virtual {p2}, Lccsancom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    .line 691
    .local v0, "delay":J
    invoke-virtual {p2}, Lccsancom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    .line 694
    .local v2, "duration":J
    iget-object v4, p1, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string v5, "expansion"

    invoke-virtual {v4, v5}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v4

    .line 695
    .local v4, "expansionTiming":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v4}, Lccsancom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v5

    invoke-virtual {v4}, Lccsancom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 698
    .local v5, "expansionEnd":J
    const-wide/16 v7, 0x11

    add-long/2addr v5, v7

    .line 699
    sub-long v7, v5, v0

    long-to-float v7, v7

    long-to-float v8, v2

    div-float/2addr v7, v8

    .line 702
    .local v7, "fraction":F
    invoke-virtual {p2}, Lccsancom/google/android/material/animation/MotionTiming;->getInterpolator()Lccsanandroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-interface {v8, v7}, Lccsanandroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    .line 703
    invoke-static {p3, p4, v7}, Lccsancom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    return v8
.end method

.method private calculateWindowBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "rect"    # Lccsanandroid/graphics/RectF;

    .line 612
    move-object v0, p2

    .line 613
    .local v0, "windowBounds":Lccsanandroid/graphics/RectF;
    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 615
    iget-object v1, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 616
    .local v1, "windowLocation":[I
    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->getLocationInWindow([I)V

    .line 618
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/graphics/RectF;->offsetTo(FF)V

    .line 622
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/graphics/RectF;->offset(FF)V

    .line 623
    return-void
.end method

.method private createChildrenFadeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "unusedDependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Lccsanandroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 503
    return-void

    .line 505
    :cond_0
    instance-of v0, p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_1

    sget v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_1

    .line 508
    return-void

    .line 511
    :cond_1
    invoke-direct {p0, p2}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    .line 512
    .local v0, "childContentContainer":Lccsanandroid/view/ViewGroup;
    if-nez v0, :cond_2

    .line 513
    return-void

    .line 518
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 519
    if-nez p4, :cond_3

    .line 520
    sget-object v4, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lccsanandroid/util/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lccsanandroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    :cond_3
    sget-object v1, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lccsanandroid/util/Property;

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    .line 523
    invoke-static {v0, v1, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Lccsanandroid/animation/Animator;
    goto :goto_0

    .line 525
    .end local v1    # "animator":Lccsanandroid/animation/Animator;
    :cond_4
    sget-object v4, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lccsanandroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v2

    .line 526
    invoke-static {v0, v4, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 529
    .restart local v1    # "animator":Lccsanandroid/animation/Animator;
    :goto_0
    iget-object v2, p5, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string v3, "contentFade"

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v2

    .line 530
    .local v2, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v2, v1}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 531
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private createColorAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 462
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v0, :cond_0

    .line 463
    return-void

    .line 465
    :cond_0
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    .line 467
    .local v0, "circularRevealChild":Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Lccsanandroid/view/View;)I

    move-result v1

    .line 468
    .local v1, "tint":I
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 471
    .local v2, "transparent":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    .line 472
    if-nez p4, :cond_1

    .line 473
    invoke-interface {v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 475
    :cond_1
    sget-object v5, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lccsanandroid/util/Property;

    new-array v4, v4, [I

    aput v2, v4, v3

    .line 476
    invoke-static {v0, v5, v4}, Lccsanandroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Lccsanandroid/util/Property;[I)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animator":Lccsanandroid/animation/ObjectAnimator;
    goto :goto_0

    .line 481
    .end local v3    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :cond_2
    sget-object v5, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lccsanandroid/util/Property;

    new-array v4, v4, [I

    aput v1, v4, v3

    .line 482
    invoke-static {v0, v5, v4}, Lccsanandroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Lccsanandroid/util/Property;[I)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 488
    .restart local v3    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :goto_0
    invoke-static {}, Lccsancom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lccsancom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroid/animation/ObjectAnimator;->setEvaluator(Lccsanandroid/animation/TypeEvaluator;)V

    .line 489
    iget-object v4, p5, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string v5, "color"

    invoke-virtual {v4, v5}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v4

    .line 490
    .local v4, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v4, v3}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 491
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method private createDependencyTranslationAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V
    .locals 10
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "Z",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p5, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    iget-object v0, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v0

    .line 231
    .local v0, "translationX":F
    iget-object v1, p4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    invoke-direct {p0, p1, p2, v1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v1

    .line 236
    .local v1, "translationY":F
    nop

    .line 237
    invoke-direct {p0, v0, v1, p3, p4}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Lccsanandroid/util/Pair;

    move-result-object v2

    .line 238
    .local v2, "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    iget-object v3, v2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lccsancom/google/android/material/animation/MotionTiming;

    .line 239
    .local v3, "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    iget-object v4, v2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lccsancom/google/android/material/animation/MotionTiming;

    .line 241
    .local v4, "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    sget-object v5, Lccsanandroid/view/View;->TRANSLATION_X:Lccsanandroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    if-eqz p3, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    iget v8, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    :goto_0
    const/4 v9, 0x0

    aput v8, v7, v9

    .line 242
    invoke-static {p1, v5, v7}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 246
    .local v5, "translationXAnimator":Lccsanandroid/animation/ValueAnimator;
    sget-object v7, Lccsanandroid/view/View;->TRANSLATION_Y:Lccsanandroid/util/Property;

    new-array v6, v6, [F

    if-eqz p3, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    iget v8, p0, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    :goto_1
    aput v8, v6, v9

    .line 247
    invoke-static {p1, v7, v6}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v6

    .line 252
    .local v6, "translationYAnimator":Lccsanandroid/animation/ValueAnimator;
    invoke-virtual {v3, v5}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 253
    invoke-virtual {v4, v6}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 254
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method private createElevationAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v0

    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 210
    .local v0, "translationZ":F
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 211
    if-nez p4, :cond_0

    .line 212
    neg-float v3, v0

    invoke-virtual {p2, v3}, Lccsanandroid/view/View;->setTranslationZ(F)V

    .line 214
    :cond_0
    sget-object v3, Lccsanandroid/view/View;->TRANSLATION_Z:Lccsanandroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    invoke-static {p2, v3, v2}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Lccsanandroid/animation/Animator;
    goto :goto_0

    .line 216
    .end local v1    # "animator":Lccsanandroid/animation/Animator;
    :cond_1
    sget-object v3, Lccsanandroid/view/View;->TRANSLATION_Z:Lccsanandroid/util/Property;

    new-array v2, v2, [F

    neg-float v4, v0

    aput v4, v2, v1

    invoke-static {p2, v3, v2}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 219
    .restart local v1    # "animator":Lccsanandroid/animation/Animator;
    :goto_0
    iget-object v2, p5, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string v3, "elevation"

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v2

    .line 220
    .local v2, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v2, v1}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 221
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method private createExpansionAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 24
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p6, "childWidth"    # F
    .param p7, "childHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p8, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p9, "listeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    instance-of v0, v14, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    move-object v11, v14

    check-cast v11, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    .line 382
    .local v11, "circularRevealChild":Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    iget-object v0, v15, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    invoke-direct {v12, v13, v14, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v10

    .line 383
    .local v10, "revealCenterX":F
    iget-object v0, v15, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    invoke-direct {v12, v13, v14, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v9

    .line 384
    .local v9, "revealCenterY":F
    move-object v0, v13

    check-cast v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, v12, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Lccsanandroid/graphics/Rect;)Z

    .line 385
    iget-object v0, v12, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 388
    .local v8, "dependencyRadius":F
    iget-object v0, v15, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string v1, "expansion"

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v7

    .line 390
    .local v7, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    if-eqz p3, :cond_3

    .line 391
    if-nez p4, :cond_1

    .line 392
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v10, v9, v8}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v11, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 395
    :cond_1
    if-eqz p4, :cond_2

    .line 396
    invoke-interface {v11}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v0, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v8

    .line 397
    .local v6, "fromRadius":F
    :goto_0
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 398
    move/from16 v16, v10

    move/from16 v17, v9

    move/from16 v20, p6

    move/from16 v21, p7

    invoke-static/range {v16 .. v21}, Lccsancom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v5

    .line 401
    .local v5, "toRadius":F
    nop

    .line 402
    invoke-static {v11, v10, v9, v5}, Lccsancom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;FFF)Lccsanandroid/animation/Animator;

    move-result-object v4

    .line 404
    .local v4, "animator":Lccsanandroid/animation/Animator;
    new-instance v0, Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;

    invoke-direct {v0, v12, v11}, Lccsancom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v4, v0}, Lccsanandroid/animation/Animator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 416
    nop

    .line 418
    invoke-virtual {v7}, Lccsancom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v1, v10

    float-to-int v0, v9

    .line 416
    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p2

    move-object/from16 v18, v4

    .end local v4    # "animator":Lccsanandroid/animation/Animator;
    .local v18, "animator":Lccsanandroid/animation/Animator;
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "toRadius":F
    .local v17, "toRadius":F
    move/from16 v5, v16

    move-object/from16 v16, v7

    .end local v7    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    .local v16, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Lccsanandroid/view/View;JIIFLjava/util/List;)V

    .line 424
    .end local v6    # "fromRadius":F
    .end local v17    # "toRadius":F
    move/from16 v22, v8

    move/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v4, v18

    goto :goto_1

    .line 425
    .end local v16    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v18    # "animator":Lccsanandroid/animation/Animator;
    .restart local v7    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    :cond_3
    move-object/from16 v16, v7

    .end local v7    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    .restart local v16    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-interface {v11}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v7, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 426
    .local v7, "fromRadius":F
    move v6, v8

    .line 427
    .local v6, "toRadius":F
    nop

    .line 428
    invoke-static {v11, v10, v9, v6}, Lccsancom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;FFF)Lccsanandroid/animation/Animator;

    move-result-object v17

    .line 431
    .local v17, "animator":Lccsanandroid/animation/Animator;
    nop

    .line 433
    invoke-virtual/range {v16 .. v16}, Lccsancom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v4, v10

    float-to-int v5, v9

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v18, v6

    .end local v6    # "toRadius":F
    .local v18, "toRadius":F
    move v6, v7

    move/from16 v19, v7

    .end local v7    # "fromRadius":F
    .local v19, "fromRadius":F
    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Lccsanandroid/view/View;JIIFLjava/util/List;)V

    .line 438
    nop

    .line 440
    invoke-virtual/range {v16 .. v16}, Lccsancom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    .line 441
    invoke-virtual/range {v16 .. v16}, Lccsancom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    iget-object v0, v15, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    .line 442
    invoke-virtual {v0}, Lccsancom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v6

    float-to-int v1, v10

    float-to-int v0, v9

    .line 438
    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p2

    move/from16 v22, v8

    .end local v8    # "dependencyRadius":F
    .local v22, "dependencyRadius":F
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "revealCenterY":F
    .local v21, "revealCenterY":F
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "revealCenterX":F
    .local v20, "revealCenterX":F
    move/from16 v10, v18

    move-object/from16 v23, v11

    .end local v11    # "circularRevealChild":Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    .local v23, "circularRevealChild":Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Lccsanandroid/view/View;JJJIIFLjava/util/List;)V

    move-object/from16 v4, v17

    .line 449
    .end local v17    # "animator":Lccsanandroid/animation/Animator;
    .end local v18    # "toRadius":F
    .end local v19    # "fromRadius":F
    .restart local v4    # "animator":Lccsanandroid/animation/Animator;
    :goto_1
    move-object/from16 v0, v16

    .end local v16    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    .local v0, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v0, v4}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 450
    move-object/from16 v1, p8

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-static/range {v23 .. v23}, Lccsancom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Lccsanandroid/animation/Animator$AnimatorListener;

    move-result-object v2

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method private createIconFadeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p7, "listeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lccsanandroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 319
    :cond_0
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    .line 320
    .local v0, "circularRevealChild":Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    move-object v1, p1

    check-cast v1, Lccsanandroid/widget/ImageView;

    .line 321
    .local v1, "dependencyImageView":Lccsanandroid/widget/ImageView;
    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 323
    .local v2, "icon":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 324
    return-void

    .line 326
    :cond_1
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    .line 330
    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    .line 331
    if-nez p4, :cond_2

    .line 332
    invoke-virtual {v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    :cond_2
    sget-object v3, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lccsanandroid/util/Property;

    new-array v4, v4, [I

    aput v5, v4, v5

    invoke-static {v2, v3, v4}, Lccsanandroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Lccsanandroid/util/Property;[I)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animator":Lccsanandroid/animation/ObjectAnimator;
    goto :goto_0

    .line 336
    .end local v3    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :cond_3
    sget-object v6, Lccsancom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lccsanandroid/util/Property;

    new-array v4, v4, [I

    aput v3, v4, v5

    invoke-static {v2, v6, v4}, Lccsanandroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Lccsanandroid/util/Property;[I)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 341
    .restart local v3    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :goto_0
    new-instance v4, Lccsancom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {v4, p0, p2}, Lccsancom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;Lccsanandroid/view/View;)V

    invoke-virtual {v3, v4}, Lccsanandroid/animation/ObjectAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    iget-object v4, p5, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    const-string v5, "iconFade"

    invoke-virtual {v4, v5}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v4

    .line 350
    .local v4, "timing":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v4, v3}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 351
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v5, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {v5, p0, v0, v2}, Lccsancom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;Lccsancom/google/android/material/circularreveal/CircularRevealWidget;Lccsanandroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void

    .line 316
    .end local v0    # "circularRevealChild":Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
    .end local v1    # "dependencyImageView":Lccsanandroid/widget/ImageView;
    .end local v2    # "icon":Lccsanandroid/graphics/drawable/Drawable;
    .end local v3    # "animator":Lccsanandroid/animation/ObjectAnimator;
    .end local v4    # "timing":Lccsancom/google/android/material/animation/MotionTiming;
    :cond_4
    :goto_1
    return-void
.end method

.method private createPostFillRadialExpansion(Lccsanandroid/view/View;JJJIIFLjava/util/List;)V
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "totalDuration"    # J
    .param p8, "revealCenterX"    # I
    .param p9, "revealCenterY"    # I
    .param p10, "toRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 774
    .local p11, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 776
    add-long v0, p2, p4

    cmp-long v2, v0, p6

    if-gez v2, :cond_0

    .line 777
    nop

    .line 778
    invoke-static {p1, p8, p9, p10, p10}, Lccsanandroid/view/ViewAnimationUtils;->createCircularReveal(Lccsanandroid/view/View;IIFF)Lccsanandroid/animation/Animator;

    move-result-object v0

    .line 780
    .local v0, "animator":Lccsanandroid/animation/Animator;
    add-long v1, p2, p4

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/Animator;->setStartDelay(J)V

    .line 781
    add-long v1, p2, p4

    sub-long v1, p6, v1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/Animator;->setDuration(J)Lccsanandroid/animation/Animator;

    .line 782
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v0    # "animator":Lccsanandroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Lccsanandroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "delay"    # J
    .param p4, "revealCenterX"    # I
    .param p5, "revealCenterY"    # I
    .param p6, "fromRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 751
    .local p7, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 753
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 754
    nop

    .line 755
    invoke-static {p1, p4, p5, p6, p6}, Lccsanandroid/view/ViewAnimationUtils;->createCircularReveal(Lccsanandroid/view/View;IIFF)Lccsanandroid/animation/Animator;

    move-result-object v2

    .line 757
    .local v2, "animator":Lccsanandroid/animation/Animator;
    invoke-virtual {v2, v0, v1}, Lccsanandroid/animation/Animator;->setStartDelay(J)V

    .line 758
    invoke-virtual {v2, p2, p3}, Lccsanandroid/animation/Animator;->setDuration(J)Lccsanandroid/animation/Animator;

    .line 759
    invoke-interface {p7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v2    # "animator":Lccsanandroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Lccsanandroid/graphics/RectF;)V
    .locals 25
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p8, "childBounds"    # Lccsanandroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "ZZ",
            "Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;",
            "Lccsanandroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 267
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    iget-object v0, v14, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    invoke-direct {v10, v11, v12, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v9

    .line 268
    .local v9, "translationX":F
    iget-object v0, v14, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    invoke-direct {v10, v11, v12, v0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsancom/google/android/material/animation/Positioning;)F

    move-result v8

    .line 273
    .local v8, "translationY":F
    nop

    .line 274
    invoke-direct {v10, v9, v8, v13, v14}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Lccsanandroid/util/Pair;

    move-result-object v7

    .line 275
    .local v7, "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    iget-object v0, v7, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lccsancom/google/android/material/animation/MotionTiming;

    .line 276
    .local v6, "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    iget-object v0, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lccsancom/google/android/material/animation/MotionTiming;

    .line 278
    .local v5, "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v13, :cond_1

    .line 279
    if-nez p4, :cond_0

    .line 280
    neg-float v2, v9

    invoke-virtual {v12, v2}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 281
    neg-float v2, v8

    invoke-virtual {v12, v2}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 283
    :cond_0
    sget-object v2, Lccsanandroid/view/View;->TRANSLATION_X:Lccsanandroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-static {v12, v2, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v16

    .line 284
    .local v16, "translationXAnimator":Lccsanandroid/animation/ValueAnimator;
    sget-object v2, Lccsanandroid/view/View;->TRANSLATION_Y:Lccsanandroid/util/Property;

    new-array v1, v1, [F

    aput v4, v1, v0

    invoke-static {v12, v2, v1}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v17

    .line 286
    .local v17, "translationYAnimator":Lccsanandroid/animation/ValueAnimator;
    neg-float v4, v9

    neg-float v3, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v20, v3

    move-object v3, v6

    move/from16 v21, v4

    move-object v4, v5

    move-object/from16 v22, v5

    .end local v5    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .local v22, "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    move/from16 v5, v21

    move-object/from16 v23, v6

    .end local v6    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .local v23, "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    move/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    .local v20, "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    move/from16 v7, v18

    move/from16 v24, v8

    .end local v8    # "translationY":F
    .local v24, "translationY":F
    move/from16 v8, v19

    move v10, v9

    .end local v9    # "translationX":F
    .local v10, "translationX":F
    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Lccsanandroid/view/View;Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;FFFFLccsanandroid/graphics/RectF;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v3, v24

    goto :goto_0

    .line 297
    .end local v10    # "translationX":F
    .end local v16    # "translationXAnimator":Lccsanandroid/animation/ValueAnimator;
    .end local v17    # "translationYAnimator":Lccsanandroid/animation/ValueAnimator;
    .end local v20    # "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    .end local v22    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v23    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v24    # "translationY":F
    .restart local v5    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .restart local v6    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .restart local v7    # "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    .restart local v8    # "translationY":F
    .restart local v9    # "translationX":F
    :cond_1
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v20, v7

    move/from16 v24, v8

    move v10, v9

    .end local v5    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v6    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .end local v7    # "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    .end local v8    # "translationY":F
    .end local v9    # "translationX":F
    .restart local v10    # "translationX":F
    .restart local v20    # "motionTiming":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/google/android/material/animation/MotionTiming;Lccsancom/google/android/material/animation/MotionTiming;>;"
    .restart local v22    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .restart local v23    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .restart local v24    # "translationY":F
    sget-object v2, Lccsanandroid/view/View;->TRANSLATION_X:Lccsanandroid/util/Property;

    new-array v3, v1, [F

    neg-float v4, v10

    aput v4, v3, v0

    invoke-static {v12, v2, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v16

    .line 298
    .restart local v16    # "translationXAnimator":Lccsanandroid/animation/ValueAnimator;
    sget-object v2, Lccsanandroid/view/View;->TRANSLATION_Y:Lccsanandroid/util/Property;

    new-array v1, v1, [F

    move/from16 v3, v24

    .end local v24    # "translationY":F
    .local v3, "translationY":F
    neg-float v4, v3

    aput v4, v1, v0

    invoke-static {v12, v2, v1}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    .line 301
    .end local v16    # "translationXAnimator":Lccsanandroid/animation/ValueAnimator;
    .local v0, "translationXAnimator":Lccsanandroid/animation/ValueAnimator;
    .local v1, "translationYAnimator":Lccsanandroid/animation/ValueAnimator;
    :goto_0
    move-object/from16 v2, v23

    .end local v23    # "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .local v2, "translationXTiming":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v2, v0}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 302
    move-object/from16 v4, v22

    .end local v22    # "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    .local v4, "translationYTiming":Lccsancom/google/android/material/animation/MotionTiming;
    invoke-virtual {v4, v1}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 303
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method private getBackgroundTint(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 735
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getBackgroundTintList(Lccsanandroid/view/View;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 736
    .local v0, "tintList":Lccsanandroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p1}, Lccsanandroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1

    .line 739
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private toViewGroupOrNull(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 727
    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 728
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    return-object v0

    .line 730
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public layoutDependsOn(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 99
    invoke-virtual {p2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 104
    instance-of v0, p3, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 105
    move-object v0, p3

    check-cast v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 106
    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v0

    .line 107
    .local v0, "expandedComponentIdHint":I
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lccsanandroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 109
    .end local v0    # "expandedComponentIdHint":I
    :cond_2
    return v1

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 115
    iget v0, p1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 118
    const/16 v0, 0x50

    iput v0, p1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 120
    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Lccsanandroid/animation/AnimatorSet;
    .locals 18
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z

    .line 129
    move-object/from16 v10, p0

    move/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Lccsanandroid/content/Context;Z)Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v12

    .line 131
    .local v12, "spec":Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    if-eqz v11, :cond_0

    .line 132
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v10, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 133
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v10, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 137
    .local v13, "animations":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 139
    .local v14, "listeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 144
    :cond_1
    iget-object v15, v10, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 145
    .local v15, "childBounds":Lccsanandroid/graphics/RectF;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Lccsanandroid/graphics/RectF;)V

    .line 147
    invoke-virtual {v15}, Lccsanandroid/graphics/RectF;->width()F

    move-result v16

    .line 148
    .local v16, "childWidth":F
    invoke-virtual {v15}, Lccsanandroid/graphics/RectF;->height()F

    move-result v17

    .line 150
    .local v17, "childHeight":F
    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createDependencyTranslationAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V

    .line 151
    move/from16 v4, p4

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 152
    move/from16 v6, v16

    move/from16 v7, v17

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    .line 162
    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 163
    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZLccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 166
    new-instance v0, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v0}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 167
    .local v0, "set":Lccsanandroid/animation/AnimatorSet;
    invoke-static {v0, v13}, Lccsancom/google/android/material/animation/AnimatorSetCompat;->playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 168
    new-instance v1, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v10, v11, v3, v2}, Lccsancom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lccsancom/google/android/material/transformation/FabTransformationBehavior;ZLccsanandroid/view/View;Lccsanandroid/view/View;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 191
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    .end local v4    # "count":I
    :cond_2
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Lccsanandroid/content/Context;Z)Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
