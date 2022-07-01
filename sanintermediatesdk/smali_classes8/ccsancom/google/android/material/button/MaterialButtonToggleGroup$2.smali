.class Lccsancom/google/android/material/button/MaterialButtonToggleGroup$2;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    .line 254
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$2;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 258
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 259
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$2;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    .line 263
    invoke-static {v0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->access$200(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;Lccsanandroid/view/View;)I

    move-result v3

    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/button/MaterialButton;

    .line 266
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v6

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 259
    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 267
    return-void
.end method
