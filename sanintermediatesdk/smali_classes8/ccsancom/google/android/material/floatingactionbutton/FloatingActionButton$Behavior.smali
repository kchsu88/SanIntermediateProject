.class public Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.super Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<",
        "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 950
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;-><init>()V

    .line 951
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 954
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 955
    return-void
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/graphics/Rect;)Z
    .locals 0

    .line 947
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->getInsetDodgeRect(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isAutoHideEnabled()Z
    .locals 1

    .line 947
    invoke-super {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 947
    invoke-super {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/view/View;)Z
    .locals 0

    .line 947
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z
    .locals 0

    .line 947
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAutoHideEnabled(Z)V
    .locals 0

    .line 947
    invoke-super {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->setAutoHideEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setInternalAutoHideListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0

    .line 947
    invoke-super {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->setInternalAutoHideListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method
