.class public Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Lccsanandroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

.field private final defaultMargin:I

.field private icon:Lccsanandroid/widget/ImageView;

.field private iconTint:Lccsanandroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

.field private itemPosition:I

.field private final labelGroup:Lccsanandroid/view/ViewGroup;

.field private labelVisibilityMode:I

.field private final largeLabel:Lccsanandroid/widget/TextView;

.field private originalIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Lccsanandroid/widget/TextView;

.field private wrappedIconDrawable:Lccsanandroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 95
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "res":Lccsanandroid/content/res/Resources;
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$layout;->design_bottom_navigation_item:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    .line 98
    sget v1, Lccsancom/google/android/material/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 99
    sget v1, Lccsancom/google/android/material/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    .line 101
    sget v1, Lccsancom/google/android/material/R$id;->icon:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    .line 102
    sget v1, Lccsancom/google/android/material/R$id;->labelGroup:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    iput-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    .line 103
    sget v2, Lccsancom/google/android/material/R$id;->smallLabel:I

    invoke-virtual {p0, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    iput-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    .line 104
    sget v4, Lccsancom/google/android/material/R$id;->largeLabel:I

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/TextView;

    iput-object v4, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    .line 108
    sget v5, Lccsancom/google/android/material/R$id;->mtrl_view_tag_bottom_padding:I

    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 112
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 113
    invoke-static {v4, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 114
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setFocusable(Z)V

    .line 115
    invoke-virtual {v2}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v4}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 118
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 119
    new-instance v2, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView$1;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView$1;-><init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->addOnLayoutChangeListener(Lccsanandroid/view/View$OnLayoutChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;)Lccsanandroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 57
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;Lccsanandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .param p1, "x1"    # Lccsanandroid/view/View;

    .line 57
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->tryUpdateBadgeBounds(Lccsanandroid/view/View;)V

    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .locals 2
    .param p1, "smallLabelSize"    # F
    .param p2, "largeLabelSize"    # F

    .line 454
    sub-float v0, p1, p2

    iput v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    .line 455
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    iput v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    .line 456
    mul-float v0, v0, p1

    div-float/2addr v0, p2

    iput v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    .line 457
    return-void
.end method

.method private getCustomParentForBadge(Lccsanandroid/view/View;)Lccsanandroid/widget/FrameLayout;
    .locals 2
    .param p1, "anchorView"    # Lccsanandroid/view/View;

    .line 530
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 531
    sget-boolean v0, Lccsancom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    :cond_0
    return-object v1

    .line 534
    :cond_1
    return-object v1
.end method

.method private getItemVisiblePosition()I
    .locals 6

    .line 333
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 334
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v1

    .line 335
    .local v1, "index":I
    const/4 v2, 0x0

    .line 336
    .local v2, "visiblePosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 337
    invoke-virtual {v0, v3}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 338
    .local v4, "child":Lccsanandroid/view/View;
    instance-of v5, v4, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lccsanandroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 339
    add-int/lit8 v2, v2, 0x1

    .line 336
    .end local v4    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method private hasBadge()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setViewLayoutParams(Lccsanandroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "topMargin"    # I
    .param p2, "gravity"    # I

    .line 346
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 347
    .local v0, "viewParams":Lccsanandroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 348
    iput p2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 349
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 350
    return-void
.end method

.method private static setViewScaleValues(Lccsanandroid/view/View;FFI)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "visibility"    # I

    .line 354
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setScaleX(F)V

    .line 355
    invoke-virtual {p0, p2}, Lccsanandroid/view/View;->setScaleY(F)V

    .line 356
    invoke-virtual {p0, p3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 357
    return-void
.end method

.method private tryAttachBadgeToAnchor(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "anchorView"    # Lccsanandroid/view/View;

    .line 501
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    if-eqz p1, :cond_1

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipChildren(Z)V

    .line 507
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipToPadding(Z)V

    .line 509
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 510
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getCustomParentForBadge(Lccsanandroid/view/View;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    .line 509
    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 512
    :cond_1
    return-void
.end method

.method private tryRemoveBadgeFromAnchor(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Lccsanandroid/view/View;

    .line 515
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    return-void

    .line 518
    :cond_0
    if-eqz p1, :cond_1

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipChildren(Z)V

    .line 521
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipToPadding(Z)V

    .line 523
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    invoke-static {v0, p1}, Lccsancom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;)V

    .line 525
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 526
    return-void
.end method

.method private tryUpdateBadgeBounds(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "anchorView"    # Lccsanandroid/view/View;

    .line 493
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 497
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getCustomParentForBadge(Lccsanandroid/view/View;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    .line 496
    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 498
    return-void
.end method

.method private static updateViewPaddingBottom(Lccsanandroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "paddingBottom"    # I

    .line 360
    nop

    .line 361
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingRight()I

    move-result v2

    .line 360
    invoke-virtual {p0, v0, v1, v2, p1}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 362
    return-void
.end method


# virtual methods
.method getBadge()Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 481
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    return-object v0
.end method

.method public getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 193
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 166
    iget v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    return v0
.end method

.method public initialize(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 142
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 143
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setCheckable(Z)V

    .line 144
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 145
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setEnabled(Z)V

    .line 146
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setId(I)V

    .line 149
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    nop

    .line 154
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    nop

    .line 157
    .local v0, "tooltipText":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/TooltipCompat;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 381
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lccsanandroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 382
    .local v0, "drawableState":[I
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    .line 385
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 301
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 302
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    .local v0, "customContentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 308
    invoke-virtual {v2}, Lccsancom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p1, v1}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    .end local v0    # "customContentDescription":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 311
    .local v0, "infoCompat":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 315
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemVisiblePosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 318
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->isSelected()Z

    move-result v6

    .line 312
    invoke-static/range {v1 .. v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 321
    sget-object v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 323
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->item_view_role_description:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method removeBadge()V
    .locals 1

    .line 485
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->tryRemoveBadgeFromAnchor(Lccsanandroid/view/View;)V

    .line 486
    return-void
.end method

.method setBadge(Lccsancom/google/android/material/badge/BadgeDrawable;)V
    .locals 1
    .param p1, "badgeDrawable"    # Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 473
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->badgeDrawable:Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 474
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->tryAttachBadgeToAnchor(Lccsanandroid/view/View;)V

    .line 477
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 213
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    .line 214
    return-void
.end method

.method public setChecked(Z)V
    .locals 7
    .param p1, "checked"    # Z

    .line 218
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setPivotX(F)V

    .line 219
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setPivotY(F)V

    .line 220
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setPivotX(F)V

    .line 221
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setPivotY(F)V

    .line 223
    iget v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    const/16 v1, 0x11

    const/16 v2, 0x31

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 283
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v2, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 284
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 286
    goto/16 :goto_2

    .line 268
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    sget v1, Lccsancom/google/android/material/R$id;->mtrl_view_tag_bottom_padding:I

    .line 269
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 268
    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->updateViewPaddingBottom(Lccsanandroid/view/View;I)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v6, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 273
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-static {v0, v3, v3, v5}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    .line 274
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    invoke-static {v0, v1, v1, v4}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    goto/16 :goto_2

    .line 276
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 277
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    invoke-static {v0, v1, v1, v4}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    .line 278
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-static {v0, v3, v3, v5}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    .line 280
    goto/16 :goto_2

    .line 254
    :pswitch_2
    if-eqz p1, :cond_1

    .line 255
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 256
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    sget v1, Lccsancom/google/android/material/R$id;->mtrl_view_tag_bottom_padding:I

    .line 257
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 256
    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->updateViewPaddingBottom(Lccsanandroid/view/View;I)V

    .line 258
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v2, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 261
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    invoke-static {v0, v5}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->updateViewPaddingBottom(Lccsanandroid/view/View;I)V

    .line 262
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 265
    goto/16 :goto_2

    .line 225
    :pswitch_3
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    if-eqz v0, :cond_3

    .line 226
    if-eqz p1, :cond_2

    .line 227
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 228
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    sget v1, Lccsancom/google/android/material/R$id;->mtrl_view_tag_bottom_padding:I

    .line 229
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->updateViewPaddingBottom(Lccsanandroid/view/View;I)V

    .line 230
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 232
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v2, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 233
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    invoke-static {v0, v5}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->updateViewPaddingBottom(Lccsanandroid/view/View;I)V

    .line 234
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 236
    :goto_1
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 238
    :cond_3
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelGroup:Lccsanandroid/view/ViewGroup;

    sget v1, Lccsancom/google/android/material/R$id;->mtrl_view_tag_bottom_padding:I

    .line 239
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->updateViewPaddingBottom(Lccsanandroid/view/View;I)V

    .line 240
    if-eqz p1, :cond_4

    .line 241
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v6, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 243
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-static {v0, v3, v3, v5}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    .line 244
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    invoke-static {v0, v1, v1, v4}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    goto :goto_2

    .line 246
    :cond_4
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Lccsanandroid/view/View;II)V

    .line 247
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    iget v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    invoke-static {v0, v1, v1, v4}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    .line 248
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-static {v0, v3, v3, v5}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewScaleValues(Lccsanandroid/view/View;FFI)V

    .line 251
    nop

    .line 292
    :goto_2
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    .line 296
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setSelected(Z)V

    .line 297
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 366
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    if-eqz p1, :cond_0

    .line 372
    nop

    .line 373
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lccsanandroidx/core/view/PointerIconCompat;->getSystemIcon(Lccsanandroid/content/Context;I)Lccsanandroidx/core/view/PointerIconCompat;

    move-result-object v0

    .line 372
    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setPointerIcon(Lccsanandroid/view/View;Lccsanandroidx/core/view/PointerIconCompat;)V

    goto :goto_0

    .line 375
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setPointerIcon(Lccsanandroid/view/View;Lccsanandroidx/core/view/PointerIconCompat;)V

    .line 377
    :goto_0
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconDrawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 393
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->originalIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 394
    return-void

    .line 398
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->originalIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 399
    if-eqz p1, :cond_2

    .line 400
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 401
    .local v0, "state":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 403
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->wrappedIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 404
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Lccsanandroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 405
    invoke-static {p1, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 408
    .end local v0    # "state":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method

.method public setIconSize(I)V
    .locals 2
    .param p1, "iconSize"    # I

    .line 430
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 431
    .local v0, "iconParams":Lccsanandroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 432
    iput p1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 433
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method

.method public setIconTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 422
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Lccsanandroid/content/res/ColorStateList;

    .line 423
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->wrappedIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 424
    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 425
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->wrappedIconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 427
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .line 460
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/core/content/ContextCompat;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    nop

    .line 462
    .local v0, "backgroundDrawable":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 463
    return-void
.end method

.method public setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 466
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 469
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 470
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 162
    iput p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    .line 163
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 181
    iget v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_1

    .line 182
    iput p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    .line 184
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 185
    .local v1, "initialized":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 189
    .end local v1    # "initialized":Z
    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 2
    .param p1, "shifting"    # Z

    .line 170
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    if-eq v0, p1, :cond_1

    .line 171
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    .line 173
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, "initialized":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 178
    .end local v1    # "initialized":Z
    :cond_1
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 389
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 2
    .param p1, "activeTextAppearance"    # I

    .line 442
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-static {v0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->setTextAppearance(Lccsanandroid/widget/TextView;I)V

    .line 443
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 444
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 2
    .param p1, "inactiveTextAppearance"    # I

    .line 437
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-static {v0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->setTextAppearance(Lccsanandroid/widget/TextView;I)V

    .line 438
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    .line 439
    return-void
.end method

.method public setTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 447
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 449
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 451
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 198
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 207
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 205
    :cond_3
    :goto_0
    move-object v0, p1

    .line 207
    :goto_1
    nop

    .line 208
    .local v0, "tooltipText":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/TooltipCompat;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 418
    const/4 v0, 0x1

    return v0
.end method
