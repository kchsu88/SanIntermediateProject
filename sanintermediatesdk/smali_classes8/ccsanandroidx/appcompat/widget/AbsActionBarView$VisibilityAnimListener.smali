.class public Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Lccsanandroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lccsanandroidx/appcompat/widget/AbsActionBarView;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/AbsActionBarView;

    .line 275
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 303
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 294
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 297
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/AbsActionBarView;

    iget v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->access$101(Lccsanandroidx/appcompat/widget/AbsActionBarView;I)V

    .line 298
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 288
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/AbsActionBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->access$001(Lccsanandroidx/appcompat/widget/AbsActionBarView;I)V

    .line 289
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 290
    return-void
.end method

.method public withFinalVisibility(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;I)Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .line 281
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/AbsActionBarView;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 282
    iput p2, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 283
    return-object p0
.end method
