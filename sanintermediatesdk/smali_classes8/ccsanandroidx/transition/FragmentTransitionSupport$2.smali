.class Lccsanandroidx/transition/FragmentTransitionSupport$2;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lccsanandroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/FragmentTransitionSupport;->scheduleHideFragmentView(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$fragmentView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/FragmentTransitionSupport;Lccsanandroid/view/View;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/FragmentTransitionSupport;

    .line 151
    iput-object p1, p0, Lccsanandroidx/transition/FragmentTransitionSupport$2;->this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

    iput-object p2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$2;->val$fragmentView:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsanandroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 168
    return-void
.end method

.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 158
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 159
    iget-object v0, p0, Lccsanandroidx/transition/FragmentTransitionSupport$2;->val$fragmentView:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lccsanandroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 161
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 162
    iget-object v2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 172
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 176
    return-void
.end method

.method public onTransitionStart(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 154
    return-void
.end method
