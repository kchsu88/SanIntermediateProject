.class Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Lccsanandroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;

    .line 300
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/ForwardingListener;-><init>(Lccsanandroid/view/View;)V

    .line 301
    return-void
.end method


# virtual methods
.method public getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 305
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Lccsanandroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Lccsanandroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v2, v2, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v0, v2}, Lccsanandroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v0

    .line 316
    .local v0, "popup":Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 318
    .end local v0    # "popup":Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    :cond_1
    return v1
.end method
