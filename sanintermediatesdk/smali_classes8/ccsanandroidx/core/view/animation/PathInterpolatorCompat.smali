.class public final Lccsanandroidx/core/view/animation/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static create(FF)Lccsanandroid/view/animation/Interpolator;
    .locals 2
    .param p0, "controlX"    # F
    .param p1, "controlY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlX",
            "controlY"
        }
    .end annotation

    .line 63
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Lccsanandroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1}, Lccsanandroid/view/animation/PathInterpolator;-><init>(FF)V

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/animation/PathInterpolatorApi14;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/animation/PathInterpolatorApi14;-><init>(FF)V

    return-object v0
.end method

.method public static create(FFFF)Lccsanandroid/view/animation/Interpolator;
    .locals 2
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlX1",
            "controlY1",
            "controlX2",
            "controlY2"
        }
    .end annotation

    .line 81
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 82
    new-instance v0, Lccsanandroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanandroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/animation/PathInterpolatorApi14;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanandroidx/core/view/animation/PathInterpolatorApi14;-><init>(FFFF)V

    return-object v0
.end method

.method public static create(Lccsanandroid/graphics/Path;)Lccsanandroid/view/animation/Interpolator;
    .locals 2
    .param p0, "path"    # Lccsanandroid/graphics/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 48
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Lccsanandroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0}, Lccsanandroid/view/animation/PathInterpolator;-><init>(Lccsanandroid/graphics/Path;)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/animation/PathInterpolatorApi14;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/animation/PathInterpolatorApi14;-><init>(Lccsanandroid/graphics/Path;)V

    return-object v0
.end method
