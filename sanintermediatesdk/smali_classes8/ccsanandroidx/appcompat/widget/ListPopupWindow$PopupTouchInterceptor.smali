.class Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1387
    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;

    .line 1391
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1392
    .local v0, "action":I
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1393
    .local v1, "x":I
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1395
    .local v2, "y":I
    if-nez v0, :cond_0

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    .line 1396
    invoke-virtual {v3}, Lccsanandroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    .line 1397
    invoke-virtual {v3}, Lccsanandroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    invoke-virtual {v3}, Lccsanandroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1398
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mHandler:Lccsanandroid/os/Handler;

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v4, v4, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1399
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1400
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mHandler:Lccsanandroid/os/Handler;

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v4, v4, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v3, v4}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1402
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3
.end method
