.class Lccsanandroidx/constraintlayout/motion/widget/MotionScene$1;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Lccsanandroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Lccsanandroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

.field final synthetic val$easing:Lccsanandroidx/constraintlayout/motion/utils/Easing;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/motion/widget/MotionScene;Lccsanandroidx/constraintlayout/motion/utils/Easing;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    .line 1368
    iput-object p1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$1;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    iput-object p2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$1;->val$easing:Lccsanandroidx/constraintlayout/motion/utils/Easing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "v"    # F

    .line 1371
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$1;->val$easing:Lccsanandroidx/constraintlayout/motion/utils/Easing;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
