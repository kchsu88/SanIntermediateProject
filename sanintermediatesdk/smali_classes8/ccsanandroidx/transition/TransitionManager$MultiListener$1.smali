.class Lccsanandroidx/transition/TransitionManager$MultiListener$1;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/TransitionManager$MultiListener;

.field final synthetic val$runningTransitions:Lccsanandroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/TransitionManager$MultiListener;Lccsanandroidx/collection/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/TransitionManager$MultiListener;

    .line 287
    iput-object p1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener$1;->this$0:Lccsanandroidx/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Lccsanandroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Lccsanandroidx/collection/ArrayMap;

    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 290
    iget-object v0, p0, Lccsanandroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Lccsanandroidx/collection/ArrayMap;

    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener$1;->this$0:Lccsanandroidx/transition/TransitionManager$MultiListener;

    iget-object v1, v1, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 291
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 293
    return-void
.end method
