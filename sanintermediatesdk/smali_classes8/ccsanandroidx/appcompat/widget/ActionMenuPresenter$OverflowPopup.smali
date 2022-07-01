.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;
.super Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Lccsanandroid/view/View;
    .param p5, "overflowOnly"    # Z

    .line 715
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    .line 716
    sget v5, Lccsanandroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZI)V

    .line 717
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 718
    iget-object p1, p1, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 719
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 723
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$000(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$100(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 726
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 728
    invoke-super {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 729
    return-void
.end method
