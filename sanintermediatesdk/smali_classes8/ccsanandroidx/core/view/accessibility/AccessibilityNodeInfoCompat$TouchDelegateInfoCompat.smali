.class public final Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchDelegateInfoCompat"
.end annotation


# instance fields
.field final mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;


# direct methods
.method constructor <init>(Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)V
    .locals 0
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    iput-object p1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;->mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 1133
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lccsanandroid/graphics/Region;",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1123
    .local p1, "targetMap":Ljava/util/Map;, "Ljava/util/Map<Lccsanandroid/graphics/Region;Lccsanandroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1125
    new-instance v0, Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-direct {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;->mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    goto :goto_0

    .line 1127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;->mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 1129
    :goto_0
    return-void
.end method


# virtual methods
.method public getRegionAt(I)Lccsanandroid/graphics/Region;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1165
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1166
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;->mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->getRegionAt(I)Lccsanandroid/graphics/Region;

    move-result-object v0

    return-object v0

    .line 1168
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegionCount()I
    .locals 2

    .line 1146
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1147
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;->mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->getRegionCount()I

    move-result v0

    return v0

    .line 1149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetForRegion(Lccsanandroid/graphics/Region;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "region"    # Lccsanandroid/graphics/Region;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "region"
        }
    .end annotation

    .line 1193
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1194
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat;->mInfo:Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->getTargetForRegion(Lccsanandroid/graphics/Region;)Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 1195
    .local v0, "info":Lccsanandroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 1196
    invoke-static {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    return-object v1

    .line 1199
    .end local v0    # "info":Lccsanandroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
