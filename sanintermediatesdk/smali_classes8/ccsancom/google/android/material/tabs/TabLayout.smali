.class public Lccsancom/google/android/material/tabs/TabLayout;
.super Lccsanandroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Lccsanandroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;,
        Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;,
        Lccsancom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;,
        Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;,
        Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;,
        Lccsancom/google/android/material/tabs/TabLayout$TabView;,
        Lccsancom/google/android/material/tabs/TabLayout$Tab;,
        Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;,
        Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;,
        Lccsancom/google/android/material/tabs/TabLayout$TabIndicatorAnimationMode;,
        Lccsancom/google/android/material/tabs/TabLayout$TabIndicatorGravity;,
        Lccsancom/google/android/material/tabs/TabLayout$TabGravity;,
        Lccsancom/google/android/material/tabs/TabLayout$LabelVisibility;,
        Lccsancom/google/android/material/tabs/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEF_STYLE_RES:I

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_ANIMATION_MODE_ELASTIC:I = 0x1

.field public static final INDICATOR_ANIMATION_MODE_LINEAR:I = 0x0

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Lccsanandroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/core/util/Pools$Pool<",
            "Lccsancom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Lccsanandroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Lccsanandroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Lccsanandroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Lccsanandroid/content/res/ColorStateList;

.field tabIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorAnimationMode:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field private tabIndicatorInterpolator:Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

.field tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

.field private tabSelectedIndicatorColor:I

.field tabTextAppearance:I

