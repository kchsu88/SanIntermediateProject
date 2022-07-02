.class public Lccsancom/google/android/material/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;,
        Lccsancom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HEADER:Ljava/lang/String; = "android:menu:header"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private callback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

.field hasCustomItemIconSize:Z

.field headerLayout:Lccsanandroid/widget/LinearLayout;

.field iconTintList:Lccsanandroid/content/res/ColorStateList;

.field private id:I

.field isBehindStatusBar:Z

.field itemBackground:Lccsanandroid/graphics/drawable/Drawable;

.field itemHorizontalPadding:I

.field itemIconPadding:I

.field itemIconSize:I

.field private itemMaxLines:I

.field layoutInflater:Lccsanandroid/view/LayoutInflater;

.field menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

.field final onClickListener:Lccsanandroid/view/View$OnClickListener;

.field private overScrollMode:I

.field paddingSeparator:I

.field private paddingTopDefault:I

.field textAppearance:I

.field textAppearanceSet:Z

.field textColor:Lccsanandroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->overScrollMode:I

    .line 408
    new-instance v0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;-><init>(Lccsancom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Lccsanandroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/internal/NavigationMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    .line 57
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemMaxLines:I

    return v0
.end method

.method private updateTopPadding()V
    .locals 4

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "topPadding":I
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v1}, Lccsanandroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    if-eqz v1, :cond_0

    .line 342
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 345
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v2}, Lccsancom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 346
    return-void
.end method


# virtual methods
.method public addHeaderView(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 228
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V

    .line 230
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 231
    return-void
.end method

.method public collapseItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchApplyWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 5
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 349
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 350
    .local v0, "top":I
    iget v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    if-eq v1, v0, :cond_0

    .line 351
    iput v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 353
    invoke-direct {p0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateTopPadding()V

    .line 357
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lccsancom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 358
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-static {v1, p1}, Lccsanandroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 359
    return-void
.end method

.method public expandItemActionView(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckedItem()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 218
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getCheckedItem()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 241
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 245
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/LinearLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 166
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->id:I

    return v0
.end method

.method public getItemBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 276
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 285
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 294
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    return v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 308
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemMaxLines:I

    return v0
.end method

.method public getItemTextColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 260
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->textColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 250
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Lccsanandroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Lccsanandroid/view/LayoutInflater;

    sget v1, Lccsancom/google/android/material/R$layout;->ccsan_design_navigation_menu:I

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/internal/NavigationMenuView;

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    .line 109
    new-instance v1, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;

    iget-object v3, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v1, p0, v3}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;-><init>(Lccsancom/google/android/material/internal/NavigationMenuPresenter;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->setAccessibilityDelegateCompat(Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 111
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Lccsancom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 114
    :cond_0
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->overScrollMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/internal/NavigationMenuView;->setOverScrollMode(I)V

    .line 117
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Lccsanandroid/view/LayoutInflater;

    sget v1, Lccsancom/google/android/material/R$layout;->ccsan_ccsan_design_navigation_item_header:I

    iget-object v3, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    .line 119
    invoke-virtual {v0, v1, v3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    return-object v0
.end method

.method public inflateHeaderView(I)Lccsanandroid/view/View;
    .locals 3
    .param p1, "res"    # I

    .line 222
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Lccsanandroid/view/LayoutInflater;

    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "view":Lccsanandroid/view/View;
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Lccsanandroid/view/View;)V

    .line 224
    return-object v0
.end method

.method public initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 97
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Lccsanandroid/view/LayoutInflater;

    .line 98
    iput-object p2, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 99
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Lccsanandroid/content/res/Resources;
    sget v1, Lccsancom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    .line 101
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 102
    return-void
.end method

.method public isBehindStatusBar()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    return v0
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 144
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->callback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 5
    .param p1, "parcelable"    # Lccsanandroid/os/Parcelable;

    .line 195
    instance-of v0, p1, Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 196
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/Bundle;

    .line 197
    .local v0, "state":Lccsanandroid/os/Bundle;
    const-string v1, "android:menu:list"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Lccsanandroid/util/SparseArray;

    move-result-object v1

    .line 198
    .local v1, "hierarchy":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    if-eqz v1, :cond_0

    .line 199
    iget-object v2, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->restoreHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 201
    :cond_0
    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v2

    .line 202
    .local v2, "adapterState":Lccsanandroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 203
    iget-object v3, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v2}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Lccsanandroid/os/Bundle;)V

    .line 205
    :cond_1
    const-string v3, "android:menu:header"

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Lccsanandroid/util/SparseArray;

    move-result-object v3

    .line 206
    .local v3, "header":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    if-eqz v3, :cond_2

    .line 207
    iget-object v4, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Lccsanandroid/widget/LinearLayout;->restoreHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 210
    .end local v0    # "state":Lccsanandroid/os/Bundle;
    .end local v1    # "hierarchy":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    .end local v2    # "adapterState":Lccsanandroid/os/Bundle;
    .end local v3    # "header":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 3

    .line 176
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "state":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lccsanandroid/util/SparseArray;

    invoke-direct {v1}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 179
    .local v1, "hierarchy":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    iget-object v2, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/internal/NavigationMenuView;->saveHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 180
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Lccsanandroid/util/SparseArray;)V

    .line 182
    .end local v1    # "hierarchy":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 185
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Lccsanandroid/util/SparseArray;

    invoke-direct {v1}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 187
    .local v1, "header":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    iget-object v2, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/LinearLayout;->saveHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 188
    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Lccsanandroid/util/SparseArray;)V

    .line 190
    .end local v1    # "header":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    :cond_2
    return-object v0
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Lccsanandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 234
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/LinearLayout;->removeView(Lccsanandroid/view/View;)V

    .line 235
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    iget v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lccsancom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 238
    :cond_0
    return-void
.end method

.method public setBehindStatusBar(Z)V
    .locals 1
    .param p1, "behindStatusBar"    # Z

    .line 327
    iget-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 329
    invoke-direct {p0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateTopPadding()V

    .line 331
    :cond_0
    return-void
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 134
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->callback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 135
    return-void
.end method

.method public setCheckedItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 213
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 214
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 170
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->id:I

    .line 171
    return-void
.end method

.method public setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "itemBackground"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 280
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Lccsanandroid/graphics/drawable/Drawable;

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 282
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1
    .param p1, "itemHorizontalPadding"    # I

    .line 289
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 291
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1
    .param p1, "itemIconPadding"    # I

    .line 298
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 300
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1, "itemIconSize"    # I

    .line 312
    iget v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemIconSize:I

    if-eq v0, p1, :cond_0

    .line 313
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemIconSize:I

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public setItemIconTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 254
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Lccsanandroid/content/res/ColorStateList;

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 256
    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1
    .param p1, "itemMaxLines"    # I

    .line 303
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->itemMaxLines:I

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 305
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 269
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 272
    return-void
.end method

.method public setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 264
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->textColor:Lccsanandroid/content/res/ColorStateList;

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 266
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "overScrollMode"    # I

    .line 362
    iput p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->overScrollMode:I

    .line 363
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lccsancom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuView;->setOverScrollMode(I)V

    .line 366
    :cond_0
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 1
    .param p1, "updateSuspended"    # Z

    .line 320
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 127
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    .line 130
    :cond_0
    return-void
.end method
