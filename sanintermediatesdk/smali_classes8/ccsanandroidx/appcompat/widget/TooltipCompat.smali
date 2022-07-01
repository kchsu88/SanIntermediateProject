.class public Lccsanandroidx/appcompat/widget/TooltipCompat;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 41
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/appcompat/widget/TooltipCompatHandler;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    return-void
.end method
