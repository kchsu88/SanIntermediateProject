.class Lccsanandroidx/transition/Transition$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/Transition;->runAnimator(Lccsanandroid/animation/Animator;Lccsanandroidx/collection/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/Transition;

.field final synthetic val$runningAnimators:Lccsanandroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/Transition;Lccsanandroidx/collection/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/Transition;

    .line 898
    iput-object p1, p0, Lccsanandroidx/transition/Transition$2;->this$0:Lccsanandroidx/transition/Transition;

    iput-object p2, p0, Lccsanandroidx/transition/Transition$2;->val$runningAnimators:Lccsanandroidx/collection/ArrayMap;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 906
    iget-object v0, p0, Lccsanandroidx/transition/Transition$2;->val$runningAnimators:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v0, p0, Lccsanandroidx/transition/Transition$2;->this$0:Lccsanandroidx/transition/Transition;

    iget-object v0, v0, Lccsanandroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 901
    iget-object v0, p0, Lccsanandroidx/transition/Transition$2;->this$0:Lccsanandroidx/transition/Transition;

    iget-object v0, v0, Lccsanandroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    return-void
.end method
