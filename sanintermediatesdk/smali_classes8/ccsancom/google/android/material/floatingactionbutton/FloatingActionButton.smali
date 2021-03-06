.class public Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lccsancom/google/android/material/internal/VisibilityAwareImageButton;
.source "FloatingActionButton.java"

# interfaces
.implements Lccsanandroidx/core/view/TintableBackgroundView;
.implements Lccsanandroidx/core/widget/TintableImageSourceView;
.implements Lccsancom/google/android/material/expandable/ExpandableTransformationWidget;
.implements Lccsancom/google/android/material/shape/Shapeable;
.implements Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$Size;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final AUTO_MINI_LARGEST_SCREEN_WIDTH:I = 0x1d6

.field private static final DEF_STYLE_RES:I

.field private static final EXPANDABLE_WIDGET_HELPER_KEY:Ljava/lang/String; = "expandableWidgetHelper"

.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field public static final NO_CUSTOM_SIZE:I = 0x0

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private backgroundTint:Lccsanandroid/content/res/ColorStateList;

.field private backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private borderWidth:I

.field compatPadding:Z

.field private customSize:I

.field private final expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

.field private final imageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

.field private imageMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private imagePadding:I

.field private imageTint:Lccsanandroid/content/res/ColorStateList;

.field private impl:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field private maxImageSize:I

.field private rippleColor:Lccsanandroid/content/res/ColorStateList;

.field final shadowPadding:Lccsanandroid/graphics/Rect;

.field private size:I

