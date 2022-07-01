.class Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
.super Ljava/lang/Object;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Lccsanandroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnActionExpandListenerWrapper"
.end annotation


# instance fields
.field private final mObject:Lccsanandroid/view/MenuItem$OnActionExpandListener;

.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0
    .param p2, "object"    # Lccsanandroid/view/MenuItem$OnActionExpandListener;

    .line 414
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mObject:Lccsanandroid/view/MenuItem$OnActionExpandListener;

    .line 416
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lccsanandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 425
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mObject:Lccsanandroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Lccsanandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 420
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mObject:Lccsanandroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
