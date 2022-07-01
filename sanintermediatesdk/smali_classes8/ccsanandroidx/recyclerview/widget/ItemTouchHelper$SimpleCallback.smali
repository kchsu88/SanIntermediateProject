.class public abstract Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.super Lccsanandroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .line 2233
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2234
    iput p2, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2235
    iput p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2236
    return-void
.end method


# virtual methods
.method public getDragDirs(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2287
    iget v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2293
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2294
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 2293
    invoke-static {v0, v1}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2272
    iget v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .line 2257
    iput p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2258
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .line 2246
    iput p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2247
    return-void
.end method
