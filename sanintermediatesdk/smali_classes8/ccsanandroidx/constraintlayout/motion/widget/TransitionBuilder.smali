.class public Lccsanandroidx/constraintlayout/motion/widget/TransitionBuilder;
.super Ljava/lang/Object;
.source "TransitionBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene;IILccsanandroidx/constraintlayout/widget/ConstraintSet;ILccsanandroidx/constraintlayout/widget/ConstraintSet;)Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 1
    .param p0, "scene"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene;
    .param p1, "transitionId"    # I
    .param p2, "startConstraintSetId"    # I
    .param p3, "startConstraintSet"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;
    .param p4, "endConstraintSetId"    # I
    .param p5, "endConstraintSet"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 62
    new-instance v0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-direct {v0, p1, p0, p2, p4}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILccsanandroidx/constraintlayout/motion/widget/MotionScene;II)V

    .line 68
    .local v0, "transition":Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    invoke-static {p0, v0, p3, p5}, Lccsanandroidx/constraintlayout/motion/widget/TransitionBuilder;->updateConstraintSetInMotionScene(Lccsanandroidx/constraintlayout/motion/widget/MotionScene;Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;Lccsanandroidx/constraintlayout/widget/ConstraintSet;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 69
    return-object v0
.end method

.method private static updateConstraintSetInMotionScene(Lccsanandroidx/constraintlayout/motion/widget/MotionScene;Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;Lccsanandroidx/constraintlayout/widget/ConstraintSet;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 2
    .param p0, "scene"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene;
    .param p1, "transition"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p2, "startConstraintSet"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;
    .param p3, "endConstraintSet"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 80
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    .line 81
    .local v0, "startId":I
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v1

    .line 83
    .local v1, "endId":I
    invoke-virtual {p0, v0, p2}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 84
    invoke-virtual {p0, v1, p3}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 85
    return-void
.end method

.method public static validate(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 3
    .param p0, "layout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    .line 35
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    .line 40
    .local v0, "scene":Lccsanandroidx/constraintlayout/motion/widget/MotionScene;
    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->validateLayout(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    return-void

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid motion layout. Motion Scene doesn\'t have any transition."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MotionLayout doesn\'t have the right motion scene."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    .end local v0    # "scene":Lccsanandroidx/constraintlayout/motion/widget/MotionScene;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid motion layout. Layout missing Motion Scene."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
