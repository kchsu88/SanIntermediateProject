.class Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;
.super Lccsanandroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILccsanandroid/view/animation/Animation$AnimationListener;)V
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

    .line 1152
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Lccsanandroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLccsanandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Lccsanandroid/view/animation/Transformation;

    .line 1155
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    iget-object v1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v1, v1, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    neg-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 1156
    .local v0, "targetScale":F
    iget-object v1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 1157
    iget-object v1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p1}, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 1158
    return-void
.end method
