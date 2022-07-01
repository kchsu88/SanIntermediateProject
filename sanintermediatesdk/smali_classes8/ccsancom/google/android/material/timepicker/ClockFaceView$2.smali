.class Lccsancom/google/android/material/timepicker/ClockFaceView$2;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "ClockFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/timepicker/ClockFaceView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/timepicker/ClockFaceView;

    .line 145
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 149
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 150
    sget v0, Lccsancom/google/android/material/R$id;->material_value_index:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 152
    iget-object v1, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v1}, Lccsancom/google/android/material/timepicker/ClockFaceView;->access$200(Lccsancom/google/android/material/timepicker/ClockFaceView;)Lccsanandroid/util/SparseArray;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    invoke-virtual {p2, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Lccsanandroid/view/View;)V

    .line 155
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-virtual {p1}, Lccsanandroid/view/View;->isSelected()Z

    move-result v6

    .line 156
    move v3, v0

    invoke-static/range {v1 .. v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 155
    invoke-virtual {p2, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 163
    return-void
.end method
