.class Lccsanandroidx/transition/ObjectAnimatorUtils;
.super Ljava/lang/Object;
.source "ObjectAnimatorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;
    .locals 2
    .param p2, "path"    # Lccsanandroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsanandroid/util/Property<",
            "TT;",
            "Lccsanandroid/graphics/PointF;",
            ">;",
            "Lccsanandroid/graphics/Path;",
            ")",
            "Lccsanandroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 28
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Lccsanandroid/util/Property;, "Lccsanandroid/util/Property<TT;Lccsanandroid/graphics/PointF;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeConverter;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lccsanandroidx/transition/PathProperty;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/transition/PathProperty;-><init>(Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
