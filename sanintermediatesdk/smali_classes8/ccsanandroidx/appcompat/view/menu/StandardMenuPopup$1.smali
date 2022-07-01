.class Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    .line 61
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 67
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Lccsanandroid/view/View;

    .line 69
    .local v0, "anchor":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->show()V

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 76
    .end local v0    # "anchor":Lccsanandroid/view/View;
    :cond_2
    :goto_1
    return-void
.end method
