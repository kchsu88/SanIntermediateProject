.class Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;
.super Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Lccsanandroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F

    .line 201
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setElevation(F)V

    .line 204
    :cond_0
    return-void
.end method
