.class Lccsancom/google/android/material/datepicker/MaterialCalendar$1;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialCalendar;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 153
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$1;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$1;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "accessibilityNodeInfoCompat"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 157
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$1;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$1;"
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
