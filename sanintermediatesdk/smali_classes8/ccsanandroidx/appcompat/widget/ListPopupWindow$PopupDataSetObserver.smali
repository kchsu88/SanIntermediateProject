.class Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;
.super Lccsanandroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    .line 1344
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1348
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1352
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1356
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 1357
    return-void
.end method
