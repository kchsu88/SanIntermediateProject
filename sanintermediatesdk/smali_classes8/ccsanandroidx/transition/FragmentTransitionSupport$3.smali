.class Lccsanandroidx/transition/FragmentTransitionSupport$3;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/FragmentTransitionSupport;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/FragmentTransitionSupport;

    .line 222
    iput-object p1, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

    iput-object p2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    iput-object p3, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p4, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    iput-object p5, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p6, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    iput-object p7, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 238
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 239
    return-void
.end method

.method public onTransitionStart(Lccsanandroidx/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 225
    iget-object v0, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$enterTransition:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    iget-object v2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

    iget-object v3, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3, v1}, Lccsanandroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 229
    iget-object v2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

    iget-object v3, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3, v1}, Lccsanandroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_1
    iget-object v0, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 232
    iget-object v2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

    iget-object v3, p0, Lccsanandroidx/transition/FragmentTransitionSupport$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3, v1}, Lccsanandroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 234
    :cond_2
    return-void
.end method
