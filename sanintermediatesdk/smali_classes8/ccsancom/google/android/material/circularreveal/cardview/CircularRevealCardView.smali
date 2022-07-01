.class public Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;
.super Lccsancom/google/android/material/card/MaterialCardView;
.source "CircularRevealCardView.java"

# interfaces
.implements Lccsancom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/card/MaterialCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public actualDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 98
    invoke-super {p0, p1}, Lccsancom/google/android/material/card/MaterialCardView;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 99
    return-void
.end method

.method public actualIsOpaque()Z
    .locals 1

    .line 112
    invoke-super {p0}, Lccsancom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 48
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 1

    .line 52
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 53
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 89
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->draw(Lccsanandroid/graphics/Canvas;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/android/material/card/MaterialCardView;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 94
    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 73
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 63
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 106
    :cond_0
    invoke-super {p0}, Lccsancom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 68
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 69
    return-void
.end method

.method public setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 1
    .param p1, "revealInfo"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 57
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 58
    return-void
.end method
