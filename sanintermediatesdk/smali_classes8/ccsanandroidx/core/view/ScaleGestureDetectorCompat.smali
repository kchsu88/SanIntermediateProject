.class public final Lccsanandroidx/core/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Lccsanandroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p0, "scaleGestureDetector"    # Lccsanandroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleGestureDetector"
        }
    .end annotation

    .line 78
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lccsanandroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result v0

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleGestureDetector"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    move-object v0, p0

    check-cast v0, Lccsanandroid/view/ScaleGestureDetector;

    invoke-static {v0}, Lccsanandroidx/core/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Lccsanandroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public static setQuickScaleEnabled(Lccsanandroid/view/ScaleGestureDetector;Z)V
    .locals 2
    .param p0, "scaleGestureDetector"    # Lccsanandroid/view/ScaleGestureDetector;
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleGestureDetector",
            "enabled"
        }
    .end annotation

    .line 53
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lccsanandroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleGestureDetector",
            "enabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    move-object v0, p0

    check-cast v0, Lccsanandroid/view/ScaleGestureDetector;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Lccsanandroid/view/ScaleGestureDetector;Z)V

    .line 42
    return-void
.end method
