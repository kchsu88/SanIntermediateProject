.class public Lccsanandroidx/appcompat/widget/MenuPopupWindow;
.super Lccsanandroidx/appcompat/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuPopupWindow"

.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 62
    const-class v0, Lccsanandroid/widget/PopupWindow;

    const-string/jumbo v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/widget/ListPopupWindow;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method


# virtual methods
.method createDropDownListView(Lccsanandroid/content/Context;Z)Lccsanandroidx/appcompat/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 80
    new-instance v0, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Lccsanandroid/content/Context;Z)V

    .line 81
    .local v0, "view":Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Lccsanandroidx/appcompat/widget/MenuItemHoverListener;)V

    .line 82
    return-object v0
.end method

.method public onItemHoverEnter(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 122
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onItemHoverExit(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 130
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "enterTransition"    # Ljava/lang/Object;

    .line 86
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    move-object v1, p1

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/PopupWindow;->setEnterTransition(Lccsanandroid/transition/Transition;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "exitTransition"    # Ljava/lang/Object;

    .line 92
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    move-object v1, p1

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/PopupWindow;->setExitTransition(Lccsanandroid/transition/Transition;)V

    .line 95
    :cond_0
    return-void
.end method

.method public setHoverListener(Lccsanandroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    .line 98
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Lccsanandroidx/appcompat/widget/MenuItemHoverListener;

    .line 99
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 5
    .param p1, "touchModal"    # Z

    .line 106
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 107
    sget-object v0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 109
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 115
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->mPopup:Lccsanandroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 117
    :cond_1
    :goto_1
    return-void
.end method