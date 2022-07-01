.class Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;
.super Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathRotateSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setPathRotate(Lccsanandroid/view/View;FDD)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F
    .param p3, "dx"    # D
    .param p5, "dy"    # D

    .line 241
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;->get(F)F

    move-result v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setRotation(F)V

    .line 242
    return-void
.end method

.method public setProperty(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F

    .line 238
    return-void
.end method
