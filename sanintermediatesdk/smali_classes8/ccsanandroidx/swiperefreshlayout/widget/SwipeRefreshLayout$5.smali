.class Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 976
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 984
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownAnimation(Lccsanandroid/view/animation/Animation$AnimationListener;)V

    .line 987
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 991
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 980
    return-void
.end method
