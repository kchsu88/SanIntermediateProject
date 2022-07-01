.class Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
.super Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderApi19"
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

    .line 81
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    .line 82
    return-void
.end method


# virtual methods
.method public findFocus(I)Lccsanandroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "focus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focus"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findFocus(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 87
    .local v0, "compatInfo":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method
