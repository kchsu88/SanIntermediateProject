.class public final Lccsancom/mbridge/msdk/foundation/tools/aa;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public static a(Lccsanandroid/view/View;)V
    .locals 2

    .line 9
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 15
    :cond_0
    return-void
.end method
