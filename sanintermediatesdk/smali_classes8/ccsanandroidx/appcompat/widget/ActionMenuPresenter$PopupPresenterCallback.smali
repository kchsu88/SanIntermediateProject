.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 769
    instance-of v0, p1, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 772
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->getCallback()Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 773
    .local v0, "cb":Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 774
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 776
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 760
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$300(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 762
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Lccsanandroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 763
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->getCallback()Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 764
    .local v0, "cb":Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v1

    :cond_1
    return v1
.end method
