.class Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;Lccsanorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "transition"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    .line 618
    const/16 v0, 0x11

    iput v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 626
    iput-object p2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 627
    invoke-static {p3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lccsanandroidx/constraintlayout/widget/R$styleable;->OnClick:[I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 628
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 629
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 630
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 631
    .local v3, "attr":I
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->OnClick_targetId:I

    if-ne v3, v4, :cond_0

    .line 632
    iget v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    goto :goto_1

    .line 633
    :cond_0
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->OnClick_clickAction:I

    if-ne v3, v4, :cond_1

    .line 634
    iget v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 629
    .end local v3    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 637
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 638
    return-void
.end method


# virtual methods
.method public addOnClickListeners(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;ILccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 8
    .param p1, "motionLayout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "currentState"    # I
    .param p3, "transition"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 641
    iget v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 642
    .local v0, "v":Lccsanandroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick could not find id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionScene"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 646
    :cond_1
    invoke-static {p3}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v2

    .line 647
    .local v2, "start":I
    invoke-static {p3}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v3

    .line 648
    .local v3, "end":I
    if-ne v2, v1, :cond_2

    .line 649
    invoke-virtual {v0, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 650
    return-void

    .line 653
    :cond_2
    iget v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-ne p2, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 654
    .local v4, "listen":Z
    :goto_1
    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_4

    if-ne p2, v2, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v4, v7

    .line 655
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_5

    if-ne p2, v2, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v4, v7

    .line 656
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_6

    if-ne p2, v3, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v4, v7

    .line 657
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, v3, :cond_7

    const/4 v5, 0x1

    :cond_7
    or-int v1, v4, v5

    .line 659
    .end local v4    # "listen":Z
    .local v1, "listen":Z
    if-eqz v1, :cond_8

    .line 660
    invoke-virtual {v0, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 662
    :cond_8
    return-void
.end method

.method isTransitionViable(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 5
    .param p1, "current"    # Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p2, "tl"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    .line 677
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 678
    return v1

    .line 680
    :cond_0
    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v0

    .line 681
    .local v0, "dest":I
    iget-object v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v2

    .line 682
    .local v2, "from":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 683
    iget v3, p2, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 685
    :cond_2
    iget v3, p2, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v3, v2, :cond_4

    iget v3, p2, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 8
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 691
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$700(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->access$800(Lccsanandroidx/constraintlayout/motion/widget/MotionScene;)Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    .line 692
    .local v0, "tl":Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->isInteractionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    return-void

    .line 695
    :cond_0
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 696
    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    .line 697
    .local v1, "currentState":I
    if-ne v1, v2, :cond_1

    .line 698
    iget-object v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    .line 699
    return-void

    .line 701
    :cond_1
    new-instance v2, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v3, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v3}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$700(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v3

    iget-object v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-direct {v2, v3, v4}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Lccsanandroidx/constraintlayout/motion/widget/MotionScene;Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 702
    .local v2, "t":Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    invoke-static {v2, v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$102(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    .line 703
    iget-object v3, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v3}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v3

    invoke-static {v2, v3}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$002(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    .line 704
    invoke-virtual {v0, v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 705
    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    .line 706
    return-void

    .line 708
    .end local v1    # "currentState":I
    .end local v2    # "t":Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    :cond_2
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$700(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v1

    iget-object v1, v1, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 709
    .local v1, "current":Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;
    iget v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 710
    .local v3, "forward":Z
    :goto_1
    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_6

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    .line 711
    .local v2, "backward":Z
    :goto_3
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    .line 712
    .local v4, "bidirectional":Z
    :cond_7
    if-eqz v4, :cond_b

    .line 713
    iget-object v6, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-static {v6}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$700(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)Lccsanandroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v6

    iget-object v6, v6, Lccsanandroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v7, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eq v6, v7, :cond_8

    .line 714
    invoke-virtual {v0, v7}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 716
    :cond_8
    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v6

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v7

    if-eq v6, v7, :cond_a

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    goto :goto_4

    .line 719
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 717
    :cond_a
    :goto_4
    const/4 v3, 0x0

    .line 722
    :cond_b
    :goto_5
    invoke-virtual {p0, v1, v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 723
    if-eqz v3, :cond_c

    iget v6, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 724
    iget-object v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 725
    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto :goto_6

    .line 726
    :cond_c
    if-eqz v2, :cond_d

    iget v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_d

    .line 727
    iget-object v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 728
    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto :goto_6

    .line 729
    :cond_d
    if-eqz v3, :cond_e

    iget v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_e

    .line 730
    iget-object v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 731
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_6

    .line 732
    :cond_e
    if-eqz v2, :cond_f

    iget v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_f

    .line 733
    iget-object v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 734
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 737
    :cond_f
    :goto_6
    return-void
.end method

.method public removeOnClickListeners(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 3
    .param p1, "motionLayout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    .line 665
    iget v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    invoke-virtual {p1, v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 669
    .local v0, "v":Lccsanandroid/view/View;
    if-nez v0, :cond_1

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (*)  could not find id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionScene"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void

    .line 673
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 674
    return-void
.end method
