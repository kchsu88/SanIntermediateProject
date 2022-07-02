.class public Lccsanandroidx/appcompat/view/menu/ListMenuItemView;
.super Lccsanandroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;
.implements Lccsanandroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Lccsanandroid/graphics/drawable/Drawable;

.field private mCheckBox:Lccsanandroid/widget/CheckBox;

.field private mContent:Lccsanandroid/widget/LinearLayout;

.field private mForceShowIcon:Z

.field private mGroupDivider:Lccsanandroid/widget/ImageView;

.field private mHasListDivider:Z

.field private mIconView:Lccsanandroid/widget/ImageView;

.field private mInflater:Lccsanandroid/view/LayoutInflater;

.field private mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Lccsanandroid/widget/RadioButton;

.field private mShortcutView:Lccsanandroid/widget/TextView;

.field private mSubMenuArrow:Lccsanandroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Lccsanandroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Lccsanandroid/content/Context;

.field private mTitleView:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 74
    sget v0, Lccsanandroidx/appcompat/R$attr;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 80
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Lccsanandroid/graphics/drawable/Drawable;

    .line 84
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 86
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 88
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Lccsanandroid/content/Context;

    .line 89
    sget v1, Lccsanandroidx/appcompat/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Lccsanandroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010129

    aput v4, v3, v2

    sget v4, Lccsanandroidx/appcompat/R$attr;->dropDownListViewStyle:I

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4, v2}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 94
    .local v1, "b":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 96
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 97
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method private addContentView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 138
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Lccsanandroid/view/View;I)V

    .line 139
    return-void
.end method

.method private addContentView(Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "index"    # I

    .line 142
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mContent:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1, p2}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->addView(Lccsanandroid/view/View;I)V

    .line 147
    :goto_0
    return-void
.end method

.method private getInflater()Lccsanandroid/view/LayoutInflater;
    .locals 1

    .line 327
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Lccsanandroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 330
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Lccsanandroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .line 309
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 310
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v1, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_list_menu_item_checkbox:I

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/CheckBox;

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    .line 313
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Lccsanandroid/view/View;)V

    .line 314
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .line 294
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 295
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v1, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    .line 297
    invoke-direct {p0, v1, v2}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Lccsanandroid/view/View;I)V

    .line 298
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .line 301
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 302
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v1, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_list_menu_item_radio:I

    .line 303
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RadioButton;

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    .line 305
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->addContentView(Lccsanandroid/view/View;)V

    .line 306
    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 2
    .param p1, "hasSubmenu"    # Z

    .line 235
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 236
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :cond_1
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Lccsanandroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Lccsanandroid/graphics/Rect;

    .line 347
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 353
    .local v0, "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iget v1, p1, Lccsanandroid/graphics/Rect;->top:I

    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2}, Lccsanandroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Lccsanandroid/graphics/Rect;->top:I

    .line 355
    .end local v0    # "lp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 124
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 126
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1, p0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTitleForItemView(Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 130
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 131
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 133
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 134
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 102
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->onFinishInflate()V

    .line 104
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 106
    sget v0, Lccsanandroidx/appcompat/R$id;->title:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Lccsanandroid/widget/TextView;

    .line 107
    iget v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Lccsanandroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lccsanandroid/widget/TextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 112
    :cond_0
    sget v0, Lccsanandroidx/appcompat/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Lccsanandroid/widget/TextView;

    .line 113
    sget v0, Lccsanandroidx/appcompat/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Lccsanandroid/widget/ImageView;

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_1
    sget v0, Lccsanandroidx/appcompat/R$id;->group_divider:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Lccsanandroid/widget/ImageView;

    .line 119
    sget v0, Lccsanandroidx/appcompat/R$id;->content:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mContent:Lccsanandroid/widget/LinearLayout;

    .line 120
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 282
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 285
    .local v0, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 286
    .local v1, "iconLp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 287
    iget v2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 290
    .end local v0    # "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .end local v1    # "iconLp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 291
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 4
    .param p1, "checkable"    # Z

    .line 171
    if-nez p1, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    if-nez v0, :cond_1

    .line 182
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 184
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    .line 185
    .local v0, "compoundButton":Lccsanandroid/widget/CompoundButton;
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    .local v1, "otherCompoundButton":Lccsanandroid/widget/CompoundButton;
    goto :goto_0

    .line 187
    .end local v0    # "compoundButton":Lccsanandroid/widget/CompoundButton;
    .end local v1    # "otherCompoundButton":Lccsanandroid/widget/CompoundButton;
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 188
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 190
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    .line 191
    .restart local v0    # "compoundButton":Lccsanandroid/widget/CompoundButton;
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    .line 194
    .restart local v1    # "otherCompoundButton":Lccsanandroid/widget/CompoundButton;
    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_5

    .line 195
    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lccsanandroid/widget/CompoundButton;->setChecked(Z)V

    .line 197
    invoke-virtual {v0}, Lccsanandroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lccsanandroid/widget/CompoundButton;->setVisibility(I)V

    .line 202
    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lccsanandroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_7

    .line 203
    invoke-virtual {v1, v2}, Lccsanandroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    if-eqz v3, :cond_6

    .line 207
    invoke-virtual {v3, v2}, Lccsanandroid/widget/CheckBox;->setVisibility(I)V

    .line 209
    :cond_6
    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    if-eqz v3, :cond_7

    .line 210
    invoke-virtual {v3, v2}, Lccsanandroid/widget/RadioButton;->setVisibility(I)V

    .line 213
    :cond_7
    :goto_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 219
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 223
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Lccsanandroid/widget/RadioButton;

    .local v0, "compoundButton":Lccsanandroid/widget/CompoundButton;
    goto :goto_0

    .line 225
    .end local v0    # "compoundButton":Lccsanandroid/widget/CompoundButton;
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 228
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Lccsanandroid/widget/CheckBox;

    .line 231
    .restart local v0    # "compoundButton":Lccsanandroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .line 150
    iput-boolean p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 151
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 2
    .param p1, "groupDividerEnabled"    # Z

    .line 339
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 340
    nop

    .line 341
    iget-boolean v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 340
    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :cond_1
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 256
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 257
    .local v0, "showIcon":Z
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    .line 258
    return-void

    .line 261
    :cond_2
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_3

    .line 262
    return-void

    .line 265
    :cond_3
    if-nez v2, :cond_4

    .line 266
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->insertIconView()V

    .line 269
    :cond_4
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 276
    :cond_5
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 270
    :cond_6
    :goto_2
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_7

    move-object v3, p1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 273
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 278
    :cond_8
    :goto_4
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 242
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 245
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_1

    .line 246
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Lccsanandroid/widget/TextView;

    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 250
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 162
    :cond_1
    :goto_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
