.class Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 782
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 784
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 788
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$400(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$500(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->changeMenuMode()V

    .line 791
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->access$600(Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)Lccsanandroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 792
    .local v0, "menuView":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    iput-object v2, v1, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 795
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    iput-object v2, v1, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lccsanandroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 796
    return-void
.end method
