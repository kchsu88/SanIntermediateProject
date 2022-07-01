.class Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;
.super Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 569
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    iput p2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 570
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 587
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 579
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 582
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 574
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 575
    return-void
.end method
