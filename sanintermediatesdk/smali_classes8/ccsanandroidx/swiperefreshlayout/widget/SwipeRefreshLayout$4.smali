.class Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;
.super Lccsanandroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Lccsanandroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 499
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput p2, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Lccsanandroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLccsanandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Lccsanandroid/view/animation/Transformation;

    .line 502
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->this$0:Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, v0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v1, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v2, v1

    iget v3, p0, Lccsanandroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 504
    return-void
.end method
