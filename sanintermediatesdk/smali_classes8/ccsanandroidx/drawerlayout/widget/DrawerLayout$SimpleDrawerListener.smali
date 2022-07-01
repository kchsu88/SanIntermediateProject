.class public abstract Lccsanandroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Lccsanandroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleDrawerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "drawerView"    # Lccsanandroid/view/View;

    .line 298
    return-void
.end method

.method public onDrawerOpened(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "drawerView"    # Lccsanandroid/view/View;

    .line 294
    return-void
.end method

.method public onDrawerSlide(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "drawerView"    # Lccsanandroid/view/View;
    .param p2, "slideOffset"    # F

    .line 290
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 302
    return-void
.end method
