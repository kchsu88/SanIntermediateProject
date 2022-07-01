.class public Lccsanandroidx/appcompat/widget/FitWindowsFrameLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "FitWindowsFrameLayout.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/FitWindowsViewGroup;


# instance fields
.field private mListener:Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Lccsanandroid/graphics/Rect;

    .line 53
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/FitWindowsFrameLayout;->mListener:Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Lccsanandroid/graphics/Rect;)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->fitSystemWindows(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 48
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/FitWindowsFrameLayout;->mListener:Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 49
    return-void
.end method
