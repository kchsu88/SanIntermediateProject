.class public Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.java"

# interfaces
.implements Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePanelSlideListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelClosed(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Lccsanandroid/view/View;

    .line 237
    return-void
.end method

.method public onPanelOpened(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Lccsanandroid/view/View;

    .line 234
    return-void
.end method

.method public onPanelSlide(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "panel"    # Lccsanandroid/view/View;
    .param p2, "slideOffset"    # F

    .line 231
    return-void
.end method