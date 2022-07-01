.class Lccsanandroidx/cardview/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Lccsanandroidx/cardview/widget/CardViewImpl;


# instance fields
.field final mCornerRect:Lccsanandroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Lccsanandroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Lccsanandroid/content/Context;Lccsanandroid/content/res/ColorStateList;FFF)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "backgroundColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .line 93
    new-instance v6, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 171
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getCardBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 125
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 146
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 157
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 167
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 162
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 136
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .line 37
    new-instance v0, Lccsanandroidx/cardview/widget/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Lccsanandroidx/cardview/widget/CardViewBaseImpl$1;-><init>(Lccsanandroidx/cardview/widget/CardViewBaseImpl;)V

    sput-object v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 78
    return-void
.end method

.method public initialize(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/Context;Lccsanandroid/content/res/ColorStateList;FFF)V
    .locals 6
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "backgroundColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 83
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->createBackground(Lccsanandroid/content/Context;Lccsanandroid/content/res/ColorStateList;FFF)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    .line 85
    .local v0, "background":Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 86
    invoke-interface {p1, v0}, Lccsanandroidx/cardview/widget/CardViewDelegate;->setCardBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 88
    return-void
.end method

.method public onCompatPaddingChanged(Lccsanandroidx/cardview/widget/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 110
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lccsanandroidx/cardview/widget/CardViewDelegate;)V
    .locals 2
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 114
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 115
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 116
    return-void
.end method

.method public setBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 120
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 121
    return-void
.end method

.method public setElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 141
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 142
    return-void
.end method

.method public setMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 151
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 152
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 153
    return-void
.end method

.method public setRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .line 130
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 131
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 132
    return-void
.end method

.method public updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 99
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 100
    .local v0, "shadowPadding":Lccsanandroid/graphics/Rect;
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Lccsanandroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getMinWidth(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;->getMinHeight(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Lccsanandroidx/cardview/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 103
    iget v1, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v2, v0, Lccsanandroid/graphics/Rect;->top:I

    iget v3, v0, Lccsanandroid/graphics/Rect;->right:I

    iget v4, v0, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Lccsanandroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 105
    return-void
.end method
