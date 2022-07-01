.class Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuTextItem"
.end annotation


# instance fields
.field private final menuItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

.field needsEmptyIcon:Z


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 740
    return-void
.end method


# virtual methods
.method public getMenuItem()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 743
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method
