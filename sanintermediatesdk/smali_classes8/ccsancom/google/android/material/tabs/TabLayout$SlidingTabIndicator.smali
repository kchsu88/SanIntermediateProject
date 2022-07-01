.class Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Lccsanandroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

.field private layoutDirection:I

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lccsancom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/tabs/TabLayout;Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/android/material/tabs/TabLayout;
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 2965
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    .line 2966
    invoke-direct {p0, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2958
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2963
    iput v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2967
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2968
    return-void
.end method

.method static synthetic access$1300(Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Lccsanandroid/view/View;Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
    .param p1, "x1"    # Lccsanandroid/view/View;
    .param p2, "x2"    # Lccsanandroid/view/View;
    .param p3, "x3"    # F

    .line 2956
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Lccsanandroid/view/View;Lccsanandroid/view/View;F)V

    return-void
.end method

.method private jumpIndicatorToSelectedPosition()V
    .locals 4

    .line 3104
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 3105
    .local v0, "currentView":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lccsancom/google/android/material/tabs/TabLayout;->access$1200(Lccsancom/google/android/material/tabs/TabLayout;)Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v2, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v0, v3}, Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForTab(Lccsancom/google/android/material/tabs/TabLayout;Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 3107
    return-void
.end method

.method private tweenIndicatorPosition(Lccsanandroid/view/View;Lccsanandroid/view/View;F)V
    .locals 8
    .param p1, "startTitle"    # Lccsanandroid/view/View;
    .param p2, "endTitle"    # Lccsanandroid/view/View;
    .param p3, "fraction"    # F

    .line 3125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3126
    .local v0, "hasVisibleTitle":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 3127
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lccsancom/google/android/material/tabs/TabLayout;->access$1200(Lccsancom/google/android/material/tabs/TabLayout;)Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v7, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForOffset(Lccsancom/google/android/material/tabs/TabLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;FLccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3131
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 3132
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Lccsanandroid/graphics/Rect;->top:I

    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Lccsanandroid/graphics/Rect;->bottom:I

    .line 3131
    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2, v4, v3}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3135
    :goto_1
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 3136
    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .locals 6
    .param p1, "recreateAnimation"    # Z
    .param p2, "position"    # I
    .param p3, "duration"    # I

    .line 3165
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 3166
    .local v0, "currentView":Lccsanandroid/view/View;
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 3167
    .local v1, "targetView":Lccsanandroid/view/View;
    if-nez v1, :cond_0

    .line 3169
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    .line 3170
    return-void

    .line 3175
    :cond_0
    new-instance v2, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;

    invoke-direct {v2, p0, v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 3183
    .local v2, "updateListener":Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz p1, :cond_1

    .line 3185
    new-instance v3, Lccsanandroid/animation/ValueAnimator;

    invoke-direct {v3}, Lccsanandroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 3186
    .local v3, "animator":Lccsanandroid/animation/ValueAnimator;
    sget-object v4, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 3187
    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 3188
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lccsanandroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3189
    invoke-virtual {v3, v2}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3190
    new-instance v4, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;

    invoke-direct {v4, p0, p2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;-><init>(Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v3, v4}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 3202
    invoke-virtual {v3}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 3203
    .end local v3    # "animator":Lccsanandroid/animation/ValueAnimator;
    goto :goto_0

    .line 3205
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v3}, Lccsanandroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3206
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3208
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 3148
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3149
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 3152
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    .line 3153
    return-void
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 2977
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2978
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 2979
    .local v2, "child":Lccsanandroid/view/View;
    invoke-virtual {v2}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 2980
    const/4 v3, 0x1

    return v3

    .line 2977
    .end local v2    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2983
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 3212
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->height()I

    move-result v0

    .line 3213
    .local v0, "indicatorHeight":I
    if-gez v0, :cond_0

    .line 3214
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3217
    :cond_0
    const/4 v1, 0x0

    .line 3218
    .local v1, "indicatorTop":I
    const/4 v2, 0x0

    .line 3220
    .local v2, "indicatorBottom":I
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3234
    :pswitch_0
    const/4 v1, 0x0

    .line 3235
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    .line 3236
    goto :goto_0

    .line 3230
    :pswitch_1
    const/4 v1, 0x0

    .line 3231
    move v2, v0

    .line 3232
    goto :goto_0

    .line 3226
    :pswitch_2
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 3227
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 3228
    goto :goto_0

    .line 3222
    :pswitch_3
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    sub-int v1, v3, v0

    .line 3223
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    .line 3224
    nop

    .line 3242
    :goto_0
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3

    .line 3245
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v3

    .line 3246
    .local v3, "indicatorBounds":Lccsanandroid/graphics/Rect;
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    iget v5, v3, Lccsanandroid/graphics/Rect;->left:I

    iget v6, v3, Lccsanandroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v1, v6, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3248
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 3252
    .local v4, "indicator":Lccsanandroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lccsancom/google/android/material/tabs/TabLayout;->access$1400(Lccsancom/google/android/material/tabs/TabLayout;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 3253
    invoke-static {v4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3254
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ne v5, v6, :cond_1

    .line 3255
    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lccsancom/google/android/material/tabs/TabLayout;->access$1400(Lccsancom/google/android/material/tabs/TabLayout;)I

    move-result v5

    sget-object v6, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 3257
    :cond_1
    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lccsancom/google/android/material/tabs/TabLayout;->access$1400(Lccsancom/google/android/material/tabs/TabLayout;)I

    move-result v5

    invoke-static {v4, v5}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTint(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 3261
    :cond_2
    :goto_1
    invoke-virtual {v4, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 3265
    .end local v3    # "indicatorBounds":Lccsanandroid/graphics/Rect;
    .end local v4    # "indicator":Lccsanandroid/graphics/drawable/Drawable;
    :cond_3
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 3266
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getIndicatorPosition()F
    .locals 2

    .line 3008
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 3087
    invoke-super/range {p0 .. p5}, Lccsanandroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3089
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    const/4 v0, 0x0

    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    goto :goto_0

    .line 3098
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    .line 3100
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 3027
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 3029
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 3032
    return-void

    .line 3038
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 3039
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 3042
    .local v0, "count":I
    const/4 v1, 0x0

    .line 3043
    .local v1, "largestTabWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v0

    .local v3, "z":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 3044
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 3045
    .local v4, "child":Lccsanandroid/view/View;
    invoke-virtual {v4}, Lccsanandroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 3046
    invoke-virtual {v4}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3043
    .end local v4    # "child":Lccsanandroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3050
    .end local v2    # "i":I
    .end local v3    # "z":I
    :cond_3
    if-gtz v1, :cond_4

    .line 3052
    return-void

    .line 3055
    :cond_4
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lccsancom/google/android/material/internal/ViewUtils;->dpToPx(Lccsanandroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    .line 3056
    .local v2, "gutter":I
    const/4 v3, 0x0

    .line 3058
    .local v3, "remeasure":Z
    mul-int v4, v1, v0

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_8

    .line 3061
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_7

    .line 3062
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 3063
    .local v5, "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v1, :cond_5

    iget v6, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 3064
    :cond_5
    iput v1, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3065
    iput v7, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3066
    const/4 v3, 0x1

    .line 3061
    .end local v5    # "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_7
    goto :goto_2

    .line 3073
    :cond_8
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    const/4 v5, 0x0

    iput v5, v4, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 3074
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v5}, Lccsancom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 3075
    const/4 v3, 0x1

    .line 3078
    :goto_2
    if-eqz v3, :cond_9

    .line 3080
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 3083
    .end local v0    # "count":I
    .end local v1    # "largestTabWidth":I
    .end local v2    # "gutter":I
    .end local v3    # "remeasure":Z
    :cond_9
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 3013
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 3017
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 3018
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 3019
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 3020
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 3023
    :cond_0
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 2994
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2995
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 2998
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2999
    iput p2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 3001
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 3002
    .local v0, "selectedTitle":Lccsanandroid/view/View;
    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 3004
    .local v1, "nextTitle":Lccsanandroid/view/View;
    iget v2, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Lccsanandroid/view/View;Lccsanandroid/view/View;F)V

    .line 3005
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .line 2971
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 2972
    .local v0, "bounds":Lccsanandroid/graphics/Rect;
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    iget v2, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v3, v0, Lccsanandroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2973
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2974
    return-void
.end method
