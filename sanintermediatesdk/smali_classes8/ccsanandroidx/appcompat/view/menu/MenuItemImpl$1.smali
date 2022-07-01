.class Lccsanandroidx/appcompat/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lccsanandroidx/core/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->setSupportActionProvider(Lccsanandroidx/core/view/ActionProvider;)Lccsanandroidx/core/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 806
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 809
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl$1;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 810
    return-void
.end method
