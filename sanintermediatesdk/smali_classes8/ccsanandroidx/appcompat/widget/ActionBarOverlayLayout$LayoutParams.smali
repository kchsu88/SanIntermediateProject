.class public Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
.super Lccsanandroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 880
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 881
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 876
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 877
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 884
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 885
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 888
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 889
    return-void
.end method
