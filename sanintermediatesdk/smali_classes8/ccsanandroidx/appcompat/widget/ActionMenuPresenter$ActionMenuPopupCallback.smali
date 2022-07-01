.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    .line 801
    return-void
.end method


# virtual methods
.method public getPopup()Lccsanandroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 805
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lccsanandroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
