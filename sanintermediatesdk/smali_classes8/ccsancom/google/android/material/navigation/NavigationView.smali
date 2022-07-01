.class public Lccsancom/google/android/material/navigation/NavigationView;
.super Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/navigation/NavigationView$SavedState;,
        Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field listener:Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Lccsancom/google/android/material/internal/NavigationMenu;

.field private menuInflater:Lccsanandroid/view/MenuInflater;

.field private onGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

.field private final tmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lccsancom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    .line 101
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lccsancom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    .line 103
    sget v0, Lccsancom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lccsancom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/navigation/NavigationView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 122
    sget v0, Lccsancom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/navigation/NavigationView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 126
    sget v6, Lccsancom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v6}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 107
    new-instance v7, Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {v7}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;-><init>()V

    iput-object v7, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    .line 128
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 131
    new-instance v8, Lccsancom/google/android/material/internal/NavigationMenu;

    invoke-direct {v8, p1}, Lccsancom/google/android/material/internal/NavigationMenu;-><init>(Lccsanandroid/content/Context;)V

    iput-object v8, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    .line 134
    sget-object v2, Lccsancom/google/android/material/R$styleable;->NavigationView:[I

    const/4 v9, 0x0

    new-array v5, v9, [I

    .line 135
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, v6

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    .line 149
    :cond_1
    nop

    .line 150
    invoke-static {p1, p2, p3, v6}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 151
    .local v1, "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 152
    .local v2, "orig":Lccsanandroid/graphics/drawable/Drawable;
    new-instance v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v3, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 153
    .local v3, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    instance-of v4, v2, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 154
    move-object v4, v2

    check-cast v4, Lccsanandroid/graphics/drawable/ColorDrawable;

    .line 155
    invoke-virtual {v4}, Lccsanandroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-static {v4}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 157
    :cond_2
    invoke-virtual {v3, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 158
    invoke-static {p0, v3}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 161
    .end local v1    # "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .end local v2    # "orig":Lccsanandroid/graphics/drawable/Drawable;
    .end local v3    # "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    :cond_3
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v0, v1, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 164
    :cond_4
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v0, v1, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    .line 166
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v0, v1, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->maxWidth:I

    .line 169
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    sget v1, Lccsancom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .local v1, "itemIconTint":Lccsanandroid/content/res/ColorStateList;
    goto :goto_0

    .line 172
    .end local v1    # "itemIconTint":Lccsanandroid/content/res/ColorStateList;
    :cond_5
    const v1, 0x1010038

    invoke-direct {p0, v1}, Lccsancom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 175
    .restart local v1    # "itemIconTint":Lccsanandroid/content/res/ColorStateList;
    :goto_0
    const/4 v2, 0x0

    .line 176
    .local v2, "textAppearanceSet":Z
    const/4 v3, 0x0

    .line 177
    .local v3, "textAppearance":I
    sget v4, Lccsancom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 178
    sget v4, Lccsancom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, v4, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 179
    const/4 v2, 0x1

    .line 182
    :cond_6
    sget v4, Lccsancom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 183
    sget v4, Lccsancom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v0, v4, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    .line 186
    :cond_7
    const/4 v4, 0x0

    .line 187
    .local v4, "itemTextColor":Lccsanandroid/content/res/ColorStateList;
    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 188
    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 191
    :cond_8
    if-nez v2, :cond_9

    if-nez v4, :cond_9

    .line 193
    const v5, 0x1010036

    invoke-direct {p0, v5}, Lccsancom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 196
    :cond_9
    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v0, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 199
    .local v5, "itemBackground":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v5, :cond_a

    invoke-direct {p0, v0}, Lccsancom/google/android/material/navigation/NavigationView;->hasShapeAppearance(Lccsanandroidx/appcompat/widget/TintTypedArray;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 200
    invoke-direct {p0, v0}, Lccsancom/google/android/material/navigation/NavigationView;->createDefaultItemBackground(Lccsanandroidx/appcompat/widget/TintTypedArray;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 203
    :cond_a
    sget v6, Lccsancom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v0, v6}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 204
    sget v6, Lccsancom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    .line 205
    invoke-virtual {v0, v6, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 206
    .local v6, "itemHorizontalPadding":I
    invoke-virtual {v7, v6}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 208
    .end local v6    # "itemHorizontalPadding":I
    :cond_b
    sget v6, Lccsancom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 209
    invoke-virtual {v0, v6, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 211
    .local v6, "itemIconPadding":I
    sget v10, Lccsancom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lccsancom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 213
    new-instance v10, Lccsancom/google/android/material/navigation/NavigationView$1;

    invoke-direct {v10, p0}, Lccsancom/google/android/material/navigation/NavigationView$1;-><init>(Lccsancom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v8, v10}, Lccsancom/google/android/material/internal/NavigationMenu;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 223
    invoke-virtual {v7, v11}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setId(I)V

    .line 224
    invoke-virtual {v7, p1, v8}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->initForMenu(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 225
    invoke-virtual {v7, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 226
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getOverScrollMode()I

    move-result v10

    invoke-virtual {v7, v10}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    .line 227
    if-eqz v2, :cond_c

    .line 228
    invoke-virtual {v7, v3}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 230
    :cond_c
    invoke-virtual {v7, v4}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 231
    invoke-virtual {v7, v5}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {v7, v6}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 233
    invoke-virtual {v8, v7}, Lccsancom/google/android/material/internal/NavigationMenu;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;)V

    .line 234
    invoke-virtual {v7, p0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;

    move-result-object v7

    check-cast v7, Lccsanandroid/view/View;

    invoke-virtual {p0, v7}, Lccsancom/google/android/material/navigation/NavigationView;->addView(Lccsanandroid/view/View;)V

    .line 236
    sget v7, Lccsancom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v0, v7}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 237
    sget v7, Lccsancom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v0, v7, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lccsancom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    .line 240
    :cond_d
    sget v7, Lccsancom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v0, v7}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 241
    sget v7, Lccsancom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v0, v7, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lccsancom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Lccsanandroid/view/View;

    .line 244
    :cond_e
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 246
    invoke-direct {p0}, Lccsancom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/navigation/NavigationView;)[I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/navigation/NavigationView;

    .line 98
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/navigation/NavigationView;)Lccsancom/google/android/material/internal/NavigationMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/navigation/NavigationView;

    .line 98
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    return-object v0
.end method

.method private createDefaultColorStateList(I)Lccsanandroid/content/res/ColorStateList;
    .locals 12
    .param p1, "baseColorThemeAttr"    # I

    .line 643
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 644
    .local v0, "value":Lccsanandroid/util/TypedValue;
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 645
    return-object v3

    .line 647
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget v4, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 648
    .local v1, "baseColor":Lccsanandroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    .line 649
    invoke-virtual {v4}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lccsanandroidx/appcompat/R$attr;->colorPrimary:I

    .line 650
    invoke-virtual {v4, v5, v0, v2}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 651
    return-object v3

    .line 653
    :cond_1
    iget v3, v0, Lccsanandroid/util/TypedValue;->data:I

    .line 654
    .local v3, "colorPrimary":I
    invoke-virtual {v1}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 655
    .local v4, "defaultColor":I
    new-instance v5, Lccsanandroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v7, v6, [[I

    sget-object v8, Lccsancom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v10, Lccsancom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v10, v7, v2

    sget-object v10, Lccsancom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    const/4 v11, 0x2

    aput-object v10, v7, v11

    new-array v6, v6, [I

    .line 658
    invoke-virtual {v1, v8, v4}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v9

    aput v3, v6, v2

    aput v4, v6, v11

    invoke-direct {v5, v7, v6}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 655
    return-object v5
.end method

.method private final createDefaultItemBackground(Lccsanandroidx/appcompat/widget/TintTypedArray;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "a"    # Lccsanandroidx/appcompat/widget/TintTypedArray;

    .line 285
    sget v0, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 286
    .local v0, "shapeAppearanceResId":I
    sget v2, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 287
    invoke-virtual {p1, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 288
    .local v2, "shapeAppearanceOverlayResId":I
    new-instance v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 291
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    .line 290
    invoke-static {v4, v0, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 293
    .local v3, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    nop

    .line 295
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 294
    invoke-static {v4, p1, v5}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/TintTypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 297
    sget v4, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, v4, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 298
    .local v4, "insetLeft":I
    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 299
    .local v11, "insetTop":I
    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 300
    .local v12, "insetRight":I
    sget v5, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, v5, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 301
    .local v1, "insetBottom":I
    new-instance v13, Lccsanandroid/graphics/drawable/InsetDrawable;

    move-object v5, v13

    move-object v6, v3

    move v7, v4

    move v8, v11

    move v9, v12

    move v10, v1

    invoke-direct/range {v5 .. v10}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    return-object v13
.end method

.method private getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 2

    .line 635
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->menuInflater:Lccsanandroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->menuInflater:Lccsanandroid/view/MenuInflater;

    .line 638
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->menuInflater:Lccsanandroid/view/MenuInflater;

    return-object v0
.end method

.method private hasShapeAppearance(Lccsanandroidx/appcompat/widget/TintTypedArray;)Z
    .locals 1
    .param p1, "a"    # Lccsanandroidx/appcompat/widget/TintTypedArray;

    .line 258
    sget v0, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lccsancom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 259
    invoke-virtual {p1, v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 258
    :goto_1
    return v0
.end method

.method private setupInsetScrimsListener()V
    .locals 2

    .line 678
    new-instance v0, Lccsancom/google/android/material/navigation/NavigationView$2;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/navigation/NavigationView$2;-><init>(Lccsancom/google/android/material/navigation/NavigationView;)V

    iput-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 698
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 699
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 701
    return-void
.end method


# virtual methods
.method public addHeaderView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 396
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Lccsanandroid/view/View;)V

    .line 397
    return-void
.end method

.method public getCheckedItem()Lccsanandroid/view/MenuItem;
    .locals 1

    .line 594
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getCheckedItem()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 414
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 425
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getHeaderView(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 478
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getItemBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 510
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 541
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 436
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getItemTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 631
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getItemMaxLines()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 457
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->getItemTextColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lccsanandroid/view/Menu;
    .locals 1

    .line 377
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    return-object v0
.end method

.method public inflateHeaderView(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "res"    # I

    .line 387
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->inflateHeaderView(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 368
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 369
    invoke-direct {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/MenuInflater;->inflate(ILccsanandroid/view/Menu;)V

    .line 370
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 371
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 372
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 264
    invoke-super {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 266
    invoke-static {p0}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Lccsanandroid/view/View;)V

    .line 267
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 664
    invoke-super {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 665
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 670
    :goto_0
    return-void
.end method

.method protected onInsetsChanged(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 357
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 358
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 336
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 339
    :sswitch_0
    goto :goto_0

    .line 346
    :sswitch_1
    iget v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {v0, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 341
    :sswitch_2
    nop

    .line 343
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lccsancom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    invoke-static {v0, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 344
    nop

    .line 350
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 351
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 3
    .param p1, "savedState"    # Lccsanandroid/os/Parcelable;

    .line 315
    instance-of v0, p1, Lccsancom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 316
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 317
    return-void

    .line 319
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/navigation/NavigationView$SavedState;

    .line 320
    .local v0, "state":Lccsancom/google/android/material/navigation/NavigationView$SavedState;
    invoke-virtual {v0}, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 321
    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    iget-object v2, v0, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->menuState:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/internal/NavigationMenu;->restorePresenterStates(Lccsanandroid/os/Bundle;)V

    .line 322
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 4

    .line 306
    invoke-super {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 307
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    new-instance v1, Lccsancom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/navigation/NavigationView$SavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 308
    .local v1, "state":Lccsancom/google/android/material/navigation/NavigationView$SavedState;
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->menuState:Lccsanandroid/os/Bundle;

    .line 309
    iget-object v2, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    iget-object v3, v1, Lccsancom/google/android/material/navigation/NavigationView$SavedState;->menuState:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/internal/NavigationMenu;->savePresenterStates(Lccsanandroid/os/Bundle;)V

    .line 310
    return-object v1
.end method

.method public removeHeaderView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 405
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->removeHeaderView(Lccsanandroid/view/View;)V

    .line 406
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 3
    .param p1, "id"    # I

    .line 570
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenu;->findItem(I)Lccsanandroid/view/MenuItem;

    move-result-object v0

    .line 571
    .local v0, "item":Lccsanandroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 574
    :cond_0
    return-void
.end method

.method public setCheckedItem(Lccsanandroid/view/MenuItem;)V
    .locals 3
    .param p1, "checkedItem"    # Lccsanandroid/view/MenuItem;

    .line 582
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->menu:Lccsancom/google/android/material/internal/NavigationMenu;

    invoke-interface {p1}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenu;->findItem(I)Lccsanandroid/view/MenuItem;

    move-result-object v0

    .line 583
    .local v0, "item":Lccsanandroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 589
    return-void

    .line 586
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 271
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 272
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->setElevation(F)V

    .line 274
    :cond_0
    invoke-static {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setElevation(Lccsanandroid/view/View;F)V

    .line 275
    return-void
.end method

.method public setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "itemBackground"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 499
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 500
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 489
    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/core/content/ContextCompat;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/navigation/NavigationView;->setItemBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 490
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 520
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 521
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2
    .param p1, "paddingResource"    # I

    .line 530
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 531
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 551
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 552
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2
    .param p1, "paddingResource"    # I

    .line 561
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lccsancom/google/android/material/navigation/NavigationView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 562
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1, "iconSize"    # I

    .line 613
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    .line 614
    return-void
.end method

.method public setItemIconTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 446
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 447
    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1
    .param p1, "itemMaxLines"    # I

    .line 622
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    .line 623
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 603
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 604
    return-void
.end method

.method public setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 467
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 468
    return-void
.end method

.method public setNavigationItemSelectedListener(Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    .line 331
    iput-object p1, p0, Lccsancom/google/android/material/navigation/NavigationView;->listener:Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    .line 332
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "overScrollMode"    # I

    .line 251
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->setOverScrollMode(I)V

    .line 252
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView;->presenter:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    .line 255
    :cond_0
    return-void
.end method
