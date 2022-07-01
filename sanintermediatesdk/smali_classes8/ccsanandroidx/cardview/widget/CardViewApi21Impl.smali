.class Lccsanandroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lccsanandroidx/cardview/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 122
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getCardBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroidx/cardview/widget/RoundRectDrawable;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 118
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawable;->getColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 83
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getCardView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 58
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 68
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getMinWidth(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 63
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 73
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    .line 47
    return-void
.end method

.method public initialize(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/Context;Lccsanandroid/content/res/ColorStateList;FFF)V
    .locals 3
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "backgroundColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 31
    new-instance v0, Lccsanandroidx/cardview/widget/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Lccsanandroidx/cardview/widget/RoundRectDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;F)V

    .line 32
    .local v0, "background":Lccsanandroidx/cardview/widget/RoundRectDrawable;
    invoke-interface {p1, v0}, Lccsanandroidx/cardview/widget/CardViewDelegate;->setCardBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getCardView()Lccsanandroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Lccsanandroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setClipToOutline(Z)V

    .line 36
    invoke-virtual {v1, p5}, Lccsanandroid/view/View;->setElevation(F)V

    .line 37
    invoke-virtual {p0, p1, p6}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V

    .line 38
    return-void
.end method

.method public onCompatPaddingChanged(Lccsanandroidx/cardview/widget/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 103
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V

    .line 104
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lccsanandroidx/cardview/widget/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 108
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V

    .line 109
    return-void
.end method

.method public setBackgroundColor(Lccsanandroidx/cardview/widget/CardViewDelegate;Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 113
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawable;->setColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 114
    return-void
.end method

.method public setElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 78
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getCardView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroid/view/View;->setElevation(F)V

    .line 79
    return-void
.end method

.method public setMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V
    .locals 3
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 51
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    .line 52
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    .line 51
    invoke-virtual {v0, p2, v1, v2}, Lccsanandroidx/cardview/widget/RoundRectDrawable;->setPadding(FZZ)V

    .line 53
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V

    .line 54
    return-void
.end method

.method public setRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .line 42
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Lccsanandroidx/cardview/widget/CardViewDelegate;)Lccsanandroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawable;->setRadius(F)V

    .line 43
    return-void
.end method

.method public updatePadding(Lccsanandroidx/cardview/widget/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Lccsanandroidx/cardview/widget/CardViewDelegate;

    .line 88
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lccsanandroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    .line 93
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/CardViewApi21Impl;->getRadius(Lccsanandroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    .line 94
    .local v1, "radius":F
    nop

    .line 95
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 96
    .local v2, "hPadding":I
    nop

    .line 97
    invoke-interface {p1}, Lccsanandroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v3

    float-to-double v3, v3

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 98
    .local v3, "vPadding":I
    invoke-interface {p1, v2, v3, v2, v3}, Lccsanandroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 99
    return-void
.end method
