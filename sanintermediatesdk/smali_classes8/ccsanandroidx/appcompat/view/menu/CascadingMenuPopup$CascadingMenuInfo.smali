.class Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field public final position:I

.field public final window:Lccsanandroidx/appcompat/widget/MenuPopupWindow;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/MenuPopupWindow;Lccsanandroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 0
    .param p1, "window"    # Lccsanandroidx/appcompat/widget/MenuPopupWindow;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "position"    # I

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    .line 802
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 803
    iput p3, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    .line 804
    return-void
.end method


# virtual methods
.method public getListView()Lccsanandroid/widget/ListView;
    .locals 1

    .line 807
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
