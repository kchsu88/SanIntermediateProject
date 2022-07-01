.class abstract Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lccsancom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<",
        "Lccsanandroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Lccsanandroid/graphics/Rect;

.field final tempRect2:Lccsanandroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 41
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Lccsanandroid/graphics/Rect;

    .line 42
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Lccsanandroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Lccsanandroid/graphics/Rect;

    .line 42
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Lccsanandroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 51
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 172
    if-nez p0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)",
            "Lccsanandroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Lccsanandroid/view/View;)I
    .locals 4
    .param p1, "header"    # Lccsanandroid/view/View;

    .line 166
    iget v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Lccsanandroid/view/View;)F

    move-result v0

    iget v2, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    int-to-float v3, v2

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-static {v0, v1, v2}, Lccsanandroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    .line 166
    :goto_0
    return v1
.end method

.method getOverlapRatioForOffset(Lccsanandroid/view/View;)F
    .locals 1
    .param p1, "header"    # Lccsanandroid/view/View;

    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 204
    iget v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return v0
.end method

.method getScrollRange(Lccsanandroid/view/View;)I
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 179
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .line 186
    iget v0, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)V
    .locals 12
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 113
    invoke-virtual {p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lccsanandroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "header":Lccsanandroid/view/View;
    if-eqz v1, :cond_1

    .line 117
    nop

    .line 118
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 119
    .local v2, "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v9, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Lccsanandroid/graphics/Rect;

    .line 120
    .local v9, "available":Lccsanandroid/graphics/Rect;
    nop

    .line 121
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 122
    invoke-virtual {v1}, Lccsanandroid/view/View;->getBottom()I

    move-result v4

    iget v5, v2, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    .line 123
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    .line 124
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v2, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 120
    invoke-virtual {v9, v3, v4, v5, v6}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 126
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v10

    .line 127
    .local v10, "parentInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    if-eqz v10, :cond_0

    .line 128
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    iget v3, v9, Lccsanandroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v9, Lccsanandroid/graphics/Rect;->left:I

    .line 134
    iget v3, v9, Lccsanandroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v9, Lccsanandroid/graphics/Rect;->right:I

    .line 137
    :cond_0
    iget-object v11, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Lccsanandroid/graphics/Rect;

    .line 138
    .local v11, "out":Lccsanandroid/graphics/Rect;
    iget v3, v2, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 139
    invoke-static {v3}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v3

    .line 140
    invoke-virtual {p2}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 141
    invoke-virtual {p2}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 138
    move-object v6, v9

    move-object v7, v11

    move v8, p3

    invoke-static/range {v3 .. v8}, Lccsanandroidx/core/view/GravityCompat;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V

    .line 146
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Lccsanandroid/view/View;)I

    move-result v3

    .line 148
    .local v3, "overlap":I
    iget v4, v11, Lccsanandroid/graphics/Rect;->left:I

    iget v5, v11, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    iget v6, v11, Lccsanandroid/graphics/Rect;->right:I

    iget v7, v11, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    invoke-virtual {p2, v4, v5, v6, v7}, Lccsanandroid/view/View;->layout(IIII)V

    .line 149
    iget v4, v11, Lccsanandroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lccsanandroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 150
    .end local v2    # "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "overlap":I
    .end local v9    # "available":Lccsanandroid/graphics/Rect;
    .end local v10    # "parentInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    .end local v11    # "out":Lccsanandroid/graphics/Rect;
    goto :goto_0

    .line 152
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)V

    .line 153
    const/4 v2, 0x0

    iput v2, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 155
    :goto_0
    return-void
.end method

.method public onMeasureChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;IIII)Z
    .locals 16
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .line 61
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .local v1, "childLpHeight":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p2

    goto :goto_4

    .line 67
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-virtual {v0, v3}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lccsanandroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "header":Lccsanandroid/view/View;
    if-eqz v4, :cond_7

    .line 70
    invoke-static/range {p5 .. p5}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 71
    .local v5, "availableHeight":I
    if-lez v5, :cond_3

    .line 72
    invoke-static {v4}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v6

    .line 74
    .local v6, "parentInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v6}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v7

    .line 76
    invoke-virtual {v6}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 78
    .end local v6    # "parentInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    :cond_2
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    .line 84
    :cond_4
    :goto_1
    invoke-virtual {v0, v4}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Lccsanandroid/view/View;)I

    move-result v6

    add-int/2addr v6, v5

    .line 85
    .local v6, "height":I
    invoke-virtual {v4}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 86
    .local v7, "headerHeight":I
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->shouldHeaderOverlapScrollingChild()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 87
    neg-int v8, v7

    int-to-float v8, v8

    move-object/from16 v15, p2

    invoke-virtual {v15, v8}, Lccsanandroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 89
    :cond_5
    move-object/from16 v15, p2

    sub-int/2addr v6, v7

    .line 91
    :goto_2
    if-ne v1, v2, :cond_6

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    :cond_6
    const/high16 v2, -0x80000000

    .line 92
    :goto_3
    invoke-static {v6, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 99
    .local v2, "heightMeasureSpec":I
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move v13, v2

    move/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Lccsanandroid/view/View;IIII)V

    .line 102
    const/4 v8, 0x1

    return v8

    .line 69
    .end local v2    # "heightMeasureSpec":I
    .end local v5    # "availableHeight":I
    .end local v6    # "height":I
    .end local v7    # "headerHeight":I
    :cond_7
    move-object/from16 v15, p2

    .line 105
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .end local v4    # "header":Lccsanandroid/view/View;
    :goto_4
    const/4 v2, 0x0

    return v2
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "overlayTop"    # I

    .line 196
    iput p1, p0, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 197
    return-void
.end method

.method protected shouldHeaderOverlapScrollingChild()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method
