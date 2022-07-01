.class Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lccsanandroid/animation/ValueAnimator;

    .line 582
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 583
    .local v0, "alpha":I
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 584
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 585
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    .line 586
    return-void
.end method
