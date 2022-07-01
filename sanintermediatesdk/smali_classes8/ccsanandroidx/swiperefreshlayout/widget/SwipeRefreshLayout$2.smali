.class Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;
.super Lccsanandroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleUpAnimation(Lccsanandroid/view/animation/Animation$AnimationListener;)V
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

    .line 441
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Lccsanandroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLccsanandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Lccsanandroid/view/animation/Transformation;

    .line 444
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 445
    return-void
.end method
