.class final Lccsanandroidx/transition/ChangeBounds$4;
.super Lccsanandroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/view/View;",
        "Lccsanandroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 114
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/view/View;)Lccsanandroid/graphics/PointF;
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, Lccsanandroid/view/View;

    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ChangeBounds$4;->get(Lccsanandroid/view/View;)Lccsanandroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/view/View;Lccsanandroid/graphics/PointF;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "bottomRight"    # Lccsanandroid/graphics/PointF;

    .line 117
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v0

    .line 118
    .local v0, "left":I
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v1

    .line 119
    .local v1, "top":I
    iget v2, p2, Lccsanandroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 120
    .local v2, "right":I
    iget v3, p2, Lccsanandroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 121
    .local v3, "bottom":I
    invoke-static {p1, v0, v1, v2, v3}, Lccsanandroidx/transition/ViewUtils;->setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V

    .line 122
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Lccsanandroid/view/View;

    check-cast p2, Lccsanandroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/ChangeBounds$4;->set(Lccsanandroid/view/View;Lccsanandroid/graphics/PointF;)V

    return-void
.end method
