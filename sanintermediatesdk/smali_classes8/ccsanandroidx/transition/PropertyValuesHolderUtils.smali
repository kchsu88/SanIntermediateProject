.class Lccsanandroidx/transition/PropertyValuesHolderUtils;
.super Ljava/lang/Object;
.source "PropertyValuesHolderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static ofPointF(Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/PropertyValuesHolder;
    .locals 2
    .param p1, "path"    # Lccsanandroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/Property<",
            "*",
            "Lccsanandroid/graphics/PointF;",
            ">;",
            "Lccsanandroid/graphics/Path;",
            ")",
            "Lccsanandroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 38
    .local p0, "property":Lccsanandroid/util/Property;, "Lccsanandroid/util/Property<*Lccsanandroid/graphics/PointF;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lccsanandroid/animation/PropertyValuesHolder;->ofObject(Lccsanandroid/util/Property;Lccsanandroid/animation/TypeConverter;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lccsanandroidx/transition/PathProperty;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/transition/PathProperty;-><init>(Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Lccsanandroid/util/Property;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
