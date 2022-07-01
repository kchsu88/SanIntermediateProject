.class Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;
.super Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 297
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

    .line 300
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;->get(FJLccsanandroid/view/View;Lccsanandroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 301
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;->mContinue:Z

    return v0
.end method
