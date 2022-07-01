.class public interface abstract Lccsanandroidx/core/view/NestedScrollingParent;
.super Ljava/lang/Object;
.source "NestedScrollingParent.java"


# virtual methods
.method public abstract getNestedScrollAxes()I
.end method

.method public abstract onNestedFling(Lccsanandroid/view/View;FFZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation
.end method

.method public abstract onNestedPreFling(Lccsanandroid/view/View;FF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY"
        }
    .end annotation
.end method

.method public abstract onNestedPreScroll(Lccsanandroid/view/View;II[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed"
        }
    .end annotation
.end method

.method public abstract onNestedScroll(Lccsanandroid/view/View;IIII)V
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
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed"
        }
    .end annotation
.end method

.method public abstract onNestedScrollAccepted(Lccsanandroid/view/View;Lccsanandroid/view/View;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes"
        }
    .end annotation
.end method

.method public abstract onStartNestedScroll(Lccsanandroid/view/View;Lccsanandroid/view/View;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes"
        }
    .end annotation
.end method

.method public abstract onStopNestedScroll(Lccsanandroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation
.end method
