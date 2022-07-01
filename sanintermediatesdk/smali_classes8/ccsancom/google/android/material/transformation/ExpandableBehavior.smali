.class public abstract Lccsancom/google/android/material/transformation/ExpandableBehavior;
.super Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lccsanandroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STATE_COLLAPSED:I = 0x2

.field private static final STATE_EXPANDED:I = 0x1

.field private static final STATE_UNINITIALIZED:I


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 70
    invoke-direct {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/transformation/ExpandableBehavior;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transformation/ExpandableBehavior;

    .line 43
    iget v0, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return v0
.end method

.method private didStateChange(Z)Z
    .locals 4
    .param p1, "expanded"    # Z

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 152
    iget v2, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 155
    :cond_2
    iget v2, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-ne v2, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static from(Lccsanandroid/view/View;Ljava/lang/Class;)Lccsancom/google/android/material/transformation/ExpandableBehavior;
    .locals 4
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsancom/google/android/material/transformation/ExpandableBehavior;",
            ">(",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 168
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    .local v0, "params":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, v0

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 173
    invoke-virtual {v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 174
    .local v1, "behavior":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v2, v1, Lccsancom/google/android/material/transformation/ExpandableBehavior;

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/transformation/ExpandableBehavior;

    return-object v2

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with ExpandableBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .end local v1    # "behavior":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view is not a child of CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected findExpandableWidget(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)Lccsancom/google/android/material/expandable/ExpandableWidget;
    .locals 5
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;

    .line 139
    invoke-virtual {p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 142
    .local v3, "dependency":Lccsanandroid/view/View;
    invoke-virtual {p0, p1, p2, v3}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->layoutDependsOn(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v3

    check-cast v4, Lccsancom/google/android/material/expandable/ExpandableWidget;

    return-object v4

    .line 140
    .end local v3    # "dependency":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public abstract layoutDependsOn(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
.end method

.method public onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 5
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 126
    move-object v0, p3

    check-cast v0, Lccsancom/google/android/material/expandable/ExpandableWidget;

    .line 127
    .local v0, "dep":Lccsancom/google/android/material/expandable/ExpandableWidget;
    invoke-interface {v0}, Lccsancom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v1

    .line 128
    .local v1, "expanded":Z
    invoke-direct {p0, v1}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v0}, Lccsancom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 130
    move-object v2, v0

    check-cast v2, Lccsanandroid/view/View;

    invoke-interface {v0}, Lccsancom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v4

    invoke-virtual {p0, v2, p2, v4, v3}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z

    move-result v2

    return v2

    .line 133
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected abstract onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z
.end method

.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 4
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 98
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->findExpandableWidget(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)Lccsancom/google/android/material/expandable/ExpandableWidget;

    move-result-object v0

    .line 100
    .local v0, "dep":Lccsancom/google/android/material/expandable/ExpandableWidget;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lccsancom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v0}, Lccsancom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 102
    iget v1, p0, Lccsancom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 103
    .local v1, "expectedState":I
    nop

    .line 104
    invoke-virtual {p2}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;

    invoke-direct {v3, p0, p2, v1, v0}, Lccsancom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lccsancom/google/android/material/transformation/ExpandableBehavior;Lccsanandroid/view/View;ILccsancom/google/android/material/expandable/ExpandableWidget;)V

    .line 105
    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 120
    .end local v0    # "dep":Lccsancom/google/android/material/expandable/ExpandableWidget;
    .end local v1    # "expectedState":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