.field private final touchArea:Lccsanandroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    sget v0, Lccsancom/google/android/material/R$style;->Widget_Design_FloatingActionButton:I

    sput v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 201
    sget v0, Lccsancom/google/android/material/R$attr;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->DEF_STYLE_RES:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v7, v8}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 188
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-direct {v2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    .line 189
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-direct {v2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Lccsanandroid/graphics/Rect;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    .line 211
    .end local p1    # "context":Lccsanandroid/content/Context;
    .local v10, "context":Lccsanandroid/content/Context;
    sget-object v3, Lccsancom/google/android/material/R$styleable;->FloatingActionButton:[I

    const/4 v11, 0x0

    new-array v6, v11, [I

    .line 212
    move-object v1, v10

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 215
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_backgroundTint:I

    .line 216
    invoke-static {v10, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    .line 218
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_backgroundTintMode:I

    .line 220
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 219
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lccsancom/google/android/material/internal/ViewUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 221
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_rippleColor:I

    .line 222
    invoke-static {v10, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 224
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    .line 225
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_fabCustomSize:I

    .line 226
    invoke-virtual {v1, v2, v11}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 227
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v1, v2, v11}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->borderWidth:I

    .line 228
    sget v2, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_elevation:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 229
    .local v2, "elevation":F
    sget v4, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_hoveredFocusedTranslationZ:I

    .line 230
    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 231
    .local v4, "hoveredFocusedTranslationZ":F
    sget v5, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    .line 232
    invoke-virtual {v1, v5, v3}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 233
    .local v3, "pressedTranslationZ":F
    sget v5, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v1, v5, v11}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 234
    nop

    .line 235
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccsancom/google/android/material/R$dimen;->mtrl_fab_min_touch_target:I

    invoke-virtual {v5, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 236
    .local v5, "minTouchTargetSize":I
    sget v6, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v1, v6, v11}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    .line 238
    sget v6, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_showMotionSpec:I

    .line 239
    invoke-static {v10, v1, v6}, Lccsancom/google/android/material/animation/MotionSpec;->createFromAttribute(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v6

    .line 240
    .local v6, "showMotionSpec":Lccsancom/google/android/material/animation/MotionSpec;
    sget v12, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_hideMotionSpec:I

    .line 241
    invoke-static {v10, v1, v12}, Lccsancom/google/android/material/animation/MotionSpec;->createFromAttribute(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v12

    .line 242
    .local v12, "hideMotionSpec":Lccsancom/google/android/material/animation/MotionSpec;
    sget-object v13, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lccsancom/google/android/material/shape/CornerSize;

    .line 243
    invoke-static {v10, v7, v8, v9, v13}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v9

    .line 245
    invoke-virtual {v9}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v9

    .line 247
    .local v9, "shapeAppearance":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    sget v13, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_ensureMinTouchTargetSize:I

    .line 248
    invoke-virtual {v1, v13, v11}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 250
    .local v11, "ensureMinTouchTargetSize":Z
    sget v13, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_android_enabled:I

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    invoke-virtual {v0, v13}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setEnabled(Z)V

    .line 252
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 254
    new-instance v13, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {v13, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;-><init>(Lccsanandroid/widget/ImageView;)V

    iput-object v13, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    .line 255
    invoke-virtual {v13, v7, v8}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 257
    new-instance v13, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-direct {v13, v0}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lccsancom/google/android/material/expandable/ExpandableWidget;)V

    iput-object v13, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 259
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v13

    invoke-virtual {v13, v9}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShapeAppearance(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 260
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v13

    iget-object v14, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    iget-object v15, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    move-object/from16 p1, v1

    .end local v1    # "a":Lccsanandroid/content/res/TypedArray;
    .local p1, "a":Lccsanandroid/content/res/TypedArray;
    iget-object v1, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    iget v7, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->borderWidth:I

    .line 261
    invoke-virtual {v13, v14, v15, v1, v7}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->initializeBackgroundDrawable(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/content/res/ColorStateList;I)V

    .line 262
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setMinTouchTargetSize(I)V

    .line 263
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setElevation(F)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHoveredFocusedTranslationZ(F)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 266
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    iget v7, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    invoke-virtual {v1, v7}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setMaxImageSize(I)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v6}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 268
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v12}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1, v11}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setEnsureMinTouchTargetSize(Z)V

    .line 271
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->MATRIX:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 101
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imagePadding:I

    return v0
.end method

.method static synthetic access$101(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p1, "x1"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 101
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .locals 2

    .line 1452
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1453
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;

    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/shadow/ShadowViewDelegate;)V

    return-object v0

    .line 1455
    :cond_0
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/shadow/ShadowViewDelegate;)V

    return-object v0
.end method

.method private getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .locals 1

    .line 1444
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    if-nez v0, :cond_0

    .line 1445
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->createImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 1447
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    return-object v0
.end method

.method private getSizeDimension(I)I
    .locals 5
    .param p1, "size"    # I

    .line 788
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    if-eqz v0, :cond_0

    .line 789
    return v0

    .line 792
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 793
    .local v0, "res":Lccsanandroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 805
    :pswitch_0
    sget v1, Lccsancom/google/android/material/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 802
    :pswitch_1
    sget v1, Lccsancom/google/android/material/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 796
    :pswitch_2
    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Lccsanandroid/content/res/Configuration;->screenWidthDp:I

    .line 797
    .local v1, "width":I
    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/res/Configuration;->screenHeightDp:I

    .line 798
    .local v2, "height":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x1d6

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    .line 799
    invoke-direct {p0, v3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 800
    invoke-direct {p0, v3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result v3

    .line 798
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private offsetRectWithShadow(Lccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Lccsanandroid/graphics/Rect;

    .line 892
    iget v0, p1, Lccsanandroid/graphics/Rect;->left:I

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Lccsanandroid/graphics/Rect;->left:I

    .line 893
    iget v0, p1, Lccsanandroid/graphics/Rect;->top:I

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Lccsanandroid/graphics/Rect;->top:I

    .line 894
    iget v0, p1, Lccsanandroid/graphics/Rect;->right:I

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Lccsanandroid/graphics/Rect;->right:I

    .line 895
    iget v0, p1, Lccsanandroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Lccsanandroid/graphics/Rect;->bottom:I

    .line 896
    return-void
.end method

.method private onApplySupportImageTint()V
    .locals 5

    .line 474
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 475
    .local v0, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 476
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Lccsanandroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 480
    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 481
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 485
    .local v1, "color":I
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 486
    .local v2, "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    if-nez v2, :cond_2

    .line 487
    sget-object v2, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 490
    :cond_2
    nop

    .line 491
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 492
    invoke-static {v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 493
    return-void
.end method

.method private static resolveAdjustedSize(II)I
    .locals 4
    .param p0, "desiredSize"    # I
    .param p1, "measureSpec"    # I

    .line 905
    move v0, p0

    .line 906
    .local v0, "result":I
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 907
    .local v1, "specMode":I
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 908
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 925
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 922
    :sswitch_0
    move v0, v2

    .line 923
    goto :goto_0

    .line 912
    :sswitch_1
    move v0, p0

    .line 913
    goto :goto_0

    .line 918
    :sswitch_2
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 919
    nop

    .line 927
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wrapOnVisibilityChangedListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 717
    if-nez p1, :cond_0

    .line 718
    const/4 v0, 0x0

    return-object v0

    .line 721
    :cond_0
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$1;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-object v0
.end method


# virtual methods
.method public addOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 627
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 628
    return-void
.end method

.method public addOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 595
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 596
    return-void
.end method

.method public addTransformationCallback(Lccsancom/google/android/material/animation/TransformationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/animation/TransformationCallback<",
            "+",
            "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1359
    .local p1, "listener":Lccsancom/google/android/material/animation/TransformationCallback;, "Lccsancom/google/android/material/animation/TransformationCallback<+Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/animation/TransformationCallback;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addTransformationCallback(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;)V

    .line 1360
    return-void
.end method

.method public clearCustomSize()V
    .locals 1

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setCustomSize(I)V

    .line 781
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 823
    invoke-super {p0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 824
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 825
    return-void
.end method

.method public getBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 363
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 389
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    .line 1208
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getElevation()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 1

    .line 1244
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getHoveredFocusedTranslationZ()F

    move-result v0

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 1

    .line 1281
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPressedTranslationZ()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 901
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getContentBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentRect(Lccsanandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "rect"    # Lccsanandroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 875
    invoke-direct {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Lccsanandroid/graphics/Rect;)V

    .line 876
    const/4 v0, 0x1

    return v0

    .line 878
    :cond_0
    return v1
.end method

.method public getCustomSize()I
    .locals 1

    .line 770
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 1

    .line 651
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->getExpandedComponentIdHint()I

    move-result v0

    return v0
.end method

.method public getHideMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 1335
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getHideMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0
.end method

.method public getMeasuredContentRect(Lccsanandroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Lccsanandroid/graphics/Rect;

    .line 887
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 888
    invoke-direct {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Lccsanandroid/graphics/Rect;)V

    .line 889
    return-void
.end method

.method public getRippleColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColorStateList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 314
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 538
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getShapeAppearance()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getShowMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 1311
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getShowMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 711
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    return v0
.end method

.method getSizeDimension()I
    .locals 1

    .line 784
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 456
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 470
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    return v0
.end method

.method public hide()V
    .locals 1

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 609
    return-void
.end method

.method public hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 619
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 620
    return-void
.end method

.method hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 2
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    .param p2, "fromUser"    # Z

    .line 623
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 624
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 641
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isOrWillBeHidden()Z
    .locals 1

    .line 735
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v0

    return v0
.end method

.method public isOrWillBeShown()Z
    .locals 1

    .line 739
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 829
    invoke-super {p0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 830
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 831
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 811
    invoke-super {p0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 812
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onAttachedToWindow()V

    .line 813
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 817
    invoke-super {p0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 818
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onDetachedFromWindow()V

    .line 819
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 276
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 278
    .local v0, "preferredSize":I
    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imagePadding:I

    .line 279
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 281
    invoke-static {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    .line 282
    .local v1, "w":I
    invoke-static {v0, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v2

    .line 286
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 289
    .local v3, "d":I
    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v4, v4, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    .line 291
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 851
    instance-of v0, p1, Lccsancom/google/android/material/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    .line 852
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 853
    return-void

    .line 856
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/stateful/ExtendableSavedState;

    .line 857
    .local v0, "ess":Lccsancom/google/android/material/stateful/ExtendableSavedState;
    invoke-virtual {v0}, Lccsancom/google/android/material/stateful/ExtendableSavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 859
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    iget-object v2, v0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    .line 860
    const-string v3, "expandableWidgetHelper"

    invoke-virtual {v2, v3}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Bundle;

    .line 859
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->onRestoreInstanceState(Lccsanandroid/os/Bundle;)V

    .line 861
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 5

    .line 835
    invoke-super {p0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 836
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    if-nez v0, :cond_0

    .line 837
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 840
    :cond_0
    new-instance v1, Lccsancom/google/android/material/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/stateful/ExtendableSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 841
    .local v1, "state":Lccsancom/google/android/material/stateful/ExtendableSavedState;
    iget-object v2, v1, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 842
    invoke-virtual {v3}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->onSaveInstanceState()Lccsanandroid/os/Bundle;

    move-result-object v3

    .line 841
    const-string v4, "expandableWidgetHelper"

    invoke-virtual {v2, v4, v3}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    return-object v1
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 932
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x0

    return v0

    .line 938
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 631
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->removeOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 632
    return-void
.end method

.method public removeOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 599
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->removeOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 600
    return-void
.end method

.method public removeTransformationCallback(Lccsancom/google/android/material/animation/TransformationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/animation/TransformationCallback<",
            "+",
            "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1368
    .local p1, "listener":Lccsancom/google/android/material/animation/TransformationCallback;, "Lccsancom/google/android/material/animation/TransformationCallback<+Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/animation/TransformationCallback;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->removeTransformationCallback(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;)V

    .line 1369
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 507
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 497
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .line 502
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method public setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 374
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 375
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    .line 376
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 378
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 401
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 402
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 403
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 405
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 1220
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setElevation(F)V

    .line 1221
    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1232
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    .line 1233
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 1
    .param p1, "translationZ"    # F

    .line 1257
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHoveredFocusedTranslationZ(F)V

    .line 1258
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1270
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    .line 1271
    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 1
    .param p1, "translationZ"    # F

    .line 1293
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 1294
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1305
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    .line 1306
    return-void
.end method

.method public setCustomSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 753
    if-ltz p1, :cond_1

    .line 757
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    if-eq p1, v0, :cond_0

    .line 758
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 759
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 761
    :cond_0
    return-void

    .line 754
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 1196
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setElevation(F)V

    .line 1197
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateShapeElevation(F)V

    .line 1198
    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 559
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getEnsureMinTouchTargetSize()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 560
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setEnsureMinTouchTargetSize(Z)V

    .line 561
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 563
    :cond_0
    return-void
.end method

.method public setExpanded(Z)Z
    .locals 1
    .param p1, "expanded"    # Z

    .line 636
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->setExpanded(Z)Z

    move-result v0

    return v0
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1
    .param p1, "expandedComponentIdHint"    # I

    .line 646
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->setExpandedComponentIdHint(I)V

    .line 647
    return-void
.end method

.method public setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 1344
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 1345
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1353
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 1354
    return-void
.end method

.method public setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 519
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 520
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 521
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateImageMatrixScale()V

    .line 522
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 523
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    .line 526
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 513
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Lccsanandroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 514
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    .line 515
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 328
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 329
    return-void
.end method

.method public setRippleColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 342
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 343
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 344
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 346
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .line 1422
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setScaleX(F)V

    .line 1423
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onScaleChanged()V

    .line 1424
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .line 1428
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setScaleY(F)V

    .line 1429
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onScaleChanged()V

    .line 1430
    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 1
    .param p1, "shadowPaddingEnabled"    # Z

    .line 1440
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShadowPaddingEnabled(Z)V

    .line 1441
    return-void
.end method

.method public setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "shapeAppearance"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 531
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShapeAppearance(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 532
    return-void
.end method

.method public setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 1320
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 1321
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1329
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 1330
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 696
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 697
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    if-eq p1, v0, :cond_0

    .line 698
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    .line 699
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 701
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 413
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 414
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 432
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 433
    return-void
.end method

.method public setSupportImageTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 447
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 448
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Lccsanandroid/content/res/ColorStateList;

    .line 449
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    .line 451
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 461
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 462
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 463
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    .line 465
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F

    .line 1404
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationX(F)V

    .line 1405
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onTranslationChanged()V

    .line 1406
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1
    .param p1, "translationY"    # F

    .line 1410
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationY(F)V

    .line 1411
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onTranslationChanged()V

    .line 1412
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1
    .param p1, "translationZ"    # F

    .line 1416
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationZ(F)V

    .line 1417
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onTranslationChanged()V

    .line 1418
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1
    .param p1, "useCompatPadding"    # Z

    .line 664
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    if-eq v0, p1, :cond_0

    .line 665
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 666
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onCompatShadowChanged()V

    .line 668
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 567
    invoke-super {p0, p1}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    .line 568
    return-void
.end method

.method public shouldEnsureMinTouchTargetSize()Z
    .locals 1

    .line 549
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getEnsureMinTouchTargetSize()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 577
    return-void
.end method

.method public show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 588
    return-void
.end method

.method show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 2
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    .param p2, "fromUser"    # Z

    .line 591
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 592
    return-void
.end method
