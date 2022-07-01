.class final Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;
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
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 2761
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2762
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2775
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->checkCloseActionMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 2776
    return-void
.end method

.method public onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 2766
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Lccsanandroid/view/Window$Callback;

    move-result-object v0

    .line 2767
    .local v0, "cb":Lccsanandroid/view/Window$Callback;
    if-eqz v0, :cond_0

    .line 2768
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Lccsanandroid/view/Window$Callback;->onMenuOpened(ILccsanandroid/view/Menu;)Z

    .line 2770
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
