.class public Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Lccsancom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    .line 40
    return-void
.end method


# virtual methods
.method public actualDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 96
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 97
    return-void
.end method

.method public actualIsOpaque()Z
    .locals 1

    .line 110
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 1

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 45
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 50
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 87
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->draw(Lccsanandroid/graphics/Canvas;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 92
    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 70
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 71
    return-void
.end method

.method public setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 1
    .param p1, "revealInfo"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 61
    return-void
.end method
