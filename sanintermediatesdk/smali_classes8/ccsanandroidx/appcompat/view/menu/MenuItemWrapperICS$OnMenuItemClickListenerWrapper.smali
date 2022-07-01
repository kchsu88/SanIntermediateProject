.class Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
.super Ljava/lang/Object;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Lccsanandroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListenerWrapper"
.end annotation


# instance fields
.field private final mObject:Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p2, "object"    # Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    .line 401
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mObject:Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    .line 403
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lccsanandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 407
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mObject:Lccsanandroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanandroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
