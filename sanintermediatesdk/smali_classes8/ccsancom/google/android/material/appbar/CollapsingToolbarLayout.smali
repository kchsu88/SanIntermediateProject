.class public Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;,
        Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258

.field private static final DEF_STYLE_RES:I


# instance fields
.field final collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Lccsanandroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Lccsanandroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private onOffsetChangedListener:Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Lccsanandroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

.field private final tmpRect:Lccsanandroid/graphics/Rect;

.field private toolbar:Lccsanandroid/view/ViewGroup;

.field private toolbarDirectChild:Lccsanandroid/view/View;

.field private toolbarId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    sget v0, Lccsancom/google/android/material/R$style;->Widget_Design_CollapsingToolbar:I

    sput v0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 154
    sget v0, Lccsancom/google/android/material/R$attr;->collapsingToolbarLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 158
    sget v4, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 119
    const/4 v6, 0x1

    iput-boolean v6, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 130
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 141
    const/4 v7, -0x1

    iput v7, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 160
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 162
    new-instance v8, Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {v8, p0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v8, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    .line 163
    sget-object v0, Lccsancom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v8, v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 165
    sget-object v2, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout:[I

    const/4 v9, 0x0

    new-array v5, v9, [I

    .line 166
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 173
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    .line 174
    const v2, 0x800053

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 173
    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 177
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    .line 178
    const v2, 0x800013

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 177
    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 182
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 186
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 189
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    .line 191
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 193
    :cond_0
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    .line 195
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 197
    :cond_1
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    .line 199
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 201
    :cond_2
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    .line 203
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 206
    :cond_3
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 207
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    sget v1, Lccsancom/google/android/material/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 212
    sget v1, Lccsanandroidx/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 216
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 218
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 217
    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 220
    :cond_4
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    .line 222
    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 221
    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 225
    :cond_5
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    .line 226
    invoke-virtual {v0, v1, v7}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 228
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_maxLines:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_maxLines:I

    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v8, v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setMaxLines(I)V

    .line 232
    :cond_6
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v2, 0x258

    .line 233
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 237
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 238
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 240
    sget v1, Lccsancom/google/android/material/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v0, v1, v7}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    .line 242
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 244
    invoke-virtual {p0, v9}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 246
    new-instance v1, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$1;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$1;-><init>(Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 255
    return-void
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .line 671
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 672
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Lccsanandroid/animation/ValueAnimator;

    invoke-direct {v0}, Lccsanandroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 674
    iget-wide v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 675
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 679
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    new-instance v1, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$2;-><init>(Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 686
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 690
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setIntValues([I)V

    .line 691
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 692
    return-void
.end method

.method private ensureToolbar()V
    .locals 5

    .line 358
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    if-nez v0, :cond_0

    .line 359
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    .line 364
    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Lccsanandroid/view/View;

    .line 366
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    .line 369
    if-eqz v0, :cond_1

    .line 370
    invoke-direct {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->findDirectChild(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Lccsanandroid/view/View;

    .line 374
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "toolbar":Lccsanandroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 379
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 380
    .local v3, "child":Lccsanandroid/view/View;
    invoke-static {v3}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->isToolbar(Lccsanandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    move-object v0, v3

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 382
    goto :goto_1

    .line 378
    .end local v3    # "child":Lccsanandroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_3
    :goto_1
    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    .line 388
    .end local v0    # "toolbar":Lccsanandroid/view/ViewGroup;
    :cond_4
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 390
    return-void
.end method

.method private findDirectChild(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "descendant"    # Lccsanandroid/view/View;

    .line 406
    move-object v0, p1

    .line 407
    .local v0, "directChild":Lccsanandroid/view/View;
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Lccsanandroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 408
    instance-of v2, v1, Lccsanandroid/view/View;

    if-eqz v2, :cond_0

    .line 409
    move-object v0, v1

    check-cast v0, Lccsanandroid/view/View;

    .line 407
    :cond_0
    invoke-interface {v1}, Lccsanandroid/view/ViewParent;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 412
    .end local v1    # "p":Lccsanandroid/view/ViewParent;
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Lccsanandroid/view/View;)I
    .locals 4
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 568
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 569
    .local v0, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 570
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 571
    .local v1, "mlp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    return v2

    .line 573
    .end local v1    # "mlp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v1

    return v1
.end method

.method private static getToolbarTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 557
    instance-of v0, p0, Lccsanandroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 558
    move-object v0, p0

    check-cast v0, Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 559
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    instance-of v0, p0, Lccsanandroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 561
    move-object v0, p0

    check-cast v0, Lccsanandroid/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 563
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getViewOffsetHelper(Lccsanandroid/view/View;)Lccsancom/google/android/material/appbar/ViewOffsetHelper;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 578
    sget v0, Lccsancom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    .line 579
    .local v0, "offsetHelper":Lccsancom/google/android/material/appbar/ViewOffsetHelper;
    if-nez v0, :cond_0

    .line 580
    new-instance v1, Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;-><init>(Lccsanandroid/view/View;)V

    move-object v0, v1

    .line 581
    sget v1, Lccsancom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 583
    :cond_0
    return-object v0
.end method

.method private static isToolbar(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 393
    instance-of v0, p0, Lccsanandroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Lccsanandroid/widget/Toolbar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isToolbarChild(Lccsanandroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 398
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Lccsanandroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private updateCollapsedBounds(Z)V
    .locals 10
    .param p1, "isRtl"    # Z

    .line 524
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    .line 525
    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Lccsanandroid/view/View;)I

    move-result v0

    .line 526
    .local v0, "maxOffset":I
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 531
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    instance-of v2, v1, Lccsanandroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_1

    .line 532
    check-cast v1, Lccsanandroidx/appcompat/widget/Toolbar;

    .line 533
    .local v1, "compatToolbar":Lccsanandroidx/appcompat/widget/Toolbar;
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v2

    .line 534
    .local v2, "titleMarginStart":I
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v3

    .line 535
    .local v3, "titleMarginEnd":I
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    move-result v4

    .line 536
    .local v4, "titleMarginTop":I
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    move-result v1

    .line 537
    .local v1, "titleMarginBottom":I
    goto :goto_1

    .end local v1    # "titleMarginBottom":I
    .end local v2    # "titleMarginStart":I
    .end local v3    # "titleMarginEnd":I
    .end local v4    # "titleMarginTop":I
    :cond_1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    instance-of v2, v1, Lccsanandroid/widget/Toolbar;

    if-eqz v2, :cond_2

    .line 538
    check-cast v1, Lccsanandroid/widget/Toolbar;

    .line 539
    .local v1, "frameworkToolbar":Lccsanandroid/widget/Toolbar;
    invoke-virtual {v1}, Lccsanandroid/widget/Toolbar;->getTitleMarginStart()I

    move-result v2

    .line 540
    .restart local v2    # "titleMarginStart":I
    invoke-virtual {v1}, Lccsanandroid/widget/Toolbar;->getTitleMarginEnd()I

    move-result v3

    .line 541
    .restart local v3    # "titleMarginEnd":I
    invoke-virtual {v1}, Lccsanandroid/widget/Toolbar;->getTitleMarginTop()I

    move-result v4

    .line 542
    .restart local v4    # "titleMarginTop":I
    invoke-virtual {v1}, Lccsanandroid/widget/Toolbar;->getTitleMarginBottom()I

    move-result v1

    .line 543
    .local v1, "titleMarginBottom":I
    goto :goto_1

    .line 544
    .end local v1    # "titleMarginBottom":I
    .end local v2    # "titleMarginStart":I
    .end local v3    # "titleMarginEnd":I
    .end local v4    # "titleMarginTop":I
    :cond_2
    const/4 v2, 0x0

    .line 545
    .restart local v2    # "titleMarginStart":I
    const/4 v3, 0x0

    .line 546
    .restart local v3    # "titleMarginEnd":I
    const/4 v4, 0x0

    .line 547
    .restart local v4    # "titleMarginTop":I
    const/4 v1, 0x0

    .line 549
    .restart local v1    # "titleMarginBottom":I
    :goto_1
    iget-object v5, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    iget-object v6, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->left:I

    if-eqz p1, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    add-int/2addr v6, v7

    iget-object v7, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    iget v7, v7, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    add-int/2addr v7, v4

    iget-object v8, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    iget v8, v8, Lccsanandroid/graphics/Rect;->right:I

    if-eqz p1, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    sub-int/2addr v8, v9

    iget-object v9, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    iget v9, v9, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 554
    return-void
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1323
    return-void
.end method

.method private updateDummyView()V
    .locals 3

    .line 416
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 419
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 420
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 423
    .end local v0    # "parent":Lccsanandroid/view/ViewParent;
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Lccsanandroid/view/View;

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    .line 427
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;II)V

    .line 431
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1181
    instance-of v0, p1, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 309
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 313
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 314
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    .line 315
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 320
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v0, :cond_3

    .line 326
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 327
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_3

    .line 328
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    iget v3, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 333
    .end local v0    # "topInset":I
    :cond_3
    return-void
.end method

.method protected drawChild(Lccsanandroid/graphics/Canvas;Lccsanandroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "drawingTime"    # J

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "invalidated":Z
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->isToolbarChild(Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 344
    const/4 v0, 0x1

    .line 346
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/FrameLayout;->drawChild(Lccsanandroid/graphics/Canvas;Lccsanandroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 796
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->drawableStateChanged()V

    .line 798
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v0

    .line 799
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 801
    .local v1, "changed":Z
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    .line 802
    .local v2, "d":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    invoke-virtual {v2, v0}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 805
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    .line 806
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    invoke-virtual {v2, v0}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 809
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v3, :cond_2

    .line 810
    invoke-virtual {v3, v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 813
    :cond_2
    if-eqz v1, :cond_3

    .line 814
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->invalidate()V

    .line 816
    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lccsanandroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .line 1186
    new-instance v0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 1191
    new-instance v0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1196
    new-instance v0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 916
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Lccsanandroid/graphics/Typeface;
    .locals 1

    .line 978
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 762
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 963
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .line 1086
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .line 1065
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .line 1023
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .line 1044
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Lccsanandroid/graphics/Typeface;
    .locals 1

    .line 993
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getExpandedTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 1116
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getMaxLines()I

    move-result v0

    return v0
.end method

.method final getMaxOffsetForPinChild(Lccsanandroid/view/View;)I
    .locals 4
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1315
    invoke-static {p1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Lccsanandroid/view/View;)Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v0

    .line 1316
    .local v0, "offsetHelper":Lccsancom/google/android/material/appbar/ViewOffsetHelper;
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 1317
    .local v1, "lp":Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .line 706
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1176
    iget-wide v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .line 1145
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    .line 1147
    return v0

    .line 1151
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1153
    .local v0, "insetTop":I
    :goto_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getMinimumHeight(Lccsanandroid/view/View;)I

    move-result v1

    .line 1154
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 1156
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 1161
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    return v2
.end method

.method public getStatusBarScrim()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 868
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 606
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 259
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 262
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 263
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 265
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setFitsSystemWindows(Lccsanandroid/view/View;Z)V

    .line 267
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iput-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 270
    :cond_0
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 273
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 275
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 280
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 281
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 282
    move-object v2, v0

    check-cast v2, Lccsancom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lccsancom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 285
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 286
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 460
    invoke-super/range {p0 .. p5}, Lccsanandroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 462
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 465
    .local v0, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 466
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 467
    .local v3, "child":Lccsanandroid/view/View;
    invoke-static {v3}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    invoke-virtual {v3}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 471
    invoke-static {v3, v0}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 465
    .end local v3    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "insetTop":I
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 479
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Lccsanandroid/view/View;)Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_2
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    if-eqz v0, :cond_7

    .line 486
    nop

    .line 487
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    .line 489
    if-eqz v0, :cond_7

    .line 490
    nop

    .line 491
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v0, v1

    .line 494
    .local v0, "isRtl":Z
    invoke-direct {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateCollapsedBounds(Z)V

    .line 497
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v0, :cond_5

    iget v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    goto :goto_3

    :cond_5
    iget v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    :goto_3
    iget-object v3, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Lccsanandroid/graphics/Rect;

    iget v3, v3, Lccsanandroid/graphics/Rect;->top:I

    iget v4, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    add-int/2addr v3, v4

    sub-int v4, p4, p2

    if-eqz v0, :cond_6

    iget v5, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    goto :goto_4

    :cond_6
    iget v5, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    :goto_4
    sub-int/2addr v4, v5

    sub-int v5, p5, p3

    iget v6, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 504
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 508
    .end local v0    # "isRtl":Z
    :cond_7
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 509
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 511
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getToolbarTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 515
    :cond_8
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "z":I
    :goto_5
    if-ge v0, v1, :cond_9

    .line 519
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Lccsanandroid/view/View;)Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 521
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 435
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 436
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onMeasure(II)V

    .line 438
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 439
    .local v0, "mode":I
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 440
    .local v1, "topInset":I
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 443
    nop

    .line 444
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 445
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onMeasure(II)V

    .line 449
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 450
    iget-object v3, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Lccsanandroid/view/View;

    if-eqz v3, :cond_3

    if-ne v3, p0, :cond_2

    goto :goto_1

    .line 453
    :cond_2
    invoke-static {v3}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Lccsanandroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_2

    .line 451
    :cond_3
    :goto_1
    invoke-static {v2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Lccsanandroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 456
    :cond_4
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 352
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, "newInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    move-object v0, p1

    .line 297
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iput-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 299
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 304
    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 907
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 908
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 879
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 880
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 888
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 889
    return-void
.end method

.method public setCollapsedTitleTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Lccsanandroid/content/res/ColorStateList;

    .line 897
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 898
    return-void
.end method

.method public setCollapsedTitleTypeface(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 972
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 973
    return-void
.end method

.method public setContentScrim(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 718
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 719
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 722
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    .line 723
    if-eqz v1, :cond_2

    .line 724
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 725
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 726
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 728
    :cond_2
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 730
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 740
    new-instance v0, Lccsanandroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 741
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 751
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/core/content/ContextCompat;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 752
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 935
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 936
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 954
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 955
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 1010
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 1011
    iput p2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 1012
    iput p3, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 1013
    iput p4, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 1014
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1015
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1097
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 1098
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1099
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1076
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 1077
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1078
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1034
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 1035
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1036
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1055
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 1056
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1057
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 926
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 927
    return-void
.end method

.method public setExpandedTitleTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Lccsanandroid/content/res/ColorStateList;

    .line 944
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 945
    return-void
.end method

.method public setExpandedTitleTypeface(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 987
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 988
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .line 1107
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setMaxLines(I)V

    .line 1108
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 695
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 696
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    .line 697
    .local v0, "contentScrim":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 698
    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 700
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 701
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 703
    .end local v0    # "contentScrim":Lccsanandroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 1171
    iput-wide p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 1172
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1, "height"    # I

    .line 1131
    iget v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1132
    iput p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 1134
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1136
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 647
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 648
    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 660
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    if-eq v0, p1, :cond_3

    .line 661
    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 662
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->animateScrim(I)V

    goto :goto_2

    .line 664
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 666
    :goto_2
    iput-boolean p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    .line 668
    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 776
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 777
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 780
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    .line 781
    if-eqz v1, :cond_4

    .line 782
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 785
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Lccsanandroid/graphics/drawable/Drawable;I)Z

    .line 786
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 787
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 788
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 790
    :cond_4
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 792
    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 846
    new-instance v0, Lccsanandroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 847
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 857
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/core/content/ContextCompat;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 858
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 594
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    .line 596
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 619
    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 620
    iput-boolean p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 621
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    .line 622
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    .line 623
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 625
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 825
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 827
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 828
    .local v1, "visible":Z
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 829
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 831
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 832
    iget-object v2, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 834
    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1309
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1312
    :cond_2
    return-void
.end method

.method protected verifyDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 820
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->verifyDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Lccsanandroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
