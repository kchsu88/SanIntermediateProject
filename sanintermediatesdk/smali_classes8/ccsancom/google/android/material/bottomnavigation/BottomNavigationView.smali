.class public Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lccsanandroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;,
        Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private itemRippleColor:Lccsanandroid/content/res/ColorStateList;

.field private final menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field private menuInflater:Lccsanandroid/view/MenuInflater;

.field final menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private reselectedListener:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    sget v0, Lccsancom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    sput v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 131
    sget v0, Lccsancom/google/android/material/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 136
    sget v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-direct {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 138
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 141
    new-instance v7, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenu;

    invoke-direct {v7, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenu;-><init>(Lccsanandroid/content/Context;)V

    iput-object v7, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 143
    new-instance v8, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v8, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v8, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 144
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v9, v1

    .line 147
    .local v9, "params":Lccsanandroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v9, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {v8, v9}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {v0, v8}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setBottomNavigationMenuView(Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    .line 151
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setId(I)V

    .line 152
    invoke-virtual {v8, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setPresenter(Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 153
    invoke-virtual {v7, v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 154
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 157
    sget-object v3, Lccsancom/google/android/material/R$styleable;->BottomNavigationView:[I

    sget v5, Lccsancom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v0, 0x2

    new-array v6, v0, [I

    sget v0, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v11, 0x0

    aput v0, v6, v11

    sget v0, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v0, v6, v10

    .line 158
    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v8, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 170
    :cond_0
    const v1, 0x1010038

    .line 171
    invoke-virtual {v8, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 170
    invoke-virtual {v8, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 174
    :goto_0
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemIconSize:I

    .line 177
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsancom/google/android/material/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 174
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 178
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 180
    invoke-virtual {v0, v1, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 179
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 182
    :cond_1
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    .line 184
    invoke-virtual {v0, v1, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 183
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 187
    :cond_2
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 191
    :cond_3
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    .line 193
    :cond_4
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->createMaterialShapeDrawableBackground(Lccsanandroid/content/Context;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_5
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v1, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setElevation(F)V

    .line 200
    :cond_6
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_backgroundTint:I

    .line 201
    invoke-static {p1, v0, v1}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 203
    .local v1, "backgroundTint":Lccsanandroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 205
    sget v2, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v3, -0x1

    .line 206
    invoke-virtual {v0, v2, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v2

    .line 205
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 209
    sget v2, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 210
    invoke-virtual {v0, v2, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 209
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 212
    sget v2, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v0, v2, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 213
    .local v2, "itemBackground":I
    if-eqz v2, :cond_7

    .line 214
    invoke-virtual {v8, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    goto :goto_1

    .line 216
    :cond_7
    sget v3, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_itemRippleColor:I

    .line 217
    invoke-static {p1, v0, v3}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 219
    .local v3, "itemRippleColor":Lccsanandroid/content/res/ColorStateList;
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemRippleColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 222
    .end local v3    # "itemRippleColor":Lccsanandroid/content/res/ColorStateList;
    :goto_1
    sget v3, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    sget v3, Lccsancom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    .line 225
    :cond_8
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 227
    invoke-virtual {p0, v8, v9}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->shouldDrawCompatibilityTopDivider()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 230
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->addCompatibilityTopDivider(Lccsanandroid/content/Context;)V

    .line 233
    :cond_9
    new-instance v3, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {v7, v3}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 248
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 112
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 112
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Lccsanandroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 738
    new-instance v0, Lccsanandroid/view/View;

    invoke-direct {v0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 739
    .local v0, "divider":Lccsanandroid/view/View;
    sget v1, Lccsancom/google/android/material/R$color;->design_bottom_navigation_shadow_color:I

    .line 740
    invoke-static {p1, v1}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v1

    .line 739
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    .line 741
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 744
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsancom/google/android/material/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 745
    .local v1, "dividerParams":Lccsanandroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Lccsanandroid/view/View;)V

    .line 747
    return-void
.end method

.method private applyWindowInsets()V
    .locals 1

    .line 252
    new-instance v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$2;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$2;-><init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-static {p0, v0}, Lccsancom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 273
    return-void
.end method

.method private createMaterialShapeDrawableBackground(Lccsanandroid/content/Context;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 277
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 278
    .local v0, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 279
    .local v1, "originalBackground":Lccsanandroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 280
    move-object v2, v1

    check-cast v2, Lccsanandroid/graphics/drawable/ColorDrawable;

    .line 281
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 284
    return-object v0
.end method

.method private getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 2

    .line 750
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Lccsanandroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 751
    new-instance v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Lccsanandroid/view/MenuInflater;

    .line 753
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Lccsanandroid/view/MenuInflater;

    return-object v0
.end method

.method private shouldDrawCompatibilityTopDivider()Z
    .locals 2

    .line 734
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBadge(I)Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p1, "menuItemId"    # I

    .line 677
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getBadge(I)Lccsancom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 472
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 410
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 365
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getIconTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemRippleColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 498
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 631
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 612
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 423
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 593
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .line 354
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Lccsanandroid/view/Menu;
    .locals 1

    .line 335
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOrCreateBadge(I)Lccsancom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .param p1, "menuItemId"    # I

    .line 689
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getOrCreateBadge(I)Lccsancom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 546
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 346
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 347
    invoke-direct {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Lccsanandroid/view/MenuInflater;->inflate(ILccsanandroid/view/Menu;)V

    .line 348
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 349
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 350
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .line 656
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 289
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 291
    invoke-static {p0}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Lccsanandroid/view/View;)V

    .line 292
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 767
    instance-of v0, p1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 768
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 769
    return-void

    .line 771
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 772
    .local v0, "savedState":Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsanandroid/widget/FrameLayout;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 773
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Lccsanandroid/os/Bundle;)V

    .line 774
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 4

    .line 758
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 759
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    new-instance v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 760
    .local v1, "savedState":Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Lccsanandroid/os/Bundle;

    .line 761
    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, v1, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Lccsanandroid/os/Bundle;)V

    .line 762
    return-object v1
.end method

.method public removeBadge(I)V
    .locals 1
    .param p1, "menuItemId"    # I

    .line 700
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->removeBadge(I)V

    .line 701
    return-void
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 301
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 302
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setElevation(F)V

    .line 304
    :cond_0
    invoke-static {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setElevation(Lccsanandroid/view/View;F)V

    .line 305
    return-void
.end method

.method public setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 485
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 487
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 460
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 462
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 642
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 643
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 644
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 646
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1, "iconSize"    # I

    .line 387
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemIconSize(I)V

    .line 388
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1
    .param p1, "iconSizeRes"    # I

    .line 399
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 400
    return-void
.end method

.method public setItemIconTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 375
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 376
    return-void
.end method

.method public setItemOnTouchListener(ILccsanandroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "menuItemId"    # I
    .param p2, "onTouchListener"    # Lccsanandroid/view/View$OnTouchListener;

    .line 664
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemOnTouchListener(ILccsanandroid/view/View$OnTouchListener;)V

    .line 665
    return-void
.end method

.method public setItemRippleColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "itemRippleColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 510
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Lccsanandroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 512
    if-nez p1, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 515
    :cond_0
    return-void

    .line 518
    :cond_1
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 519
    if-nez p1, :cond_2

    .line 520
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 522
    :cond_2
    nop

    .line 523
    invoke-static {p1}, Lccsancom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 524
    .local v0, "rippleDrawableColor":Lccsanandroid/content/res/ColorStateList;
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 525
    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    new-instance v3, Lccsanandroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v0, v1, v1}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 527
    :cond_3
    new-instance v1, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 531
    .local v1, "rippleDrawable":Lccsanandroid/graphics/drawable/GradientDrawable;
    const v2, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 532
    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 533
    .local v2, "rippleDrawableCompat":Lccsanandroid/graphics/drawable/Drawable;
    invoke-static {v2, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 534
    iget-object v3, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v3, v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 537
    .end local v0    # "rippleDrawableColor":Lccsanandroid/content/res/ColorStateList;
    .end local v1    # "rippleDrawable":Lccsanandroid/graphics/drawable/GradientDrawable;
    .end local v2    # "rippleDrawableCompat":Lccsanandroid/graphics/drawable/Drawable;
    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I

    .line 621
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    .line 622
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I

    .line 602
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    .line 603
    return-void
.end method

.method public setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 434
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 435
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "labelVisibilityMode"    # I

    .line 579
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 580
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 581
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 583
    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 329
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 330
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 317
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 318
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I

    .line 556
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Lccsanandroid/view/MenuItem;

    move-result-object v0

    .line 557
    .local v0, "item":Lccsanandroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 558
    iget-object v1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;Lccsanandroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem;->setChecked(Z)Lccsanandroid/view/MenuItem;

    .line 562
    :cond_0
    return-void
.end method
