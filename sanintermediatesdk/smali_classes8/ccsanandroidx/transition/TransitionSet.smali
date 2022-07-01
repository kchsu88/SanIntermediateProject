.class public Lccsanandroidx/transition/TransitionSet;
.super Lccsanandroidx/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field private static final FLAG_CHANGE_EPICENTER:I = 0x8

.field private static final FLAG_CHANGE_INTERPOLATOR:I = 0x1

.field private static final FLAG_CHANGE_PATH_MOTION:I = 0x4

.field private static final FLAG_CHANGE_PROPAGATION:I = 0x2

.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field private mChangeFlags:I

.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field private mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mStarted:Z

    .line 88
    iput v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    .line 111
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 116
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Transition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mStarted:Z

    .line 88
    iput v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    .line 117
    sget-object v1, Lccsanandroidx/transition/Styleable;->TRANSITION_SET:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 118
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Lccsanandroid/content/res/XmlResourceParser;

    const-string/jumbo v3, "transitionOrdering"

    invoke-static {v1, v2, v3, v0, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 121
    .local v0, "ordering":I
    invoke-virtual {p0, v0}, Lccsanandroidx/transition/TransitionSet;->setOrdering(I)Lccsanandroidx/transition/TransitionSet;

    .line 122
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void
.end method

.method private addTransitionInternal(Lccsanandroidx/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 199
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iput-object p0, p1, Lccsanandroidx/transition/Transition;->mParent:Lccsanandroidx/transition/TransitionSet;

    .line 201
    return-void
.end method

.method private setupStartEndListeners()V
    .locals 3

    .line 418
    new-instance v0, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v0, p0}, Lccsanandroidx/transition/TransitionSet$TransitionSetListener;-><init>(Lccsanandroidx/transition/TransitionSet;)V

    .line 419
    .local v0, "listener":Lccsanandroidx/transition/TransitionSet$TransitionSetListener;
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    .line 420
    .local v2, "childTransition":Lccsanandroidx/transition/Transition;
    invoke-virtual {v2, v0}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 421
    .end local v2    # "childTransition":Lccsanandroidx/transition/Transition;
    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lccsanandroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 423
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Lccsanandroidx/transition/Transition$TransitionListener;

    .line 307
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addTarget(I)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addTarget(Ljava/lang/String;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public addTarget(I)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->addTarget(I)Lccsanandroidx/transition/Transition;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->addTarget(I)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Lccsanandroid/view/View;

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public addTarget(Ljava/lang/Class;)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lccsanandroidx/transition/TransitionSet;"
        }
    .end annotation

    .line 298
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public addTarget(Ljava/lang/String;)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->addTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->addTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;
    .locals 5
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 179
    invoke-direct {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addTransitionInternal(Lccsanandroidx/transition/Transition;)V

    .line 180
    iget-wide v0, p0, Lccsanandroidx/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 181
    iget-wide v0, p0, Lccsanandroidx/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/transition/Transition;->setDuration(J)Lccsanandroidx/transition/Transition;

    .line 183
    :cond_0
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->getInterpolator()Lccsanandroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroidx/transition/Transition;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroidx/transition/Transition;

    .line 186
    :cond_1
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->getPropagation()Lccsanandroidx/transition/TransitionPropagation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroidx/transition/Transition;->setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V

    .line 189
    :cond_2
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroidx/transition/Transition;->setPathMotion(Lccsanandroidx/transition/PathMotion;)V

    .line 192
    :cond_3
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->getEpicenterCallback()Lccsanandroidx/transition/Transition$EpicenterCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroidx/transition/Transition;->setEpicenterCallback(Lccsanandroidx/transition/Transition$EpicenterCallback;)V

    .line 195
    :cond_4
    return-object p0
.end method

.method protected cancel()V
    .locals 3

    .line 581
    invoke-super {p0}, Lccsanandroidx/transition/Transition;->cancel()V

    .line 582
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2}, Lccsanandroidx/transition/Transition;->cancel()V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 536
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/TransitionSet;->isValidTarget(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    .line 538
    .local v1, "childTransition":Lccsanandroidx/transition/Transition;
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Lccsanandroidx/transition/Transition;->isValidTarget(Lccsanandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->captureEndValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 540
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v1    # "childTransition":Lccsanandroidx/transition/Transition;
    :cond_0
    goto :goto_0

    .line 544
    :cond_1
    return-void
.end method

.method capturePropagationValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 548
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->capturePropagationValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 549
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 551
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->capturePropagationValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 524
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/TransitionSet;->isValidTarget(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    .line 526
    .local v1, "childTransition":Lccsanandroidx/transition/Transition;
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Lccsanandroidx/transition/Transition;->isValidTarget(Lccsanandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->captureStartValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 528
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v1    # "childTransition":Lccsanandroidx/transition/Transition;
    :cond_0
    goto :goto_0

    .line 532
    :cond_1
    return-void
.end method

.method public clone()Lccsanandroidx/transition/Transition;
    .locals 4

    .line 649
    invoke-super {p0}, Lccsanandroidx/transition/Transition;->clone()Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    .line 650
    .local v0, "clone":Lccsanandroidx/transition/TransitionSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 651
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 652
    .local v1, "numTransitions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 653
    iget-object v3, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/transition/Transition;

    invoke-virtual {v3}, Lccsanandroidx/transition/Transition;->clone()Lccsanandroidx/transition/Transition;

    move-result-object v3

    invoke-direct {v0, v3}, Lccsanandroidx/transition/TransitionSet;->addTransitionInternal(Lccsanandroidx/transition/Transition;)V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->clone()Lccsanandroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValuesMaps;Lccsanandroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroidx/transition/TransitionValuesMaps;",
            "Lccsanandroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/TransitionValues;>;"
    move-object v0, p0

    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->getStartDelay()J

    move-result-wide v1

    .line 467
    .local v1, "startDelay":J
    iget-object v3, v0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 468
    .local v3, "numTransitions":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 469
    iget-object v5, v0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/transition/Transition;

    .line 472
    .local v5, "childTransition":Lccsanandroidx/transition/Transition;
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    iget-boolean v8, v0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    if-nez v8, :cond_0

    if-nez v4, :cond_2

    .line 473
    :cond_0
    invoke-virtual {v5}, Lccsanandroidx/transition/Transition;->getStartDelay()J

    move-result-wide v8

    .line 474
    .local v8, "childStartDelay":J
    cmp-long v10, v8, v6

    if-lez v10, :cond_1

    .line 475
    add-long v6, v1, v8

    invoke-virtual {v5, v6, v7}, Lccsanandroidx/transition/Transition;->setStartDelay(J)Lccsanandroidx/transition/Transition;

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v5, v1, v2}, Lccsanandroidx/transition/Transition;->setStartDelay(J)Lccsanandroidx/transition/Transition;

    .line 480
    .end local v8    # "childStartDelay":J
    :cond_2
    :goto_1
    move-object v6, v5

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lccsanandroidx/transition/Transition;->createAnimators(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValuesMaps;Lccsanandroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 468
    .end local v5    # "childTransition":Lccsanandroidx/transition/Transition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 483
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Lccsanandroidx/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(IZ)Lccsanandroidx/transition/Transition;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(IZ)Lccsanandroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public excludeTarget(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/Transition;
    .locals 2
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "exclude"    # Z

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/Transition;

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lccsanandroidx/transition/Transition;
    .locals 2
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lccsanandroidx/transition/Transition;"
        }
    .end annotation

    .line 376
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 377
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Lccsanandroidx/transition/Transition;

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Lccsanandroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lccsanandroidx/transition/Transition;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Lccsanandroidx/transition/Transition;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Lccsanandroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method forceToEnd(Lccsanandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 592
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->forceToEnd(Lccsanandroid/view/ViewGroup;)V

    .line 593
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 594
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 595
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->forceToEnd(Lccsanandroid/view/ViewGroup;)V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    .line 158
    iget-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTransitionAt(I)Lccsanandroidx/transition/Transition;
    .locals 1
    .param p1, "index"    # I

    .line 223
    if-ltz p1, :cond_1

    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/Transition;

    return-object v0

    .line 224
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionCount()I
    .locals 1

    .line 211
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public pause(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/View;

    .line 559
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->pause(Lccsanandroid/view/View;)V

    .line 560
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 562
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->pause(Lccsanandroid/view/View;)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Lccsanandroidx/transition/Transition$TransitionListener;

    .line 385
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->removeTarget(I)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public removeTarget(I)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->removeTarget(I)Lccsanandroidx/transition/Transition;

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->removeTarget(I)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Lccsanandroid/view/View;

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public removeTarget(Ljava/lang/Class;)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lccsanandroidx/transition/TransitionSet;"
        }
    .end annotation

    .line 331
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->removeTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->removeTarget(Ljava/lang/Class;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public removeTarget(Ljava/lang/String;)Lccsanandroidx/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->removeTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->removeTarget(Ljava/lang/String;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public removeTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;
    .locals 1
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 407
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    const/4 v0, 0x0

    iput-object v0, p1, Lccsanandroidx/transition/Transition;->mParent:Lccsanandroidx/transition/TransitionSet;

    .line 409
    return-object p0
.end method

.method public resume(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/View;

    .line 570
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->resume(Lccsanandroid/view/View;)V

    .line 571
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->resume(Lccsanandroid/view/View;)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 491
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->start()V

    .line 493
    invoke-virtual {p0}, Lccsanandroidx/transition/TransitionSet;->end()V

    .line 494
    return-void

    .line 496
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/transition/TransitionSet;->setupStartEndListeners()V

    .line 497
    iget-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    if-nez v0, :cond_3

    .line 500
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    .line 502
    .local v1, "previousTransition":Lccsanandroidx/transition/Transition;
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    .line 503
    .local v2, "nextTransition":Lccsanandroidx/transition/Transition;
    new-instance v3, Lccsanandroidx/transition/TransitionSet$1;

    invoke-direct {v3, p0, v2}, Lccsanandroidx/transition/TransitionSet$1;-><init>(Lccsanandroidx/transition/TransitionSet;Lccsanandroidx/transition/Transition;)V

    invoke-virtual {v1, v3}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 500
    .end local v1    # "previousTransition":Lccsanandroidx/transition/Transition;
    .end local v2    # "nextTransition":Lccsanandroidx/transition/Transition;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 512
    .local v0, "firstTransition":Lccsanandroidx/transition/Transition;
    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Lccsanandroidx/transition/Transition;->runAnimators()V

    .line 515
    .end local v0    # "firstTransition":Lccsanandroidx/transition/Transition;
    :cond_2
    goto :goto_2

    .line 516
    :cond_3
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    .line 517
    .local v1, "childTransition":Lccsanandroidx/transition/Transition;
    invoke-virtual {v1}, Lccsanandroidx/transition/Transition;->runAnimators()V

    .line 518
    .end local v1    # "childTransition":Lccsanandroidx/transition/Transition;
    goto :goto_1

    .line 520
    :cond_4
    :goto_2
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 3
    .param p1, "canRemoveViews"    # Z

    .line 611
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 612
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/TransitionSet;->setDuration(J)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lccsanandroidx/transition/TransitionSet;
    .locals 5
    .param p1, "duration"    # J

    .line 239
    invoke-super {p0, p1, p2}, Lccsanandroidx/transition/Transition;->setDuration(J)Lccsanandroidx/transition/Transition;

    .line 240
    iget-wide v0, p0, Lccsanandroidx/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1, p2}, Lccsanandroidx/transition/Transition;->setDuration(J)Lccsanandroidx/transition/Transition;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "numTransitions":I
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Lccsanandroidx/transition/Transition$EpicenterCallback;)V
    .locals 3
    .param p1, "epicenterCallback"    # Lccsanandroidx/transition/Transition$EpicenterCallback;

    .line 630
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->setEpicenterCallback(Lccsanandroidx/transition/Transition$EpicenterCallback;)V

    .line 631
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    .line 632
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 633
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 634
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->setEpicenterCallback(Lccsanandroidx/transition/Transition$EpicenterCallback;)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroidx/transition/TransitionSet;
    .locals 3
    .param p1, "interpolator"    # Lccsanandroid/animation/TimeInterpolator;

    .line 258
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    .line 259
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 261
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroidx/transition/Transition;

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "numTransitions":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method public setOrdering(I)Lccsanandroidx/transition/TransitionSet;
    .locals 3
    .param p1, "ordering"    # I

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance v0, Lccsanandroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 141
    nop

    .line 146
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Lccsanandroidx/transition/PathMotion;)V
    .locals 2
    .param p1, "pathMotion"    # Lccsanandroidx/transition/PathMotion;

    .line 390
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->setPathMotion(Lccsanandroidx/transition/PathMotion;)V

    .line 391
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    .line 392
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1, p1}, Lccsanandroidx/transition/Transition;->setPathMotion(Lccsanandroidx/transition/PathMotion;)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V
    .locals 3
    .param p1, "propagation"    # Lccsanandroidx/transition/TransitionPropagation;

    .line 620
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V

    .line 621
    iget v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lccsanandroidx/transition/TransitionSet;->mChangeFlags:I

    .line 622
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 623
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->setSceneRoot(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method setSceneRoot(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/TransitionSet;
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 601
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->setSceneRoot(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Transition;

    .line 602
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 603
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, p1}, Lccsanandroidx/transition/Transition;->setSceneRoot(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Transition;

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Lccsanandroidx/transition/Transition;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/TransitionSet;->setStartDelay(J)Lccsanandroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setStartDelay(J)Lccsanandroidx/transition/TransitionSet;
    .locals 1
    .param p1, "startDelay"    # J

    .line 252
    invoke-super {p0, p1, p2}, Lccsanandroidx/transition/Transition;->setStartDelay(J)Lccsanandroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .line 640
    invoke-super {p0, p1}, Lccsanandroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanandroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
