.class public Lccsanandroidx/cardview/widget/CardView;
.super Lccsanandroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Lccsanandroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Lccsanandroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 85
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Lccsanandroidx/cardview/widget/CardViewApi21Impl;

    invoke-direct {v0}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;-><init>()V

    sput-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    goto :goto_0

    .line 87
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Lccsanandroidx/cardview/widget/CardViewApi17Impl;

    invoke-direct {v0}, Lccsanandroidx/cardview/widget/CardViewApi17Impl;-><init>()V

    sput-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lccsanandroidx/cardview/widget/CardViewBaseImpl;

    invoke-direct {v0}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    sput-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    .line 92
    :goto_0
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    invoke-interface {v0}, Lccsanandroidx/cardview/widget/CardViewImpl;->initStatic()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/cardview/widget/CardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 117
    sget v0, Lccsanandroidx/cardview/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/cardview/widget/CardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 121
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 108
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    .line 110
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-direct {v2}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lccsanandroidx/cardview/widget/CardView;->mShadowBounds:Lccsanandroid/graphics/Rect;

    .line 447
    new-instance v4, Lccsanandroidx/cardview/widget/CardView$1;

    invoke-direct {v4, v0}, Lccsanandroidx/cardview/widget/CardView$1;-><init>(Lccsanandroidx/cardview/widget/CardView;)V

    iput-object v4, v0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 123
    sget-object v2, Lccsanandroidx/cardview/R$styleable;->CardView:[I

    sget v3, Lccsanandroidx/cardview/R$style;->CardView:I

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v10, v11, v2, v12, v3}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v2

    .line 126
    .local v2, "a":Lccsanandroid/content/res/TypedArray;
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 127
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    move-object v13, v3

    .local v3, "backgroundColor":Lccsanandroid/content/res/ColorStateList;
    goto :goto_1

    .line 130
    .end local v3    # "backgroundColor":Lccsanandroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/cardview/widget/CardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    sget-object v6, Lccsanandroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v3, v6}, Lccsanandroid/content/Context;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v3

    .line 131
    .local v3, "aa":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v3, v5, v5}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 132
    .local v6, "themeColorBackground":I
    invoke-virtual {v3}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 135
    const/4 v7, 0x3

    new-array v7, v7, [F

    .line 136
    .local v7, "hsv":[F
    invoke-static {v6, v7}, Lccsanandroid/graphics/Color;->colorToHSV(I[F)V

    .line 137
    const/4 v8, 0x2

    aget v8, v7, v8

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 138
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/cardview/widget/CardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v8

    sget v9, Lccsanandroidx/cardview/R$color;->cardview_light_background:I

    invoke-virtual {v8, v9}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v8

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/cardview/widget/CardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v8

    sget v9, Lccsanandroidx/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {v8, v9}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 137
    :goto_0
    invoke-static {v8}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v8

    move-object v13, v8

    .line 141
    .end local v3    # "aa":Lccsanandroid/content/res/TypedArray;
    .end local v6    # "themeColorBackground":I
    .end local v7    # "hsv":[F
    .local v13, "backgroundColor":Lccsanandroid/content/res/ColorStateList;
    :goto_1
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 142
    .local v14, "radius":F
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v2, v3, v6}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 143
    .local v15, "elevation":F
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v2, v3, v6}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 144
    .local v3, "maxElevation":F
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v2, v6, v5}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lccsanandroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 145
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lccsanandroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 146
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v2, v6, v5}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 147
    .local v9, "defaultPadding":I
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v2, v6, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Lccsanandroid/graphics/Rect;->left:I

    .line 149
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v2, v6, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Lccsanandroid/graphics/Rect;->top:I

    .line 151
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v2, v6, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Lccsanandroid/graphics/Rect;->right:I

    .line 153
    sget v6, Lccsanandroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v2, v6, v9}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Lccsanandroid/graphics/Rect;->bottom:I

    .line 155
    cmpl-float v1, v15, v3

    if-lez v1, :cond_2

    .line 156
    move v3, v15

    move v1, v3

    goto :goto_2

    .line 155
    :cond_2
    move v1, v3

    .line 158
    .end local v3    # "maxElevation":F
    .local v1, "maxElevation":F
    :goto_2
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {v2, v3, v5}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lccsanandroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 159
    sget v3, Lccsanandroidx/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {v2, v3, v5}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lccsanandroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 160
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 162
    sget-object v3, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    move-object/from16 v5, p1

    move-object v6, v13

    move v7, v14

    move v8, v15

    move/from16 v16, v9

    .end local v9    # "defaultPadding":I
    .local v16, "defaultPadding":I
    move v9, v1

    invoke-interface/range {v3 .. v9}, Lccsanandroidx/cardview/widget/CardViewImpl;->initialize(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/Context;Lccsanandroid/content/res/ColorStateList;FFF)V

    .line 164
    return-void
