.class public final Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;,
        Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;,
        Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;,
        Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;,
        Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccessibilityStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager;Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-virtual {p0, v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static addTouchExplorationStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager;Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 3
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "listener"
        }
    .end annotation

    .line 168
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 169
    if-nez p1, :cond_0

    .line 170
    return v1

    .line 172
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V

    invoke-virtual {p0, v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0

    .line 175
    :cond_1
    return v1
.end method

.method public static getEnabledAccessibilityServiceList(Lccsanandroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "feedbackTypeFlags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List<",
            "Lccsanandroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledAccessibilityServiceList(Lccsanandroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isTouchExplorationEnabled(Lccsanandroid/view/accessibility/AccessibilityManager;)Z
    .locals 1
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public static removeAccessibilityStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager;Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-virtual {p0, v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static removeTouchExplorationStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager;Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 3
    .param p0, "manager"    # Lccsanandroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "listener"
        }
    .end annotation

    .line 187
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 188
    if-nez p1, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V

    invoke-virtual {p0, v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Lccsanandroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0

    .line 194
    :cond_1
    return v1
.end method
