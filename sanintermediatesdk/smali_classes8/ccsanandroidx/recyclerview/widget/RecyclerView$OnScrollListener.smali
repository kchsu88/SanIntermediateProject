.class public abstract Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lccsanandroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 10878
    return-void
.end method

.method public onScrolled(Lccsanandroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 10891
    return-void
.end method
