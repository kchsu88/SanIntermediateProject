.class final Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 2727
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2728
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2732
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    .line 2733
    .local v0, "parentMenu":Lccsanandroid/view/Menu;
    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2734
    .local v2, "isSubMenu":Z
    :goto_0
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    if-eqz v2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    invoke-virtual {v3, v4}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->findMenuPanel(Lccsanandroid/view/Menu;)Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    .line 2735
    .local v3, "panel":Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    if-eqz v3, :cond_3

    .line 2736
    if-eqz v2, :cond_2

    .line 2737
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget v5, v3, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {v4, v5, v3, v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->callOnPanelClosed(ILccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Lccsanandroid/view/Menu;)V

    .line 2738
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v4, v3, v1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_2

    .line 2742
    :cond_2
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v3, p2}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 2745
    :cond_3
    :goto_2
    return-void
.end method

.method public onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 2750
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Lccsanandroid/view/Window$Callback;

    move-result-object v0

    .line 2752
    .local v0, "cb":Lccsanandroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_0

    .line 2753
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Lccsanandroid/view/Window$Callback;->onMenuOpened(ILccsanandroid/view/Menu;)Z

    .line 2756
    .end local v0    # "cb":Lccsanandroid/view/Window$Callback;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
