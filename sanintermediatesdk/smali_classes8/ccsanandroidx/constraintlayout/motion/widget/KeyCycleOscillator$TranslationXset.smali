.class Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;
.super Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Lccsanandroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F

    .line 262
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 263
    return-void
.end method
