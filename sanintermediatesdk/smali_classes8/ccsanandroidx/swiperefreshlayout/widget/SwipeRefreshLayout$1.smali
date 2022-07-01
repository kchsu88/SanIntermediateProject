.class Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
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

    .line 178
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 189
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 192
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 193
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-interface {v0}, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 198
    :cond_0
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v1

    iput v1, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 202
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 185
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 181
    return-void
.end method
