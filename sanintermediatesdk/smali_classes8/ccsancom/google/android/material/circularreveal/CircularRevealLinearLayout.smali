.class public Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;
.super Lccsanandroid/widget/LinearLayout;
.source "CircularRevealLinearLayout.java"

# interfaces
.implements Lccsancom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public actualDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 94
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 95
    return-void
.end method

.method public actualIsOpaque()Z
    .locals 1

    .line 108
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 1

    .line 43
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 44
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 1

    .line 48
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 49
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 85
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->draw(Lccsanandroid/graphics/Canvas;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 90
    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 75
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 64
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 102
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 69
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 70
    return-void
.end method

.method public setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 1
    .param p1, "revealInfo"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 59
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lccsancom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 60
    return-void
.end method
