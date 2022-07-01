.class public Lccsanandroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Lccsanandroid/view/MotionEvent;

    .line 10849
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 10858
    return-void
.end method

.method public onTouchEvent(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Lccsanandroid/view/MotionEvent;

    .line 10854
    return-void
.end method
