.class Lccsancom/google/android/material/navigation/NavigationView$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/navigation/NavigationView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/navigation/NavigationView;

    .line 214
    iput-object p1, p0, Lccsancom/google/android/material/navigation/NavigationView$1;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView$1;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    iget-object v0, v0, Lccsancom/google/android/material/navigation/NavigationView;->listener:Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView$1;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    iget-object v0, v0, Lccsancom/google/android/material/navigation/NavigationView;->listener:Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    invoke-interface {v0, p2}, Lccsancom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 221
    return-void
.end method
