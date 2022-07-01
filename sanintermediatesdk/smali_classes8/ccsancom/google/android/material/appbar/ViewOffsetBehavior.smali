.class Lccsancom/google/android/material/appbar/ViewOffsetBehavior;
.super Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lccsanandroid/view/View;",
        ">",
        "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private tempLeftRightOffset:I

.field private tempTopBottomOffset:I

.field private viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 31
    iput v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 36
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 31
    iput v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .line 92
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 88
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .locals 1

    .line 112
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->isHorizontalOffsetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .locals 1

    .line 102
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->isVerticalOffsetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p1, p2, p3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Lccsanandroid/view/View;I)V

    .line 67
    return-void
.end method

.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 43
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)V

    .line 45
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v0, p2}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    .line 48
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 49
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 51
    iget v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 52
    iget-object v2, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v2, v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 53
    iput v1, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 55
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    if-eqz v0, :cond_2

    .line 56
    iget-object v2, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v2, v0}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 57
    iput v1, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 60
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .locals 1
    .param p1, "horizontalOffsetEnabled"    # Z

    .line 106
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->setHorizontalOffsetEnabled(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 79
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0

    .line 82
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 70
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0

    .line 73
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public setVerticalOffsetEnabled(Z)V
    .locals 1
    .param p1, "verticalOffsetEnabled"    # Z

    .line 96
    .local p0, "this":Lccsancom/google/android/material/appbar/ViewOffsetBehavior;, "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lccsancom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/appbar/ViewOffsetHelper;->setVerticalOffsetEnabled(Z)V

    .line 99
    :cond_0
    return-void
.end method
