.class Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lccsanandroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    return-void
.end method


# virtual methods
.method public onScroll(Lccsanandroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 1414
    return-void
.end method

.method public onScrollStateChanged(Lccsanandroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 1418
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    .line 1419
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    invoke-virtual {v0}, Lccsanandroid/widget/PopupWindow;->getContentView()Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1421
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1423
    :cond_0
    return-void
.end method
