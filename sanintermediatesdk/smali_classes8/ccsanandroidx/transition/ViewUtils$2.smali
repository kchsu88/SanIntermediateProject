.class final Lccsanandroidx/transition/ViewUtils$2;
.super Lccsanandroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/view/View;",
        "Lccsanandroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 72
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroid/graphics/Rect;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 76
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getClipBounds(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Lccsanandroid/view/View;

    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ViewUtils$2;->get(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "clipBounds"    # Lccsanandroid/graphics/Rect;

    .line 81
    invoke-static {p1, p2}, Lccsanandroidx/core/view/ViewCompat;->setClipBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 82
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lccsanandroid/view/View;

    check-cast p2, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/ViewUtils$2;->set(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    return-void
.end method