.field tabTextColors:Lccsanandroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewPool:Lccsanandroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/core/util/Pools$Pool<",
            "Lccsancom/google/android/material/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Lccsanandroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 179
    sget v0, Lccsancom/google/android/material/R$style;->Widget_Design_TabLayout:I

    sput v0, Lccsancom/google/android/material/tabs/TabLayout;->DEF_STYLE_RES:I

    .line 200
    new-instance v0, Lccsanandroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lccsanandroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lccsancom/google/android/material/tabs/TabLayout;->tabPool:Lccsanandroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/tabs/TabLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 485
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 488
    sget v0, Lccsancom/google/android/material/R$attr;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/tabs/TabLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 489
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 492
    sget v4, Lccsancom/google/android/material/tabs/TabLayout;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/HorizontalScrollView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 440
    const/4 v6, 0x0

    iput v6, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    .line 448
    const v0, 0x7fffffff

    iput v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 481
    new-instance v0, Lccsanandroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lccsanandroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabViewPool:Lccsanandroidx/core/util/Pools$Pool;

    .line 494
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 497
    invoke-virtual {p0, v6}, Lccsancom/google/android/material/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 500
    new-instance v7, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-direct {v7, p0, p1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;-><init>(Lccsancom/google/android/material/tabs/TabLayout;Lccsanandroid/content/Context;)V

    iput-object v7, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 501
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v8, -0x1

    invoke-direct {v0, v1, v8}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v7, v6, v0}, Lccsanandroid/widget/HorizontalScrollView;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 507
    sget-object v2, Lccsancom/google/android/material/R$styleable;->TabLayout:[I

    const/4 v9, 0x1

    new-array v5, v9, [I

    sget v0, Lccsancom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    aput v0, v5, v6

    .line 508
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 516
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    .line 518
    .local v1, "background":Lccsanandroid/graphics/drawable/ColorDrawable;
    new-instance v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 519
    .local v2, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 520
    invoke-virtual {v2, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 521
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 522
    invoke-static {p0, v2}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 525
    .end local v1    # "background":Lccsanandroid/graphics/drawable/ColorDrawable;
    .end local v2    # "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    :cond_0
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicator:I

    .line 526
    invoke-static {p1, v0, v1}, Lccsancom/google/android/material/resources/MaterialResources;->getDrawable(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 525
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 527
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 528
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 527
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 529
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 530
    invoke-virtual {v0, v1, v8}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 529
    invoke-virtual {v7, v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 531
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 532
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 531
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 533
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {v0, v1, v9}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 534
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationMode:I

    .line 535
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 534
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setTabIndicatorAnimationMode(I)V

    .line 537
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabPadding:I

    .line 540
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 541
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 542
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 543
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    .line 544
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    .line 545
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 546
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 548
    sget v1, Lccsancom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Lccsancom/google/android/material/R$style;->TextAppearance_Design_Tab:I

    .line 549
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    .line 552
    sget-object v2, Lccsanandroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 553
    invoke-virtual {p1, v1, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 556
    .local v1, "ta":Lccsanandroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 557
    invoke-virtual {v1, v2, v6}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextSize:F

    .line 559
    sget v2, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 560
    invoke-static {p1, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 566
    nop

    .line 568
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    .line 571
    invoke-static {p1, v0, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    .line 574
    :cond_1
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 578
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v2, v6}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 579
    .local v2, "selected":I
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v3}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-static {v3, v2}, Lccsancom/google/android/material/tabs/TabLayout;->createColorStateList(II)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    .line 582
    .end local v2    # "selected":I
    :cond_2
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIconTint:I

    .line 583
    invoke-static {p1, v0, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTint:Lccsanandroid/content/res/ColorStateList;

    .line 584
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIconTintMode:I

    .line 585
    invoke-virtual {v0, v2, v8}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lccsancom/google/android/material/internal/ViewUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 587
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabRippleColor:I

    .line 588
    invoke-static {p1, v0, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

    .line 590
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v3, 0x12c

    .line 591
    invoke-virtual {v0, v2, v3}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    .line 593
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabMinWidth:I

    .line 594
    invoke-virtual {v0, v2, v8}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    .line 595
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabMaxWidth:I

    .line 596
    invoke-virtual {v0, v2, v8}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    .line 597
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v2, v6}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    .line 598
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v2, v6}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    .line 600
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {v0, v2, v9}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    .line 601
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v2, v6}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 602
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {v0, v2, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 603
    sget v2, Lccsancom/google/android/material/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {v0, v2, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    .line 604
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 607
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 608
    .local v2, "res":Lccsanandroid/content/res/Resources;
    sget v3, Lccsancom/google/android/material/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 609
    sget v3, Lccsancom/google/android/material/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    .line 612
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 613
    return-void

    .line 565
    .end local v2    # "res":Lccsanandroid/content/res/Resources;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 566
    throw v2
.end method

.method static synthetic access$1200(Lccsancom/google/android/material/tabs/TabLayout;)Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout;

    .line 177
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lccsancom/google/android/material/tabs/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/tabs/TabLayout;

    .line 177
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    return v0
.end method

.method private addTabFromItemView(Lccsancom/google/android/material/tabs/TabItem;)V
    .locals 2
    .param p1, "item"    # Lccsancom/google/android/material/tabs/TabItem;

    .line 748
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->newTab()Lccsancom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 749
    .local v0, "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    iget-object v1, p1, Lccsancom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p1, Lccsancom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 752
    :cond_0
    iget-object v1, p1, Lccsancom/google/android/material/tabs/TabItem;->icon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p1, Lccsancom/google/android/material/tabs/TabItem;->icon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 755
    :cond_1
    iget v1, p1, Lccsancom/google/android/material/tabs/TabItem;->customLayout:I

    if-eqz v1, :cond_2

    .line 756
    iget v1, p1, Lccsancom/google/android/material/tabs/TabItem;->customLayout:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 758
    :cond_2
    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 759
    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 761
    :cond_3
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 762
    return-void
.end method

.method private addTabView(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1576
    iget-object v0, p1, Lccsancom/google/android/material/tabs/TabLayout$Tab;->view:Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 1577
    .local v0, "tabView":Lccsancom/google/android/material/tabs/TabLayout$TabView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 1578
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setActivated(Z)V

    .line 1579
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->createLayoutParamsForTabs()Lccsanandroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    return-void
.end method

.method private addViewInternal(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1603
    instance-of v0, p1, Lccsancom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    .line 1604
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/tabs/TabItem;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->addTabFromItemView(Lccsancom/google/android/material/tabs/TabItem;)V

    .line 1608
    return-void

    .line 1606
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .locals 6
    .param p1, "newPosition"    # I

    .line 1739
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1740
    return-void

    .line 1743
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1744
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1745
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1752
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getScrollX()I

    move-result v0

    .line 1753
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v2}, Lccsancom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    .line 1755
    .local v2, "targetScrollX":I
    if-eq v0, v2, :cond_2

    .line 1756
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1758
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Lccsanandroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1759
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 1763
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v1, p1, v3}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 1764
    return-void

    .line 1748
    .end local v0    # "startScrollX":I
    .end local v2    # "targetScrollX":I
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1749
    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .locals 2
    .param p1, "tabGravity"    # I

    .line 1922
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1924
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 1925
    goto :goto_0

    .line 1927
    :pswitch_1
    const-string v0, "TabLayout"

    const-string v1, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :pswitch_2
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 1934
    nop

    .line 1938
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private applyModeAndGravity()V
    .locals 5

    .line 1895
    const/4 v0, 0x0

    .line 1896
    .local v0, "paddingStart":I
    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 1898
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    iget v4, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1900
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v1, v0, v3, v3, v3}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    .line 1902
    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1905
    :pswitch_0
    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-ne v1, v2, :cond_2

    .line 1906
    const-string v1, "TabLayout"

    const-string v2, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 1912
    goto :goto_0

    .line 1914
    :pswitch_1
    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    invoke-direct {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->applyGravityForModeScrollable(I)V

    .line 1918
    :goto_0
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 1919
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 1873
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1891
    :cond_0
    return v1

    .line 1874
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 1875
    .local v0, "selectedChild":Lccsanandroid/view/View;
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1876
    invoke-virtual {v4}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    add-int/lit8 v4, p1, 0x1

    .line 1877
    invoke-virtual {v3, v4}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1879
    .local v3, "nextChild":Lccsanandroid/view/View;
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1880
    .local v4, "selectedWidth":I
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    .line 1883
    .local v1, "nextWidth":I
    :cond_4
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr v5, v6

    .line 1885
    .local v5, "scrollBase":I
    add-int v2, v4, v1

    int-to-float v2, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v2, v2, v6

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 1887
    .local v2, "scrollOffset":I
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v6

    if-nez v6, :cond_5

    add-int v6, v5, v2

    goto :goto_3

    :cond_5
    sub-int v6, v5, v2

    :goto_3
    return v6
.end method

.method private configureTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    .line 1566
    invoke-virtual {p1, p2}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1567
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1569
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1570
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1571
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1573
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Lccsanandroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .line 3271
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 3272
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 3273
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 3275
    .local v2, "i":I
    sget-object v3, Lccsancom/google/android/material/tabs/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 3276
    aput p1, v0, v2

    .line 3277
    add-int/lit8 v2, v2, 0x1

    .line 3280
    sget-object v3, Lccsancom/google/android/material/tabs/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 3281
    aput p0, v0, v2

    .line 3282
    add-int/lit8 v2, v2, 0x1

    .line 3284
    new-instance v3, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Lccsanandroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1612
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1614
    .local v0, "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Lccsanandroid/widget/LinearLayout$LayoutParams;)V

    .line 1615
    return-object v0
.end method

.method private createTabView(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Lccsancom/google/android/material/tabs/TabLayout$TabView;
    .locals 3
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1550
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabViewPool:Lccsanandroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1551
    .local v0, "tabView":Lccsancom/google/android/material/tabs/TabLayout$TabView;
    :goto_0
    if-nez v0, :cond_1

    .line 1552
    new-instance v1, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lccsancom/google/android/material/tabs/TabLayout$TabView;-><init>(Lccsancom/google/android/material/tabs/TabLayout;Lccsanandroid/content/Context;)V

    move-object v0, v1

    .line 1554
    :cond_1
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1555
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setFocusable(Z)V

    .line 1556
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setMinimumWidth(I)V

    .line 1557
    invoke-static {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$200(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1558
    invoke-static {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$300(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1560
    :cond_2
    invoke-static {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$200(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1562
    :goto_1
    return-object v0
.end method

.method private dispatchTabReselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1867
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1868
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1867
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1870
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1855
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1856
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1855
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1858
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1861
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1862
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1861
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1864
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1767
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1768
    new-instance v0, Lccsanandroid/animation/ValueAnimator;

    invoke-direct {v0}, Lccsanandroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1769
    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 1770
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    iget v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 1771
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    new-instance v1, Lccsancom/google/android/material/tabs/TabLayout$1;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/tabs/TabLayout$1;-><init>(Lccsancom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1779
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 3289
    const/4 v0, 0x0

    .line 3290
    .local v0, "hasIconAndText":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3291
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 3292
    .local v3, "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3293
    const/4 v0, 0x1

    .line 3294
    goto :goto_1

    .line 3290
    .end local v3    # "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3297
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-nez v1, :cond_2

    const/16 v1, 0x48

    goto :goto_2

    :cond_2
    const/16 v1, 0x30

    :goto_2
    return v1
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 3301
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3303
    return v0

    .line 3306
    :cond_0
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    :goto_1
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1499
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1500
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1499
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private removeTabViewAt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1729
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 1730
    .local v0, "view":Lccsancom/google/android/material/tabs/TabLayout$TabView;
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    .line 1731
    if-eqz v0, :cond_0

    .line 1732
    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->reset()V

    .line 1733
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabViewPool:Lccsanandroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Lccsanandroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1735
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->requestLayout()V

    .line 1736
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6
    .param p1, "position"    # I

    .line 1792
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 1793
    .local v0, "tabCount":I
    if-ge p1, v0, :cond_2

    .line 1794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1795
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 1796
    .local v2, "child":Lccsanandroid/view/View;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Lccsanandroid/view/View;->setSelected(Z)V

    .line 1797
    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->setActivated(Z)V

    .line 1794
    .end local v2    # "child":Lccsanandroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1800
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 4
    .param p1, "viewPager"    # Lccsanandroidx/viewpager/widget/ViewPager;
    .param p2, "autoRefresh"    # Z
    .param p3, "implicitSetup"    # Z

    .line 1397
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1399
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->pageChangeListener:Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1400
    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 1403
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Lccsanandroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1407
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1409
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1410
    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1413
    :cond_2
    if-eqz p1, :cond_6

    .line 1414
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    .line 1417
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pageChangeListener:Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 1418
    new-instance v0, Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lccsancom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pageChangeListener:Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    .line 1420
    :cond_3
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pageChangeListener:Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1421
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pageChangeListener:Lccsancom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Lccsanandroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1424
    new-instance v0, Lccsancom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Lccsanandroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1425
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1427
    invoke-virtual {p1}, Lccsanandroidx/viewpager/widget/ViewPager;->getAdapter()Lccsanandroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 1428
    .local v0, "adapter":Lccsanandroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_4

    .line 1431
    invoke-virtual {p0, v0, p2}, Lccsancom/google/android/material/tabs/TabLayout;->setPagerAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1435
    :cond_4
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    if-nez v1, :cond_5

    .line 1436
    new-instance v1, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;-><init>(Lccsancom/google/android/material/tabs/TabLayout;)V

    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    .line 1438
    :cond_5
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {v1, p2}, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1439
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, v1}, Lccsanandroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Lccsanandroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1442
    invoke-virtual {p1}, Lccsanandroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lccsancom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1443
    .end local v0    # "adapter":Lccsanandroidx/viewpager/widget/PagerAdapter;
    goto :goto_0

    .line 1446
    :cond_6
    iput-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setPagerAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1450
    :goto_0
    iput-boolean p3, p0, Lccsancom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    .line 1451
    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1543
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1544
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v2}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1546
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Lccsanandroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "lp"    # Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 1619
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-nez v0, :cond_0

    .line 1620
    const/4 v0, 0x0

    iput v0, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1621
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 1623
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1624
    const/4 v0, 0x0

    iput v0, p1, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1626
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 801
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 802
    return-void
.end method

.method public addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 704
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/tabs/TabLayout;->addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 705
    return-void
.end method

.method public addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    .line 715
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/google/android/material/tabs/TabLayout;->addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 716
    return-void
.end method

.method public addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 736
    iget-object v0, p1, Lccsancom/google/android/material/tabs/TabLayout$Tab;->parent:Lccsancom/google/android/material/tabs/TabLayout;

    if-ne v0, p0, :cond_1

    .line 739
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/tabs/TabLayout;->configureTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 740
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addTabView(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 742
    if-eqz p3, :cond_0

    .line 743
    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 745
    :cond_0
    return-void

    .line 737
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .line 725
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lccsancom/google/android/material/tabs/TabLayout;->addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 726
    return-void
.end method

.method public addView(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1584
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addViewInternal(Lccsanandroid/view/View;)V

    .line 1585
    return-void
.end method

.method public addView(Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "index"    # I

    .line 1589
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addViewInternal(Lccsanandroid/view/View;)V

    .line 1590
    return-void
.end method

.method public addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1599
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addViewInternal(Lccsanandroid/view/View;)V

    .line 1600
    return-void
.end method

.method public addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1594
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addViewInternal(Lccsanandroid/view/View;)V

    .line 1595
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 845
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 846
    return-void
.end method

.method protected createTabFromPool()Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .locals 2

    .line 869
    sget-object v0, Lccsancom/google/android/material/tabs/TabLayout;->tabPool:Lccsanandroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Lccsanandroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 870
    .local v0, "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    if-nez v0, :cond_0

    .line 871
    new-instance v1, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    invoke-direct {v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;-><init>()V

    move-object v0, v1

    .line 873
    :cond_0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 3315
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->generateDefaultLayoutParams()Lccsanandroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 902
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedTab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I

    .line 893
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 887
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 1014
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    return v0
.end method

.method public getTabIconTint()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1263
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTint:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorAnimationMode()I
    .locals 1

    .line 1088
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationMode:I

    return v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .line 1047
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 3319
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 991
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    return v0
.end method

.method public getTabRippleColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1274
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 1321
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1225
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .locals 1

    .line 1207
    iget-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    return v0
.end method

.method public isInlineLabel()Z
    .locals 1

    .line 1163
    iget-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    return v0
.end method

.method public newTab()Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .locals 3

    .line 857
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->createTabFromPool()Lccsancom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 858
    .local v0, "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    iput-object p0, v0, Lccsancom/google/android/material/tabs/TabLayout$Tab;->parent:Lccsancom/google/android/material/tabs/TabLayout;

    .line 859
    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->createTabView(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Lccsancom/google/android/material/tabs/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/android/material/tabs/TabLayout$Tab;->view:Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 860
    invoke-static {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$000(Lccsancom/google/android/material/tabs/TabLayout$Tab;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 861
    iget-object v1, v0, Lccsancom/google/android/material/tabs/TabLayout$Tab;->view:Lccsancom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->access$000(Lccsancom/google/android/material/tabs/TabLayout$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->setId(I)V

    .line 864
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1471
    invoke-super {p0}, Lccsanandroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1473
    invoke-static {p0}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Lccsanandroid/view/View;)V

    .line 1475
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1478
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 1479
    .local v0, "vp":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1482
    move-object v1, v0

    check-cast v1, Lccsanandroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v2}, Lccsancom/google/android/material/tabs/TabLayout;->setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1485
    .end local v0    # "vp":Lccsanandroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1489
    invoke-super {p0}, Lccsanandroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1491
    iget-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    .line 1493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;)V

    .line 1494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    .line 1496
    :cond_0
    return-void
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1652
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1653
    .local v1, "tabView":Lccsanandroid/view/View;
    instance-of v2, v1, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1654
    move-object v2, v1

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v2, p1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->access$400(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/graphics/Canvas;)V

    .line 1651
    .end local v1    # "tabView":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/widget/HorizontalScrollView;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 1659
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 1638
    invoke-super {p0, p1}, Lccsanandroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1639
    invoke-static {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1640
    .local v0, "infoCompat":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 1643
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    .line 1641
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    .line 1640
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 1646
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1665
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/internal/ViewUtils;->dpToPx(Lccsanandroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1666
    .local v0, "idealHeight":I
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1673
    :sswitch_0
    nop

    .line 1675
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    .line 1674
    invoke-static {v1, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1676
    goto :goto_0

    .line 1668
    :sswitch_1
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 1669
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/tabs/TabLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setMinimumHeight(I)V

    .line 1681
    :cond_0
    :goto_0
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1682
    .local v1, "specWidth":I
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1685
    iget v5, p0, Lccsancom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v5, v1

    .line 1688
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v6, v7}, Lccsancom/google/android/material/internal/ViewUtils;->dpToPx(Lccsanandroid/content/Context;I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    :goto_1
    iput v5, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 1692
    :cond_2
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1694
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 1697
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/tabs/TabLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    .line 1698
    .local v5, "child":Lccsanandroid/view/View;
    const/4 v6, 0x0

    .line 1700
    .local v6, "remeasure":Z
    iget v7, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 1709
    :pswitch_0
    invoke-virtual {v5}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v8

    if-eq v7, v8, :cond_3

    const/4 v3, 0x1

    :cond_3
    move v6, v3

    goto :goto_2

    .line 1705
    :pswitch_1
    invoke-virtual {v5}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v8

    if-ge v7, v8, :cond_4

    const/4 v3, 0x1

    :cond_4
    move v6, v3

    .line 1706
    nop

    .line 1713
    :goto_2
    if-eqz v6, :cond_5

    .line 1715
    nop

    .line 1718
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1719
    invoke-virtual {v5}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 1716
    invoke-static {p2, v3, v4}, Lccsancom/google/android/material/tabs/TabLayout;->getChildMeasureSpec(III)I

    move-result v3

    .line 1721
    .local v3, "childHeightMeasureSpec":I
    nop

    .line 1722
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1723
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v5, v2, v3}, Lccsanandroid/view/View;->measure(II)V

    .line 1726
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "childHeightMeasureSpec":I
    .end local v5    # "child":Lccsanandroid/view/View;
    .end local v6    # "remeasure":Z
    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method populateFromPagerAdapter()V
    .locals 4

    .line 1524
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 1526
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapter:Lccsanandroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1527
    invoke-virtual {v0}, Lccsanandroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1528
    .local v0, "adapterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1529
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->newTab()Lccsancom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapter:Lccsanandroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3, v1}, Lccsanandroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lccsancom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lccsancom/google/android/material/tabs/TabLayout;->addTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 1528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1534
    invoke-virtual {v1}, Lccsanandroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1535
    .local v1, "curItem":I
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1536
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->getTabAt(I)Lccsancom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout;->selectTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1540
    .end local v0    # "adapterCount":I
    .end local v1    # "curItem":I
    :cond_1
    return-void
.end method

.method protected releaseFromTabPool(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Z
    .locals 1
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 878
    sget-object v0, Lccsancom/google/android/material/tabs/TabLayout;->tabPool:Lccsanandroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Lccsanandroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 2

    .line 948
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 949
    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    .line 948
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 952
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/android/material/tabs/TabLayout$Tab;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 954
    .local v1, "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 955
    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->reset()V

    .line 956
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Z

    .line 957
    .end local v1    # "tab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    goto :goto_1

    .line 959
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/android/material/tabs/TabLayout$Tab;>;"
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedTab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 960
    return-void
.end method

.method public removeOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    return-void
.end method

.method public removeOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 828
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 829
    return-void
.end method

.method public removeTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 912
    iget-object v0, p1, Lccsancom/google/android/material/tabs/TabLayout$Tab;->parent:Lccsancom/google/android/material/tabs/TabLayout;

    if-ne v0, p0, :cond_0

    .line 916
    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->removeTabAt(I)V

    .line 917
    return-void

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 6
    .param p1, "position"    # I

    .line 926
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedTab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 927
    .local v0, "selectedTabPosition":I
    :goto_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    .line 929
    iget-object v2, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 930
    .local v2, "removedTab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    if-eqz v2, :cond_1

    .line 931
    invoke-virtual {v2}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->reset()V

    .line 932
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lccsancom/google/android/material/tabs/TabLayout$Tab;)Z

    .line 935
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 936
    .local v3, "newTabCount":I
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 937
    iget-object v5, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v5, v4}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 936
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 940
    .end local v4    # "i":I
    :cond_2
    if-ne v0, p1, :cond_4

    .line 941
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tabs/TabLayout$Tab;

    :goto_2
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->selectTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 943
    :cond_4
    return-void
.end method

.method public selectTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1809
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/tabs/TabLayout;->selectTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 1810
    return-void
.end method

.method public selectTab(Lccsancom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 5
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .line 1821
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedTab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1823
    .local v0, "currentTab":Lccsancom/google/android/material/tabs/TabLayout$Tab;
    if-ne v0, p1, :cond_0

    .line 1824
    if-eqz v0, :cond_6

    .line 1825
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->dispatchTabReselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1826
    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    goto :goto_2

    .line 1829
    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 1830
    .local v2, "newPosition":I
    :goto_0
    if-eqz p2, :cond_4

    .line 1831
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    .line 1834
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lccsancom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1836
    :cond_3
    invoke-direct {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    .line 1838
    :goto_1
    if-eq v2, v1, :cond_4

    .line 1839
    invoke-direct {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 1844
    :cond_4
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedTab:Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 1845
    if-eqz v0, :cond_5

    .line 1846
    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->dispatchTabUnselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1848
    :cond_5
    if-eqz p1, :cond_6

    .line 1849
    invoke-direct {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->dispatchTabSelected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1852
    .end local v2    # "newPosition":I
    :cond_6
    :goto_2
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 1631
    invoke-super {p0, p1}, Lccsanandroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1633
    invoke-static {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setElevation(Lccsanandroid/view/View;F)V

    .line 1634
    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 3
    .param p1, "inline"    # Z

    .line 1131
    iget-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    .line 1132
    iput-boolean p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 1133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1134
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1135
    .local v1, "child":Lccsanandroid/view/View;
    instance-of v2, v1, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1136
    move-object v2, v1

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v2}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->updateOrientation()V

    .line 1133
    .end local v1    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 1141
    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1, "inlineResourceId"    # I

    .line 1152
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    .line 1153
    return-void
.end method

.method public setOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 786
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->selectedListener:Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 787
    if-eqz p1, :cond_1

    .line 788
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 790
    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 770
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lccsancom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 771
    return-void
.end method

.method setPagerAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1, "adapter"    # Lccsanandroidx/viewpager/widget/PagerAdapter;
    .param p2, "addObserver"    # Z

    .line 1504
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapter:Lccsanandroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Lccsanandroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 1506
    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 1509
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapter:Lccsanandroidx/viewpager/widget/PagerAdapter;

    .line 1511
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1513
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Lccsanandroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 1514
    new-instance v0, Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;-><init>(Lccsancom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Lccsanandroid/database/DataSetObserver;

    .line 1516
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lccsanandroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 1520
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 1521
    return-void
.end method

.method setScrollAnimatorListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 1782
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1783
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 1784
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 656
    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z
    .param p4, "updateIndicatorPosition"    # Z

    .line 675
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 676
    .local v0, "roundedPosition":I
    if-ltz v0, :cond_4

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    if-eqz p4, :cond_1

    .line 682
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1, p2}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 686
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->scrollAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 689
    :cond_2
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lccsancom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    .line 692
    if-eqz p3, :cond_3

    .line 693
    invoke-direct {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 695
    :cond_3
    return-void

    .line 677
    :cond_4
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1, "tabSelectedIndicatorResourceId"    # I

    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    nop

    .line 1357
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1356
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1359
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1361
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "tabSelectedIndicator"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 1338
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 1339
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Lccsanandroid/graphics/drawable/Drawable;

    .line 1342
    :cond_1
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 627
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    .line 628
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1
    .param p1, "indicatorGravity"    # I

    .line 1032
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    .line 1033
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    .line 1034
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 1036
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 641
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1001
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_0

    .line 1002
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 1003
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 1005
    :cond_0
    return-void
.end method

.method public setTabIconTint(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "iconTint"    # Lccsanandroid/content/res/ColorStateList;

    .line 1244
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTint:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1245
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIconTint:Lccsanandroid/content/res/ColorStateList;

    .line 1246
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    .line 1248
    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1
    .param p1, "iconTintResourceId"    # I

    .line 1257
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setTabIconTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 1258
    return-void
.end method

.method public setTabIndicatorAnimationMode(I)V
    .locals 3
    .param p1, "tabIndicatorAnimationMode"    # I

    .line 1063
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationMode:I

    .line 1064
    packed-switch p1, :pswitch_data_0

    .line 1072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid TabIndicatorAnimationMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :pswitch_0
    new-instance v0, Lccsancom/google/android/material/tabs/ElasticTabIndicatorInterpolator;

    invoke-direct {v0}, Lccsancom/google/android/material/tabs/ElasticTabIndicatorInterpolator;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

    .line 1070
    goto :goto_0

    .line 1066
    :pswitch_1
    new-instance v0, Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

    invoke-direct {v0}, Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lccsancom/google/android/material/tabs/TabIndicatorInterpolator;

    .line 1067
    nop

    .line 1075
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 1
    .param p1, "tabIndicatorFullWidth"    # Z

    .line 1107
    iput-boolean p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 1108
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 1109
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 978
    iget v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    if-eq p1, v0, :cond_0

    .line 979
    iput p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->mode:I

    .line 980
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 982
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 1288
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1289
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Lccsanandroid/content/res/ColorStateList;

    .line 1290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1291
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1292
    .local v1, "child":Lccsanandroid/view/View;
    instance-of v2, v1, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1293
    move-object v2, v1

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->access$100(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/content/Context;)V

    .line 1290
    .end local v1    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1
    .param p1, "tabRippleColorResourceId"    # I

    .line 1309
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setTabRippleColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 1310
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .line 1235
    invoke-static {p1, p2}, Lccsancom/google/android/material/tabs/TabLayout;->createColorStateList(II)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setTabTextColors(Lccsanandroid/content/res/ColorStateList;)V

    .line 1236
    return-void
.end method

.method public setTabTextColors(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1216
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1217
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->tabTextColors:Lccsanandroid/content/res/ColorStateList;

    .line 1218
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    .line 1220
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lccsanandroidx/viewpager/widget/PagerAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setPagerAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1461
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 4
    .param p1, "unboundedRipple"    # Z

    .line 1176
    iget-boolean v0, p0, Lccsancom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    if-eq v0, p1, :cond_1

    .line 1177
    iput-boolean p1, p0, Lccsancom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    .line 1178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1179
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1180
    .local v1, "child":Lccsanandroid/view/View;
    instance-of v2, v1, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1181
    move-object v2, v1

    check-cast v2, Lccsancom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->access$100(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/content/Context;)V

    .line 1178
    .end local v1    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1185
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1
    .param p1, "unboundedRippleResourceId"    # I

    .line 1196
    invoke-virtual {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    .line 1197
    return-void
.end method

.method public setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1, "viewPager"    # Lccsanandroidx/viewpager/widget/ViewPager;

    .line 1372
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;Z)V

    .line 1373
    return-void
.end method

.method public setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1, "viewPager"    # Lccsanandroidx/viewpager/widget/ViewPager;
    .param p2, "autoRefresh"    # Z

    .line 1392
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/tabs/TabLayout;->setupWithViewPager(Lccsanandroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1393
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1466
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 3
    .param p1, "requestLayout"    # Z

    .line 1941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1942
    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1943
    .local v1, "child":Lccsanandroid/view/View;
    invoke-direct {p0}, Lccsancom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setMinimumWidth(I)V

    .line 1944
    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lccsancom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Lccsanandroid/widget/LinearLayout$LayoutParams;)V

    .line 1945
    if-eqz p1, :cond_0

    .line 1946
    invoke-virtual {v1}, Lccsanandroid/view/View;->requestLayout()V

    .line 1941
    .end local v1    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1949
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
