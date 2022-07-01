.class public final Lccsanandroidx/core/widget/ListPopupWindowCompat;
.super Ljava/lang/Object;
.source "ListPopupWindowCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static createDragToOpenListener(Lccsanandroid/widget/ListPopupWindow;Lccsanandroid/view/View;)Lccsanandroid/view/View$OnTouchListener;
    .locals 2
    .param p0, "listPopupWindow"    # Lccsanandroid/widget/ListPopupWindow;
    .param p1, "src"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listPopupWindow",
            "src"
        }
    .end annotation

    .line 97
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lccsanandroid/widget/ListPopupWindow;->createDragToOpenListener(Lccsanandroid/view/View;)Lccsanandroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDragToOpenListener(Ljava/lang/Object;Lccsanandroid/view/View;)Lccsanandroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "listPopupWindow"    # Ljava/lang/Object;
    .param p1, "src"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listPopupWindow",
            "src"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    move-object v0, p0

    check-cast v0, Lccsanandroid/widget/ListPopupWindow;

    invoke-static {v0, p1}, Lccsanandroidx/core/widget/ListPopupWindowCompat;->createDragToOpenListener(Lccsanandroid/widget/ListPopupWindow;Lccsanandroid/view/View;)Lccsanandroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
