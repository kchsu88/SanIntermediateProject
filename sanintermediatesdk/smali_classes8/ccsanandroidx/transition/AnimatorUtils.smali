.class Lccsanandroidx/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static addPauseListener(Lccsanandroid/animation/Animator;Lccsanandroid/animation/AnimatorListenerAdapter;)V
    .locals 2
    .param p0, "animator"    # Lccsanandroid/animation/Animator;
    .param p1, "listener"    # Lccsanandroid/animation/AnimatorListenerAdapter;

    .line 31
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lccsanandroid/animation/Animator;->addPauseListener(Lccsanandroid/animation/Animator$AnimatorPauseListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method static pause(Lccsanandroid/animation/Animator;)V
    .locals 5
    .param p0, "animator"    # Lccsanandroid/animation/Animator;

    .line 37
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lccsanandroid/animation/Animator;->pause()V

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_2

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/animation/Animator$AnimatorListener;

    .line 44
    .local v3, "listener":Lccsanandroid/animation/Animator$AnimatorListener;
    instance-of v4, v3, Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_1

    .line 45
    move-object v4, v3

    check-cast v4, Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    invoke-interface {v4, p0}, Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationPause(Lccsanandroid/animation/Animator;)V

    .line 42
    .end local v3    # "listener":Lccsanandroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    :goto_1
    return-void
.end method

.method static resume(Lccsanandroid/animation/Animator;)V
    .locals 5
    .param p0, "animator"    # Lccsanandroid/animation/Animator;

    .line 53
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lccsanandroid/animation/Animator;->resume()V

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_2

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/animation/Animator$AnimatorListener;

    .line 60
    .local v3, "listener":Lccsanandroid/animation/Animator$AnimatorListener;
    instance-of v4, v3, Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_1

    .line 61
    move-object v4, v3

    check-cast v4, Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    invoke-interface {v4, p0}, Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationResume(Lccsanandroid/animation/Animator;)V

    .line 58
    .end local v3    # "listener":Lccsanandroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator$AnimatorListener;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    :goto_1
    return-void
.end method
