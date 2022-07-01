.class final Lccsanandroidx/transition/ChangeBounds$1;
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
        "Lccsanandroid/graphics/drawable/Drawable;",
        "Lccsanandroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "x1"    # Ljava/lang/String;

    .line 70
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/PointF;
    .locals 3
    .param p1, "object"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->copyBounds(Lccsanandroid/graphics/Rect;)V

    .line 83
    new-instance v0, Lccsanandroid/graphics/PointF;

    iget-object v1, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    iget v2, v2, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ChangeBounds$1;->get(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PointF;)V
    .locals 3
    .param p1, "object"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "value"    # Lccsanandroid/graphics/PointF;

    .line 75
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->copyBounds(Lccsanandroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    iget v1, p2, Lccsanandroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Lccsanandroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/graphics/Rect;->offsetTo(II)V

    .line 77
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$1;->mBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 78
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lccsanandroid/graphics/drawable/Drawable;

    check-cast p2, Lccsanandroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/ChangeBounds$1;->set(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PointF;)V

    return-void
.end method
