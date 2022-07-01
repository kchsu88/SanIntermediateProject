.class public final Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;
.super Lccsanandroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# static fields
.field public static final SPAN_ID:Ljava/lang/String; = "ACCESSIBILITY_CLICKABLE_SPAN_ID"


# instance fields
.field private final mClickableSpanActionId:I

.field private final mNodeInfoCompat:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field private final mOriginalClickableSpanId:I


# direct methods
.method public constructor <init>(ILccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;I)V
    .locals 0
    .param p1, "originalClickableSpanId"    # I
    .param p2, "nodeInfoCompat"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p3, "clickableSpanActionId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "originalClickableSpanId",
            "nodeInfoCompat",
            "clickableSpanActionId"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lccsanandroid/text/style/ClickableSpan;-><init>()V

    .line 56
    iput p1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mOriginalClickableSpanId:I

    .line 57
    iput-object p2, p0, Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mNodeInfoCompat:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 58
    iput p3, p0, Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mClickableSpanActionId:I

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "unused"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 69
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "arguments":Lccsanandroid/os/Bundle;
    iget v1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mOriginalClickableSpanId:I

    const-string v2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mNodeInfoCompat:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    iget v2, p0, Lccsanandroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mClickableSpanActionId:I

    invoke-virtual {v1, v2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->performAction(ILccsanandroid/os/Bundle;)Z

    .line 72
    return-void
.end method
