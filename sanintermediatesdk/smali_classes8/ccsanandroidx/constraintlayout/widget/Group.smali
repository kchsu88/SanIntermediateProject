.class public Lccsanandroidx/constraintlayout/widget/Group;
.super Lccsanandroidx/constraintlayout/widget/ConstraintHelper;
.source "Group.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected init(Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 56
    invoke-super {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->init(Lccsanandroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/widget/Group;->mUseViewMeasure:Z

    .line 58
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 62
    invoke-super {p0}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 63
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Group;->applyLayoutFeatures()V

    .line 64
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 74
    invoke-super {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    .line 75
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Group;->applyLayoutFeatures()V

    .line 76
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 68
    invoke-super {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Group;->applyLayoutFeatures()V

    .line 70
    return-void
.end method

.method public updatePostLayout(Lccsanandroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3
    .param p1, "container"    # Lccsanandroidx/constraintlayout/widget/ConstraintLayout;

    .line 84
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Group;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 85
    .local v0, "params":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 86
    iget-object v1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1, v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 87
    return-void
.end method
