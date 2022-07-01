.class public Lccsancom/google/android/material/appbar/AppBarLayout$Behavior;
.super Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior<",
        "Lccsancom/google/android/material/appbar/AppBarLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1209
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;-><init>()V

    .line 1210
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 1213
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 1214
    return-void
.end method


# virtual methods
.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .line 1203
    invoke-super {p0}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .line 1203
    invoke-super {p0}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isHorizontalOffsetEnabled()Z
    .locals 1

    .line 1203
    invoke-super {p0}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->isHorizontalOffsetEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVerticalOffsetEnabled()Z
    .locals 1

    .line 1203
    invoke-super {p0}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->isVerticalOffsetEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 0

    .line 1203
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 0

    .line 1203
    invoke-super/range {p0 .. p6}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;II[II)V
    .locals 0

    .line 1203
    invoke-super/range {p0 .. p7}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;IIIII[I)V
    .locals 0

    .line 1203
    invoke-super/range {p0 .. p9}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;IIIII[I)V

    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/os/Parcelable;)V
    .locals 0

    .line 1203
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;)Lccsanandroid/os/Parcelable;
    .locals 0

    .line 1203
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;)Lccsanandroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z
    .locals 0

    .line 1203
    invoke-super/range {p0 .. p6}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;I)V
    .locals 0

    .line 1203
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsanandroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic setDragCallback(Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .locals 0

    .line 1203
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setDragCallback(Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    return-void
.end method

.method public bridge synthetic setHorizontalOffsetEnabled(Z)V
    .locals 0

    .line 1203
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHorizontalOffsetEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    .line 1203
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    .line 1203
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVerticalOffsetEnabled(Z)V
    .locals 0

    .line 1203
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setVerticalOffsetEnabled(Z)V

    return-void
.end method
