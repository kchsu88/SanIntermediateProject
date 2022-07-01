.class public Lccsancom/google/android/material/animation/AnimatorSetCompat;
.super Ljava/lang/Object;
.source "AnimatorSetCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 9
    .param p0, "animatorSet"    # Lccsanandroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/animation/AnimatorSet;",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    const-wide/16 v0, 0x0

    .line 39
    .local v0, "totalDuration":J
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/animation/Animator;

    .line 41
    .local v4, "animator":Lccsanandroid/animation/Animator;
    invoke-virtual {v4}, Lccsanandroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    invoke-virtual {v4}, Lccsanandroid/animation/Animator;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 39
    .end local v4    # "animator":Lccsanandroid/animation/Animator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lccsanandroid/animation/ValueAnimator;->ofInt([I)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 44
    .local v2, "fix":Lccsanandroid/animation/Animator;
    invoke-virtual {v2, v0, v1}, Lccsanandroid/animation/Animator;->setDuration(J)Lccsanandroid/animation/Animator;

    .line 45
    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p1}, Lccsanandroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 48
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
