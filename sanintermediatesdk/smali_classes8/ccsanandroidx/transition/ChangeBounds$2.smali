.class final Lccsanandroidx/transition/ChangeBounds$2;
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
        "Lccsanandroidx/transition/ChangeBounds$ViewBounds;",
        "Lccsanandroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 88
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroidx/transition/ChangeBounds$ViewBounds;)Lccsanandroid/graphics/PointF;
    .locals 1
    .param p1, "viewBounds"    # Lccsanandroidx/transition/ChangeBounds$ViewBounds;

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lccsanandroidx/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ChangeBounds$2;->get(Lccsanandroidx/transition/ChangeBounds$ViewBounds;)Lccsanandroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroidx/transition/ChangeBounds$ViewBounds;Lccsanandroid/graphics/PointF;)V
    .locals 0
    .param p1, "viewBounds"    # Lccsanandroidx/transition/ChangeBounds$ViewBounds;
    .param p2, "topLeft"    # Lccsanandroid/graphics/PointF;

    .line 91
    invoke-virtual {p1, p2}, Lccsanandroidx/transition/ChangeBounds$ViewBounds;->setTopLeft(Lccsanandroid/graphics/PointF;)V

    .line 92
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lccsanandroidx/transition/ChangeBounds$ViewBounds;

    check-cast p2, Lccsanandroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/ChangeBounds$2;->set(Lccsanandroidx/transition/ChangeBounds$ViewBounds;Lccsanandroid/graphics/PointF;)V

    return-void
.end method