.end method

.method static synthetic access$001(Lccsanandroidx/cardview/widget/CardView;IIII)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/cardview/widget/CardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Lccsanandroidx/cardview/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/cardview/widget/CardView;
    .param p1, "x1"    # I

    .line 79
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Lccsanandroidx/cardview/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/cardview/widget/CardView;
    .param p1, "x1"    # I

    .line 79
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Lccsanandroid/content/res/ColorStateList;
    .locals 2

    .line 303
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->getBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 387
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->getElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 343
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 313
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 323
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 333
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 413
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->getMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lccsanandroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 364
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->getRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lccsanandroidx/cardview/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 232
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    instance-of v1, v0, Lccsanandroidx/cardview/widget/CardViewApi21Impl;

    if-nez v1, :cond_0

    .line 233
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 234
    .local v1, "widthMode":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 237
    :sswitch_0
    iget-object v2, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v2}, Lccsanandroidx/cardview/widget/CardViewImpl;->getMinWidth(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 238
    .local v2, "minWidth":I
    nop

    .line 239
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 240
    nop

    .line 246
    .end local v2    # "minWidth":I
    :goto_0
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 247
    .local v2, "heightMode":I
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 250
    :sswitch_1
    iget-object v3, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v3}, Lccsanandroidx/cardview/widget/CardViewImpl;->getMinHeight(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 251
    .local v0, "minHeight":I
    nop

    .line 252
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 251
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 253
    nop

    .line 258
    .end local v0    # "minHeight":I
    :goto_1
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onMeasure(II)V

    .line 259
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    goto :goto_2

    .line 260
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onMeasure(II)V

    .line 262
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 283
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsanandroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/res/ColorStateList;)V

    .line 284
    return-void
.end method

.method public setCardBackgroundColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 293
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lccsanandroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 376
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lccsanandroidx/cardview/widget/CardViewImpl;->setElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V

    .line 377
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 226
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 227
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 228
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2
    .param p1, "maxElevation"    # F

    .line 402
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lccsanandroidx/cardview/widget/CardViewImpl;->setMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V

    .line 403
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 272
    iput p1, p0, Lccsanandroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 273
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 274
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 266
    iput p1, p0, Lccsanandroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 267
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 268
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 169
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 174
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2
    .param p1, "preventCornerOverlap"    # Z

    .line 441
    iget-boolean v0, p0, Lccsanandroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 442
    iput-boolean p1, p0, Lccsanandroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 443
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->onPreventCornerOverlapChanged(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 354
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lccsanandroidx/cardview/widget/CardViewImpl;->setRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V

    .line 355
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2
    .param p1, "useCompatPadding"    # Z

    .line 203
    iget-boolean v0, p0, Lccsanandroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 204
    iput-boolean p1, p0, Lccsanandroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 205
    sget-object v0, Lccsanandroidx/cardview/widget/CardView;->IMPL:Lccsanandroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/CardView;->mCardViewDelegate:Lccsanandroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Lccsanandroidx/cardview/widget/CardViewImpl;->onCompatPaddingChanged(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 207
    :cond_0
    return-void
.end method
