.class public Lccsancom/google/android/material/internal/NavigationMenuItemView;
.super Lccsancom/google/android/material/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final accessibilityDelegate:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

.field private actionArea:Lccsanandroid/widget/FrameLayout;

.field checkable:Z

.field private emptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private hasIconTintList:Z

.field private iconSize:I

.field private iconTintList:Lccsanandroid/content/res/ColorStateList;

.field private itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

.field private needsEmptyIcon:Z

.field private final textView:Lccsanandroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/internal/ForegroundLinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Lccsancom/google/android/material/internal/NavigationMenuItemView$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView$1;-><init>(Lccsancom/google/android/material/internal/NavigationMenuItemView;)V

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 98
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$layout;->design_navigation_menu_item:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    .line 99
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 100
    sget v1, Lccsancom/google/android/material/R$id;->design_menu_item_text:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/CheckedTextView;

    iput-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    .line 101
    invoke-virtual {v1, v3}, Lccsanandroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 102
    invoke-static {v1, v0}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 103
    return-void
.end method

.method private adjustAppearance()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/CheckedTextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 141
    .local v0, "params":Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 142
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .end local v0    # "params":Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/CheckedTextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 148
    .restart local v0    # "params":Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 149
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .end local v0    # "params":Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method private createDefaultBackground()Lccsanandroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 175
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 176
    .local v0, "value":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$attr;->colorControlHighlight:I

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Lccsanandroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 180
    .local v1, "drawable":Lccsanandroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lccsancom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v3, Lccsanandroid/graphics/drawable/ColorDrawable;

    iget v4, v0, Lccsanandroid/util/TypedValue;->data:I

    invoke-direct {v3, v4}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 181
    sget-object v2, Lccsancom/google/android/material/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v3, Lccsanandroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 182
    return-object v1

    .line 184
    .end local v1    # "drawable":Lccsanandroid/graphics/drawable/StateListDrawable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private setActionView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "actionView"    # Lccsanandroid/view/View;

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 164
    sget v0, Lccsancom/google/android/material/R$id;->design_menu_item_action_area_stub:I

    .line 166
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewStub;

    invoke-virtual {v0}, Lccsanandroid/view/ViewStub;->inflate()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    .line 168
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 169
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 171
    :cond_1
    return-void
.end method

.method private shouldExpandActionArea()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 131
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 132
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0
.end method


# virtual methods
.method public getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 189
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 107
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 108
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setId(I)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 115
    invoke-direct {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->createDefaultBackground()Lccsanandroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_2
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 119
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 120
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 121
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setActionView(Lccsanandroid/view/View;)V

    .line 124
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/TooltipCompat;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->adjustAppearance()V

    .line 127
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 255
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lccsancom/google/android/material/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 256
    .local v0, "drawableState":[I
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lccsancom/google/android/material/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 259
    :cond_0
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 155
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->actionArea:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 158
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lccsanandroid/widget/CheckedTextView;->setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method public setCheckable(Z)V
    .locals 3
    .param p1, "checkable"    # Z

    .line 199
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 200
    iget-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    if-eq v0, p1, :cond_0

    .line 201
    iput-boolean p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    .line 202
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->accessibilityDelegate:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Lccsanandroid/view/View;I)V

    .line 205
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 209
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 210
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/CheckedTextView;->setChecked(Z)V

    .line 211
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setPadding(IIII)V

    .line 285
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 218
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 219
    iget-boolean v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 221
    .local v1, "state":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 222
    iget-object v2, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {p1, v2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 224
    .end local v1    # "state":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    iget v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    invoke-virtual {p1, v0, v0, v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 225
    :cond_2
    iget-boolean v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 227
    nop

    .line 229
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$drawable;->navigation_empty_icon:I

    invoke-virtual {p0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v3

    .line 228
    invoke-static {v1, v2, v3}, Lccsanandroidx/core/content/res/ResourcesCompat;->getDrawable(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 230
    if-eqz v1, :cond_3

    .line 231
    iget v2, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    invoke-virtual {v1, v0, v0, v2, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    :cond_3
    iget-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->emptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 236
    :cond_4
    :goto_1
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, v1}, Lccsanandroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Lccsanandroid/widget/TextView;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 237
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 288
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 289
    return-void
.end method

.method public setIconSize(I)V
    .locals 0
    .param p1, "iconSize"    # I

    .line 240
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->iconSize:I

    .line 241
    return-void
.end method

.method setIconTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 263
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Lccsanandroid/content/res/ColorStateList;

    .line 264
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    .line 265
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->itemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_1
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .line 292
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/CheckedTextView;->setMaxLines(I)V

    .line 293
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 0
    .param p1, "needsEmptyIcon"    # Z

    .line 280
    iput-boolean p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    .line 281
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 214
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "textAppearance"    # I

    .line 272
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->setTextAppearance(Lccsanandroid/widget/TextView;I)V

    .line 273
    return-void
.end method

.method public setTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Lccsanandroid/content/res/ColorStateList;

    .line 276
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/CheckedTextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 277
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 194
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->textView:Lccsanandroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 250
    const/4 v0, 0x1

    return v0
.end method
