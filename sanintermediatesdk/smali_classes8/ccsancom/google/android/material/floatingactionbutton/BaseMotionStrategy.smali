.class abstract Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;
.super Ljava/lang/Object;
.source "BaseMotionStrategy.java"

# interfaces
.implements Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private defaultMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

.field private final fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private motionSpec:Lccsancom/google/android/material/animation/MotionSpec;

.field private final tracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;)V
    .locals 1
    .param p1, "fab"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p2, "tracker"    # Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 52
    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->context:Lccsanandroid/content/Context;

    .line 53
    iput-object p2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;)Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    .line 40
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    return-object v0
.end method


# virtual methods
.method public final addAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 76
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public createAnimator()Lccsanandroid/animation/AnimatorSet;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->getCurrentMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lccsancom/google/android/material/animation/MotionSpec;)Lccsanandroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method createAnimator(Lccsancom/google/android/material/animation/MotionSpec;)Lccsanandroid/animation/AnimatorSet;
    .locals 6
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsanandroid/view/View;->ALPHA:Lccsanandroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsanandroid/view/View;->SCALE_Y:Lccsanandroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsanandroid/view/View;->SCALE_X:Lccsanandroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Lccsanandroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Lccsanandroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_3
    const-string v1, "paddingStart"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_START:Lccsanandroid/util/Property;

    .line 142
    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    const-string v1, "paddingEnd"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_END:Lccsanandroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    const-string v1, "labelOpacity"

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v3, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;

    const-class v4, Ljava/lang/Float;

    const-string v5, "LABEL_OPACITY_PROPERTY"

    invoke-direct {v3, p0, v4, v5}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;-><init>(Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1, v2, v3}, Lccsancom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/util/Property;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 202
    .local v1, "animator":Lccsanandroid/animation/ObjectAnimator;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v1    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :cond_6
    new-instance v1, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v1}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 206
    .local v1, "set":Lccsanandroid/animation/AnimatorSet;
    invoke-static {v1, v0}, Lccsancom/google/android/material/animation/AnimatorSetCompat;->playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 207
    return-object v1
.end method

.method public final getCurrentMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 63
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    .line 64
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->context:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->getDefaultMotionSpecResource()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    .line 71
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public final getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 93
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method public onAnimationCancel()V
    .locals 1

    .line 111
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->clear()V

    .line 112
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->clear()V

    .line 106
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 99
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;->onNextAnimationStart(Lccsanandroid/animation/Animator;)V

    .line 100
    return-void
.end method

.method public final removeAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 81
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public final setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1, "motionSpec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 58
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    .line 59
    return-void
.end method
