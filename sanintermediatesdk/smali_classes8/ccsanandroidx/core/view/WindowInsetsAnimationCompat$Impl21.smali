.class Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;
.super Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
    }
.end annotation


# direct methods
.method constructor <init>(ILccsanandroid/view/animation/Interpolator;J)V
    .locals 0
    .param p1, "typeMask"    # I
    .param p2, "interpolator"    # Lccsanandroid/view/animation/Interpolator;
    .param p3, "durationMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeMask",
            "interpolator",
            "durationMillis"
        }
    .end annotation

    .line 589
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILccsanandroid/view/animation/Interpolator;J)V

    .line 590
    return-void
.end method

.method static buildAnimationMask(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;)I
    .locals 4
    .param p0, "targetInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p1, "currentInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetInsets",
            "currentInsets"
        }
    .end annotation

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "animatingMask":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    .line 651
    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    or-int/2addr v0, v1

    .line 650
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method static computeAnimationBounds(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;I)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 8
    .param p0, "targetInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p1, "startingInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetInsets",
            "startingInsets",
            "mask"
        }
    .end annotation

    .line 628
    invoke-virtual {p0, p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 629
    .local v0, "targetInsetsInsets":Lccsanandroidx/core/graphics/Insets;
    invoke-virtual {p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    .line 630
    .local v1, "startingInsetsInsets":Lccsanandroidx/core/graphics/Insets;
    iget v2, v0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v3, v1, Lccsanandroidx/core/graphics/Insets;->left:I

    .line 631
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v4, v1, Lccsanandroidx/core/graphics/Insets;->top:I

    .line 632
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v5, v1, Lccsanandroidx/core/graphics/Insets;->right:I

    .line 633
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v6, v1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 634
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 630
    invoke-static {v2, v3, v4, v5}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    .line 636
    .local v2, "lowerBound":Lccsanandroidx/core/graphics/Insets;
    iget v3, v0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v4, v1, Lccsanandroidx/core/graphics/Insets;->left:I

    .line 637
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v5, v1, Lccsanandroidx/core/graphics/Insets;->top:I

    .line 638
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v6, v1, Lccsanandroidx/core/graphics/Insets;->right:I

    .line 639
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v7, v1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 640
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 636
    invoke-static {v3, v4, v5, v6}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    .line 642
    .local v3, "upperBound":Lccsanandroidx/core/graphics/Insets;
    new-instance v4, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    invoke-direct {v4, v2, v3}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)V

    return-object v4
.end method

.method private static createProxyListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)Lccsanandroid/view/View$OnApplyWindowInsetsListener;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "callback"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 621
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;-><init>(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    return-object v0
.end method

.method static dispatchOnEnd(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 4
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "anim"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "anim"
        }
    .end annotation

    .line 888
    invoke-static {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v0

    .line 889
    .local v0, "callback":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->onEnd(Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 891
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 892
    return-void

    .line 895
    :cond_0
    instance-of v1, p0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 896
    move-object v1, p0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 897
    .local v1, "viewGroup":Lccsanandroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 898
    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 899
    .local v3, "child":Lccsanandroid/view/View;
    invoke-static {v3, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnEnd(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 897
    .end local v3    # "child":Lccsanandroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    .end local v1    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method static dispatchOnPrepare(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroid/view/WindowInsets;Z)V
    .locals 4
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "anim"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "insets"    # Lccsanandroid/view/WindowInsets;
    .param p3, "stopDispatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "anim",
            "insets",
            "stopDispatch"
        }
    .end annotation

    .line 827
    invoke-static {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v0

    .line 828
    .local v0, "callback":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    if-eqz v0, :cond_1

    .line 829
    iput-object p2, v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Lccsanandroid/view/WindowInsets;

    .line 830
    if-nez p3, :cond_1

    .line 831
    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->onPrepare(Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 832
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move p3, v1

    .line 838
    :cond_1
    instance-of v1, p0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 839
    move-object v1, p0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 840
    .local v1, "viewGroup":Lccsanandroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 841
    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 842
    .local v3, "child":Lccsanandroid/view/View;
    invoke-static {v3, p1, p2, p3}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnPrepare(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroid/view/WindowInsets;Z)V

    .line 840
    .end local v3    # "child":Lccsanandroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 845
    .end local v1    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method static dispatchOnProgress(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V
    .locals 5
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "interpolateInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "interpolateInsets",
            "runningAnimations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)V"
        }
    .end annotation

    .line 869
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/view/WindowInsetsAnimationCompat;>;"
    invoke-static {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v0

    .line 870
    .local v0, "callback":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    move-object v1, p1

    .line 871
    .local v1, "insets":Lccsanandroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0, v1, p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->onProgress(Lccsanandroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 873
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 874
    return-void

    .line 877
    :cond_0
    instance-of v2, p0, Lccsanandroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 878
    move-object v2, p0

    check-cast v2, Lccsanandroid/view/ViewGroup;

    .line 879
    .local v2, "viewGroup":Lccsanandroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 880
    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 881
    .local v4, "child":Lccsanandroid/view/View;
    invoke-static {v4, v1, p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnProgress(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V

    .line 879
    .end local v4    # "child":Lccsanandroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 884
    .end local v2    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method static dispatchOnStart(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V
    .locals 4
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "anim"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "animationBounds"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "anim",
            "animationBounds"
        }
    .end annotation

    .line 850
    invoke-static {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v0

    .line 851
    .local v0, "callback":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 853
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->getDispatchMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 854
    return-void

    .line 857
    :cond_0
    instance-of v1, p0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 858
    move-object v1, p0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 859
    .local v1, "viewGroup":Lccsanandroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 860
    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 861
    .local v3, "child":Lccsanandroid/view/View;
    invoke-static {v3, p1, p2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnStart(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V

    .line 859
    .end local v3    # "child":Lccsanandroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    .end local v1    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method static forwardToViewIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;
    .locals 1
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "insets"
        }
    .end annotation

    .line 819
    sget v0, Lccsanandroidx/core/R$id;->tag_on_apply_window_listener:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    return-object p1

    .line 822
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->onApplyWindowInsets(Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static getCallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .locals 3
    .param p0, "child"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 906
    sget v0, Lccsanandroidx/core/R$id;->tag_window_insets_animation_callback:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 908
    .local v0, "listener":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 909
    .local v1, "callback":Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    instance-of v2, v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    if-eqz v2, :cond_0

    .line 910
    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    iget-object v1, v2, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mCallback:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 912
    :cond_0
    return-object v1
.end method

.method static interpolateInsets(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;FI)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 12
    .param p0, "target"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p1, "starting"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "fraction"    # F
    .param p3, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "starting",
            "fraction",
            "typeMask"
        }
    .end annotation

    .line 662
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 663
    .local v0, "builder":Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    .line 665
    and-int v2, p3, v1

    if-nez v2, :cond_0

    .line 666
    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    .line 667
    goto :goto_1

    .line 669
    :cond_0
    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    .line 670
    .local v2, "targetInsets":Lccsanandroidx/core/graphics/Insets;
    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    .line 671
    .local v3, "startingInsets":Lccsanandroidx/core/graphics/Insets;
    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v5, v3, Lccsanandroidx/core/graphics/Insets;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, p2

    mul-float v4, v4, v6

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-int v4, v6

    iget v6, v2, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v7, v3, Lccsanandroidx/core/graphics/Insets;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v7, v5, p2

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-int v6, v6

    iget v7, v2, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v10, v3, Lccsanandroidx/core/graphics/Insets;->right:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    sub-float v10, v5, p2

    mul-float v7, v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v8

    double-to-int v7, v10

    iget v10, v2, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v11, v3, Lccsanandroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v5, p2

    mul-float v10, v10, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v8

    double-to-int v5, v10

    invoke-static {v2, v4, v6, v7, v5}, Lccsanandroidx/core/view/WindowInsetsCompat;->insetInsets(Lccsanandroidx/core/graphics/Insets;IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v4

    .line 679
    .local v4, "interpolatedInsets":Lccsanandroidx/core/graphics/Insets;
    invoke-virtual {v0, v1, v4}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    .line 664
    .end local v2    # "targetInsets":Lccsanandroidx/core/graphics/Insets;
    .end local v3    # "startingInsets":Lccsanandroidx/core/graphics/Insets;
    .end local v4    # "interpolatedInsets":Lccsanandroidx/core/graphics/Insets;
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method static setCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "callback"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 595
    sget v0, Lccsanandroidx/core/R$id;->tag_on_apply_window_listener:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 596
    .local v0, "userListener":Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 597
    sget v1, Lccsanandroidx/core/R$id;->tag_window_insets_animation_callback:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 598
    if-nez v0, :cond_1

    .line 601
    invoke-virtual {p0, v2}, Lccsanandroid/view/View;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 604
    :cond_0
    nop

    .line 605
    invoke-static {p0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->createProxyListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)Lccsanandroid/view/View$OnApplyWindowInsetsListener;

    move-result-object v1

    .line 606
    .local v1, "proxyListener":Lccsanandroid/view/View$OnApplyWindowInsetsListener;
    sget v2, Lccsanandroidx/core/R$id;->tag_window_insets_animation_callback:I

    invoke-virtual {p0, v2, v1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 612
    if-nez v0, :cond_1

    .line 613
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View$OnApplyWindowInsetsListener;)V

    .line 616
    .end local v1    # "proxyListener":Lccsanandroid/view/View$OnApplyWindowInsetsListener;
    :cond_1
    :goto_0
    return-void
.end method
