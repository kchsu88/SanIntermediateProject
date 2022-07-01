.class public final Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;
.super Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnackbarLayout"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 493
    invoke-direct {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 494
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 497
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 498
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 502
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onMeasure(II)V

    .line 507
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildCount()I

    move-result v0

    .line 508
    .local v0, "childCount":I
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 509
    .local v1, "availableWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 510
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 511
    .local v3, "child":Lccsanandroid/view/View;
    invoke-virtual {v3}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 512
    nop

    .line 513
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 514
    invoke-virtual {v3}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 512
    invoke-virtual {v3, v5, v4}, Lccsanandroid/view/View;->measure(II)V

    .line 509
    .end local v3    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic setBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method
