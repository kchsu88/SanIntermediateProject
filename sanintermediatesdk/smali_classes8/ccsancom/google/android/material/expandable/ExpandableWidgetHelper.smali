.class public final Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I

.field private final widget:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/expandable/ExpandableWidget;)V
    .locals 1
    .param p1, "widget"    # Lccsancom/google/android/material/expandable/ExpandableWidget;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 37
    iput v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 41
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/View;

    iput-object v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Lccsanandroid/view/View;

    .line 42
    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .locals 3

    .line 91
    iget-object v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 92
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Lccsanandroid/view/View;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 1

    .line 87
    iget v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    return v0
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Bundle;

    .line 71
    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 72
    const-string v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 74
    iget-boolean v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 77
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Bundle;
    .locals 3

    .line 62
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "state":Lccsanandroid/os/Bundle;
    iget-boolean v1, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    const-string v2, "expanded"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    iget v1, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    const-string v2, "expandedComponentIdHint"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    return-object v0
.end method

.method public setExpanded(Z)Z
    .locals 1
    .param p1, "expanded"    # Z

    .line 46
    iget-boolean v0, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eq v0, p1, :cond_0

    .line 47
    iput-boolean p1, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 48
    invoke-direct {p0}, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 0
    .param p1, "expandedComponentIdHint"    # I

    .line 81
    iput p1, p0, Lccsancom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 82
    return-void
.end method
