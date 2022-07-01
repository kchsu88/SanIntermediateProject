.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;Lccsanandroid/view/View;)V
    .locals 6
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Lccsanandroid/view/View;

    .line 733
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    .line 734
    sget v5, Lccsanandroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZI)V

    .line 736
    invoke-virtual {p3}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Lccsanandroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 737
    .local v0, "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    iget-object v1, p1, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v1, :cond_0

    invoke-static {p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$200(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    :goto_0
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Lccsanandroid/view/View;)V

    .line 742
    :cond_1
    iget-object p1, p1, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 743
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 747
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 748
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 750
    invoke-super {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 751
    return-void
.end method
