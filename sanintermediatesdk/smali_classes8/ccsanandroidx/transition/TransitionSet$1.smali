.class Lccsanandroidx/transition/TransitionSet$1;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/TransitionSet;

.field final synthetic val$nextTransition:Lccsanandroidx/transition/Transition;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/TransitionSet;Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/TransitionSet;

    .line 503
    iput-object p1, p0, Lccsanandroidx/transition/TransitionSet$1;->this$0:Lccsanandroidx/transition/TransitionSet;

    iput-object p2, p0, Lccsanandroidx/transition/TransitionSet$1;->val$nextTransition:Lccsanandroidx/transition/Transition;

    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 506
    iget-object v0, p0, Lccsanandroidx/transition/TransitionSet$1;->val$nextTransition:Lccsanandroidx/transition/Transition;

    invoke-virtual {v0}, Lccsanandroidx/transition/Transition;->runAnimators()V

    .line 507
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 508
    return-void
.end method
