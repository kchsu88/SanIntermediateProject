.class Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1371
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Lccsanandroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Lccsanandroidx/appcompat/widget/DropDownListView;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Lccsanandroidx/appcompat/widget/DropDownListView;

    .line 1377
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Lccsanandroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Lccsanandroidx/appcompat/widget/DropDownListView;

    .line 1378
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget v1, v1, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1379
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1380
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1382
    :cond_0
    return-void
.end method
