.class public final Lccsanandroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Lccsanandroid/view/ViewGroup;)I
    .locals 2
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 114
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getNestedScrollAxes(Lccsanandroid/view/ViewGroup;)I
    .locals 2
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 181
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    return v0

    .line 184
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_1

    .line 185
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingParent;

    invoke-interface {v0}, Lccsanandroidx/core/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v0

    return v0

    .line 187
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isTransitionGroup(Lccsanandroid/view/ViewGroup;)Z
    .locals 2
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 157
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0

    .line 160
    :cond_0
    sget v0, Lccsanandroidx/core/R$id;->tag_transition_group:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 161
    .local v0, "explicit":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 163
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 161
    :goto_1
    return v1
.end method

.method public static onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "child",
            "event"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Lccsanandroid/view/ViewGroup;I)V
    .locals 2
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "mode"
        }
    .end annotation

    .line 130
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewGroup;->setLayoutMode(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Lccsanandroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .param p1, "split"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "split"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 99
    return-void
.end method

.method public static setTransitionGroup(Lccsanandroid/view/ViewGroup;Z)V
    .locals 2
    .param p0, "group"    # Lccsanandroid/view/ViewGroup;
    .param p1, "isTransitionGroup"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "isTransitionGroup"
        }
    .end annotation

    .line 144
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewGroup;->setTransitionGroup(Z)V

    goto :goto_0

    .line 147
    :cond_0
    sget v0, Lccsanandroidx/core/R$id;->tag_transition_group:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 149
    :goto_0
    return-void
.end method
