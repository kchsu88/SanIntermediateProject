.class Lccsanandroidx/transition/TransitionSet$TransitionSetListener;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Lccsanandroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Lccsanandroidx/transition/TransitionSet;

    .line 433
    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 434
    iput-object p1, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    .line 435
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 447
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    iget v1, v0, Lccsanandroidx/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lccsanandroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 448
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    iget v0, v0, Lccsanandroidx/transition/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/transition/TransitionSet;->mStarted:Z

    .line 451
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    invoke-virtual {v0}, Lccsanandroidx/transition/TransitionSet;->end()V

    .line 453
    :cond_0
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 454
    return-void
.end method

.method public onTransitionStart(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 439
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    iget-boolean v0, v0, Lccsanandroidx/transition/TransitionSet;->mStarted:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    invoke-virtual {v0}, Lccsanandroidx/transition/TransitionSet;->start()V

    .line 441
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Lccsanandroidx/transition/TransitionSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/transition/TransitionSet;->mStarted:Z

    .line 443
    :cond_0
    return-void
.end method
