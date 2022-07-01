.class public Lccsancom/google/android/material/snackbar/SnackbarContentLayout;
.super Lccsanandroid/widget/LinearLayout;
.source "SnackbarContentLayout.java"

# interfaces
.implements Lccsancom/google/android/material/snackbar/ContentViewCallback;


# instance fields
.field private actionView:Lccsanandroid/widget/Button;

.field private maxInlineActionWidth:I

.field private maxWidth:I

.field private messageView:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lccsancom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    .line 52
    sget v1, Lccsancom/google/android/material/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    .line 53
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 54
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private static updateTopBottomPadding(Lccsanandroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .line 134
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isPaddingRelative(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    nop

    .line 137
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v0

    .line 139
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v1

    .line 135
    invoke-static {p0, v0, p1, v1, p2}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 144
    :goto_0
    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "messagePadTop"    # I
    .param p3, "messagePadBottom"    # I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "changed":Z
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getOrientation()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->setOrientation(I)V

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getPaddingTop()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    .line 125
    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    if-eq v1, p3, :cond_2

    .line 126
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    invoke-static {v1, p2, p3}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->updateTopBottomPadding(Lccsanandroid/view/View;II)V

    .line 127
    const/4 v0, 0x1

    .line 129
    :cond_2
    return v0
.end method


# virtual methods
.method public animateContentIn(II)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .line 148
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setAlpha(F)V

    .line 149
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lccsanandroid/view/ViewPropertyAnimator;->setStartDelay(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 151
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Lccsanandroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setAlpha(F)V

    .line 153
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Lccsanandroid/widget/Button;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->setStartDelay(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 155
    :cond_0
    return-void
.end method

.method public animateContentOut(II)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .line 159
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lccsanandroid/view/ViewPropertyAnimator;->setStartDelay(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 162
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Lccsanandroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setAlpha(F)V

    .line 164
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Lccsanandroid/widget/Button;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->setStartDelay(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 166
    :cond_0
    return-void
.end method

.method public getActionView()Lccsanandroid/widget/Button;
    .locals 1

    .line 69
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    return-object v0
.end method

.method public getMessageView()Lccsanandroid/widget/TextView;
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 59
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    sget v0, Lccsancom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    .line 61
    sget v0, Lccsancom/google/android/material/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/Button;

    iput-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 84
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 86
    iget v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    if-le v0, v1, :cond_0

    .line 87
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 88
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 91
    :cond_0
    nop

    .line 92
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 93
    .local v0, "multiLineVPadding":I
    nop

    .line 94
    invoke-virtual {p0}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 95
    .local v1, "singleLineVPadding":I
    iget-object v2, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2}, Lccsanandroid/widget/TextView;->getLayout()Lccsanandroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 97
    .local v2, "isMultiLine":Z
    :goto_0
    const/4 v5, 0x0

    .line 98
    .local v5, "remeasure":Z
    if-eqz v2, :cond_2

    iget v6, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    .line 100
    invoke-virtual {v6}, Lccsanandroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    if-le v6, v7, :cond_2

    .line 101
    sub-int v3, v0, v1

    invoke-direct {p0, v4, v0, v3}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    const/4 v5, 0x1

    goto :goto_2

    .line 106
    :cond_2
    if-eqz v2, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v1

    .line 107
    .local v4, "messagePadding":I
    :goto_1
    invoke-direct {p0, v3, v4, v4}, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const/4 v5, 0x1

    .line 112
    .end local v4    # "messagePadding":I
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 113
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    :cond_5
    return-void
.end method

.method public setMaxInlineActionWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 169
    iput p1, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 170
    return-void
.end method

.method updateActionTextColorAlphaIfNeeded(F)V
    .locals 4
    .param p1, "actionTextColorAlpha"    # F

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Lccsanandroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    .line 75
    .local v0, "originalActionTextColor":I
    sget v1, Lccsancom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v1}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v1

    .line 76
    .local v1, "colorSurface":I
    nop

    .line 77
    invoke-static {v1, v0, p1}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    .line 78
    .local v2, "actionTextColor":I
    iget-object v3, p0, Lccsancom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Lccsanandroid/widget/Button;

    invoke-virtual {v3, v2}, Lccsanandroid/widget/Button;->setTextColor(I)V

    .line 80
    .end local v0    # "originalActionTextColor":I
    .end local v1    # "colorSurface":I
    .end local v2    # "actionTextColor":I
    :cond_0
    return-void
.end method
