.class Lccsanandroidx/appcompat/widget/ListPopupWindow$1;
.super Lccsanandroidx/appcompat/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;->createDragToOpenListener(Lccsanandroid/view/View;)Lccsanandroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ListPopupWindow;
    .param p2, "src"    # Lccsanandroid/view/View;

    .line 1140
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$1;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/widget/ForwardingListener;-><init>(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ListPopupWindow$1;->getPopup()Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lccsanandroidx/appcompat/widget/ListPopupWindow;
    .locals 1

    .line 1143
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$1;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    return-object v0
.end method
