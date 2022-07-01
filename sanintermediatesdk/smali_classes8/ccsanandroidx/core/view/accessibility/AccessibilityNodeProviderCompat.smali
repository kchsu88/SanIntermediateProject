.class public Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;,
        Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;,
        Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    }
.end annotation


# static fields
.field public static final HOST_VIEW_ID:I = -0x1


# instance fields
.field private final mProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 121
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 123
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 125
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 129
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 139
    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
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

    .line 248
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "virtualViewId"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "virtualViewId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "focus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focus"
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/lang/Object;
    .locals 1

    .line 145
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-object v0
.end method

.method public performAction(IILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "virtualViewId",
            "action",
            "arguments"
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return v0
.end method