.class Lccsanandroidx/appcompat/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/PopupMenu;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/PopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/PopupMenu;

    .line 109
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/PopupMenu$1;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 112
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu$1;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu$1;->this$0:Lccsanandroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 120
    return-void
.end method
