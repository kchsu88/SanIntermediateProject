.class Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothScrollToPosition"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(ILccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mPosition:I

    .line 1064
    iput-object p2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 1065
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1069
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mPosition:I

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1070
    return-void
.end method
