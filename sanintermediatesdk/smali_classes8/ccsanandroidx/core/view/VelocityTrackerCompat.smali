.class public final Lccsanandroidx/core/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXVelocity(Lccsanandroid/view/VelocityTracker;I)F
    .locals 1
    .param p0, "tracker"    # Lccsanandroid/view/VelocityTracker;
    .param p1, "pointerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tracker",
            "pointerId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lccsanandroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Lccsanandroid/view/VelocityTracker;I)F
    .locals 1
    .param p0, "tracker"    # Lccsanandroid/view/VelocityTracker;
    .param p1, "pointerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tracker",
            "pointerId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lccsanandroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method
