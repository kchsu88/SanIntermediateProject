.class Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;
.super Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderApi26"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V
    .locals 0
    .param p1, "compat"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compat"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    .line 99
    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILccsanandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "virtualViewId",
            "info",
            "extraDataKey",
            "arguments"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;->mCompat:Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 105
    invoke-static {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 104
    invoke-virtual {v0, p1, v1, p3, p4}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->addExtraDataToAccessibilityNodeInfo(ILccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 106
    return-void
.end method
