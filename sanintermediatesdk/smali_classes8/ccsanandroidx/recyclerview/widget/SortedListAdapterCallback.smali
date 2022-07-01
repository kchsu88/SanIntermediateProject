.class public abstract Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;
.super Lccsanandroidx/recyclerview/widget/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/recyclerview/widget/SortedList$Callback<",
        "TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    .local p0, "this":Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;, "Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/SortedList$Callback;-><init>()V

    .line 34
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 54
    .local p0, "this":Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;, "Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 55
    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 59
    .local p0, "this":Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;, "Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 39
    .local p0, "this":Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;, "Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 40
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 49
    .local p0, "this":Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;, "Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 50
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 44
    .local p0, "this":Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;, "Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 45
    return-void
.end method
