.class public Lccsanandroidx/transition/AutoTransition;
.super Lccsanandroidx/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lccsanandroidx/transition/TransitionSet;-><init>()V

    .line 38
    invoke-direct {p0}, Lccsanandroidx/transition/AutoTransition;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/TransitionSet;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lccsanandroidx/transition/AutoTransition;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 3

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/AutoTransition;->setOrdering(I)Lccsanandroidx/transition/TransitionSet;

    .line 48
    new-instance v1, Lccsanandroidx/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lccsanandroidx/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Lccsanandroidx/transition/AutoTransition;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Lccsanandroidx/transition/ChangeBounds;

    invoke-direct {v2}, Lccsanandroidx/transition/ChangeBounds;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Lccsanandroidx/transition/Fade;

    invoke-direct {v2, v0}, Lccsanandroidx/transition/Fade;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 51
    return-void
.end method
