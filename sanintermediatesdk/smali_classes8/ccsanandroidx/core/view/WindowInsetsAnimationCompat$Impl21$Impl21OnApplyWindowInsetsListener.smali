.class Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"

# interfaces
.implements Lccsanandroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21OnApplyWindowInsetsListener"
.end annotation


# static fields
.field private static final COMPAT_ANIMATION_DURATION:I = 0xa0


# instance fields
.field final mCallback:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

.field private mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "callback"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mCallback:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 701
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 702
    .local v0, "rootWindowInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_0

    .line 705
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    goto :goto_0

    .line 706
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 707
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;
    .locals 17
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "insets"
        }
    .end annotation

    .line 712
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-static {v9, v8}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 714
    invoke-static/range {p1 .. p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 717
    :cond_0
    invoke-static {v9, v8}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v10

    .line 719
    .local v10, "targetInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    iget-object v0, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_1

    .line 720
    invoke-static/range {p1 .. p1}, Lccsanandroidx/core/view/ViewCompat;->getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 723
    :cond_1
    iget-object v0, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    .line 727
    iput-object v10, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 728
    invoke-static/range {p1 .. p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 741
    :cond_2
    invoke-static/range {p1 .. p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v11

    .line 742
    .local v11, "callback":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    if-eqz v11, :cond_3

    iget-object v0, v11, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Lccsanandroid/view/WindowInsets;

    invoke-static {v0, v9}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    invoke-static/range {p1 .. p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 747
    :cond_3
    iget-object v0, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-static {v10, v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->buildAnimationMask(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;)I

    move-result v12

    .line 748
    .local v12, "animationMask":I
    if-nez v12, :cond_4

    .line 752
    invoke-static/range {p1 .. p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 755
    :cond_4
    iget-object v13, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 756
    .local v13, "startingInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    new-instance v1, Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Lccsanandroid/view/animation/DecelerateInterpolator;-><init>()V

    const-wide/16 v2, 0xa0

    invoke-direct {v0, v12, v1, v2, v3}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    move-object v14, v0

    .line 759
    .local v14, "anim":Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 761
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 762
    invoke-virtual {v14}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->getDurationMillis()J

    move-result-wide v1

    .line 761
    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    move-result-object v15

    .line 765
    .local v15, "animator":Lccsanandroid/animation/ValueAnimator;
    invoke-static {v10, v13, v12}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->computeAnimationBounds(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;I)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v16

    .line 769
    .local v16, "animationBounds":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    const/4 v0, 0x0

    invoke-static {v8, v14, v9, v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnPrepare(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroid/view/WindowInsets;Z)V

    .line 771
    new-instance v6, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v10

    move-object v4, v13

    move v5, v12

    move-object v9, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;-><init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;ILccsanandroid/view/View;)V

    invoke-virtual {v15, v9}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 786
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;

    invoke-direct {v0, v7, v14, v8}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;-><init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroid/view/View;)V

    invoke-virtual {v15, v0}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 798
    new-instance v6, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;

    move-object v0, v6

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, v16

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;-><init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Lccsanandroid/animation/ValueAnimator;)V

    invoke-static {v8, v6}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 805
    iput-object v10, v7, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 807
    invoke-static/range {p1 .. p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
