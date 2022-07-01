.class Lccsanandroidx/transition/PathProperty;
.super Lccsanandroid/util/Property;
.source "PathProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroid/util/Property<",
        "TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentFraction:F

.field private final mPathLength:F

.field private final mPathMeasure:Lccsanandroid/graphics/PathMeasure;

.field private final mPointF:Lccsanandroid/graphics/PointF;

.field private final mPosition:[F

.field private final mProperty:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "TT;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)V
    .locals 2
    .param p2, "path"    # Lccsanandroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/Property<",
            "TT;",
            "Lccsanandroid/graphics/PointF;",
            ">;",
            "Lccsanandroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lccsanandroidx/transition/PathProperty;, "Lccsanandroidx/transition/PathProperty<TT;>;"
    .local p1, "property":Lccsanandroid/util/Property;, "Lccsanandroid/util/Property<TT;Lccsanandroid/graphics/PointF;>;"
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1}, Lccsanandroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lccsanandroidx/transition/PathProperty;->mPosition:[F

    .line 41
    new-instance v0, Lccsanandroid/graphics/PointF;

    invoke-direct {v0}, Lccsanandroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/PathProperty;->mPointF:Lccsanandroid/graphics/PointF;

    .line 46
    iput-object p1, p0, Lccsanandroidx/transition/PathProperty;->mProperty:Lccsanandroid/util/Property;

    .line 47
    new-instance v0, Lccsanandroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lccsanandroid/graphics/PathMeasure;-><init>(Lccsanandroid/graphics/Path;Z)V

    iput-object v0, p0, Lccsanandroidx/transition/PathProperty;->mPathMeasure:Lccsanandroid/graphics/PathMeasure;

    .line 48
    invoke-virtual {v0}, Lccsanandroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lccsanandroidx/transition/PathProperty;->mPathLength:F

    .line 49
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsanandroidx/transition/PathProperty;, "Lccsanandroidx/transition/PathProperty<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lccsanandroidx/transition/PathProperty;->mCurrentFraction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    .local p0, "this":Lccsanandroidx/transition/PathProperty;, "Lccsanandroidx/transition/PathProperty<TT;>;"
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/PathProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 4
    .param p2, "fraction"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lccsanandroidx/transition/PathProperty;, "Lccsanandroidx/transition/PathProperty<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lccsanandroidx/transition/PathProperty;->mCurrentFraction:F

    .line 59
    iget-object v0, p0, Lccsanandroidx/transition/PathProperty;->mPathMeasure:Lccsanandroid/graphics/PathMeasure;

    iget v1, p0, Lccsanandroidx/transition/PathProperty;->mPathLength:F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lccsanandroidx/transition/PathProperty;->mPosition:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 60
    iget-object v0, p0, Lccsanandroidx/transition/PathProperty;->mPointF:Lccsanandroid/graphics/PointF;

    iget-object v1, p0, Lccsanandroidx/transition/PathProperty;->mPosition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lccsanandroid/graphics/PointF;->x:F

    .line 61
    iget-object v0, p0, Lccsanandroidx/transition/PathProperty;->mPointF:Lccsanandroid/graphics/PointF;

    iget-object v1, p0, Lccsanandroidx/transition/PathProperty;->mPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lccsanandroid/graphics/PointF;->y:F

    .line 62
    iget-object v0, p0, Lccsanandroidx/transition/PathProperty;->mProperty:Lccsanandroid/util/Property;

    iget-object v1, p0, Lccsanandroidx/transition/PathProperty;->mPointF:Lccsanandroid/graphics/PointF;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 35
    .local p0, "this":Lccsanandroidx/transition/PathProperty;, "Lccsanandroidx/transition/PathProperty<TT;>;"
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/PathProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
