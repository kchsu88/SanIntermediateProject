.class Lccsanandroidx/appcompat/widget/ActivityChooserView$3;
.super Lccsanandroid/view/View$AccessibilityDelegate;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ActivityChooserView;

    .line 253
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$3;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Lccsanandroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 256
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 257
    invoke-static {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCanOpenPopup(Z)V

    .line 258
    return-void
.end method
