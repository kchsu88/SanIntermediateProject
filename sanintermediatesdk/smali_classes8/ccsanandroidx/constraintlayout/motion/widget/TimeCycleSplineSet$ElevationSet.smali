.class Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;
.super Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Lccsanandroid/view/View;FJLccsanandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 6
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Lccsanandroidx/constraintlayout/motion/widget/KeyCache;

    .line 222
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 223
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;->get(FJLccsanandroid/view/View;Lccsanandroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setElevation(F)V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;->mContinue:Z

    return v0
.end method
