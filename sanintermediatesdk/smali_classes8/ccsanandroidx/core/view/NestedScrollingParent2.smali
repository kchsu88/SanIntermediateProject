.class public interface abstract Lccsanandroidx/core/view/NestedScrollingParent2;
.super Ljava/lang/Object;
.source "NestedScrollingParent2.java"

# interfaces
.implements Lccsanandroidx/core/view/NestedScrollingParent;


# virtual methods
.method public abstract onNestedPreScroll(Lccsanandroid/view/View;II[II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed",
            "type"
        }
    .end annotation
.end method

.method public abstract onNestedScroll(Lccsanandroid/view/View;IIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type"
        }
    .end annotation
.end method

.method public abstract onNestedScrollAccepted(Lccsanandroid/view/View;Lccsanandroid/view/View;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation
.end method

.method public abstract onStartNestedScroll(Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation
.end method

.method public abstract onStopNestedScroll(Lccsanandroid/view/View;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "type"
        }
    .end annotation
.end method
