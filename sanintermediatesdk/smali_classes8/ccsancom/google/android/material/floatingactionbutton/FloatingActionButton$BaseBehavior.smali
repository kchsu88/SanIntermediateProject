.class public Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;
.super Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private autoHideEnabled:Z

.field private internalAutoHideListener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

.field private tmpRect:Lccsanandroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 973
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-direct {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 975
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 978
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 979
    sget-object v0, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    .line 980
    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 981
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    .line 982
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 985
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 986
    return-void
.end method

.method private static isBottomSheet(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 1035
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1036
    .local v0, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 1037
    move-object v1, v0

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    instance-of v1, v1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    return v1

    .line 1039
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private offsetIfNeeded(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 7
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "fab"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1159
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    iget-object v0, p2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    .line 1161
    .local v0, "padding":Lccsanandroid/graphics/Rect;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->centerX()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->centerY()I

    move-result v1

    if-lez v1, :cond_5

    .line 1162
    nop

    .line 1163
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1165
    .local v1, "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/4 v2, 0x0

    .line 1166
    .local v2, "offsetTB":I
    const/4 v3, 0x0

    .line 1168
    .local v3, "offsetLR":I
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getRight()I

    move-result v4

    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    .line 1170
    iget v3, v0, Lccsanandroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLeft()I

    move-result v4

    iget v5, v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v4, v5, :cond_1

    .line 1173
    iget v4, v0, Lccsanandroid/graphics/Rect;->left:I

    neg-int v3, v4

    .line 1175
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    iget v6, v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_2

    .line 1177
    iget v2, v0, Lccsanandroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1178
    :cond_2
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getTop()I

    move-result v4

    iget v5, v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v5, :cond_3

    .line 1180
    iget v4, v0, Lccsanandroid/graphics/Rect;->top:I

    neg-int v2, v4

    .line 1183
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1184
    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 1186
    :cond_4
    if-eqz v3, :cond_5

    .line 1187
    invoke-static {p2, v3}, Lccsanandroidx/core/view/ViewCompat;->offsetLeftAndRight(Lccsanandroid/view/View;I)V

    .line 1190
    .end local v1    # "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v2    # "offsetTB":I
    .end local v3    # "offsetLR":I
    :cond_5
    return-void
.end method

.method private shouldUpdateVisibility(Lccsanandroid/view/View;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 4
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1049
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    nop

    .line 1050
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1051
    .local v0, "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1052
    return v2

    .line 1055
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 1058
    return v2

    .line 1062
    :cond_1
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getUserSetVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1064
    return v2

    .line 1067
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private updateFabVisibilityForAppBarLayout(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 4
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Lccsancom/google/android/material/appbar/AppBarLayout;
    .param p3, "child"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1074
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-direct {p0, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Lccsanandroid/view/View;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1075
    return v1

    .line 1078
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1079
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 1083
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 1084
    .local v0, "rect":Lccsanandroid/graphics/Rect;
    invoke-static {p1, p2, v0}, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 1086
    iget v2, v0, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lccsancom/google/android/material/appbar/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 1088
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_0

    .line 1091
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 1093
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateFabVisibilityForBottomSheet(Lccsanandroid/view/View;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 5
    .param p1, "bottomSheet"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1098
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Lccsanandroid/view/View;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1099
    return v1

    .line 1101
    :cond_0
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1102
    .local v0, "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 1103
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 1107
    :goto_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)Z
    .locals 0

    .line 964
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    check-cast p2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->getInsetDodgeRect(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getInsetDodgeRect(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p3, "rect"    # Lccsanandroid/graphics/Rect;

    .line 1143
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    iget-object v0, p2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Lccsanandroid/graphics/Rect;

    .line 1144
    .local v0, "shadowPadding":Lccsanandroid/graphics/Rect;
    nop

    .line 1145
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLeft()I

    move-result v1

    iget v2, v0, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 1146
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getTop()I

    move-result v2

    iget v3, v0, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 1147
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getRight()I

    move-result v3

    iget v4, v0, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1148
    invoke-virtual {p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getBottom()I

    move-result v4

    iget v5, v0, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 1144
    invoke-virtual {p3, v1, v2, v3, v4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 1149
    const/4 v1, 0x1

    return v1
.end method

.method public isAutoHideEnabled()Z
    .locals 1

    .line 1009
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1014
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    iget v0, p1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 1017
    const/16 v0, 0x50

    iput v0, p1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 1019
    :cond_0
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 0

    .line 964
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    check-cast p2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 1024
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    instance-of v0, p3, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1027
    move-object v0, p3

    check-cast v0, Lccsancom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    goto :goto_0

    .line 1028
    :cond_0
    invoke-static {p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isBottomSheet(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    invoke-direct {p0, p3, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Lccsanandroid/view/View;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    .line 1031
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 0

    .line 964
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    check-cast p2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z
    .locals 5
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p3, "layoutDirection"    # I

    .line 1116
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-virtual {p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1117
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1118
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 1119
    .local v3, "dependency":Lccsanandroid/view/View;
    instance-of v4, v3, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_0

    .line 1120
    move-object v4, v3

    check-cast v4, Lccsancom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, v4, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/appbar/AppBarLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1121
    goto :goto_1

    .line 1123
    :cond_0
    invoke-static {v3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isBottomSheet(Lccsanandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1124
    invoke-direct {p0, v3, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Lccsanandroid/view/View;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1125
    goto :goto_1

    .line 1117
    .end local v3    # "dependency":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_2
    :goto_1
    invoke-virtual {p1, p2, p3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Lccsanandroid/view/View;I)V

    .line 1132
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->offsetIfNeeded(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 1133
    const/4 v1, 0x1

    return v1
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0
    .param p1, "autoHide"    # Z

    .line 997
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 998
    return-void
.end method

.method public setInternalAutoHideListener(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 1044
    .local p0, "this":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;, "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior<TT;>;"
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 1045
    return-void
.end method
