.class public Lccsanandroidx/constraintlayout/widget/Guideline;
.super Lccsanandroid/view/View;
.source "Guideline.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 56
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 61
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 66
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 71
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lccsanandroidx/constraintlayout/widget/Guideline;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public setGuidelineBegin(I)V
    .locals 1
    .param p1, "margin"    # I

    .line 102
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Guideline;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 103
    .local v0, "params":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput p1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 104
    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/widget/Guideline;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setGuidelineEnd(I)V
    .locals 1
    .param p1, "margin"    # I

    .line 113
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Guideline;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 114
    .local v0, "params":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput p1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 115
    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/widget/Guideline;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method public setGuidelinePercent(F)V
    .locals 1
    .param p1, "ratio"    # F

    .line 123
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Guideline;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 124
    .local v0, "params":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput p1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 125
    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/widget/Guideline;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 79
    return-void
.end method
