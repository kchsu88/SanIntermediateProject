.class Lccsanandroidx/recyclerview/widget/TileList;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/TileList$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "tileSize"    # I

    .line 35
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lccsanandroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lccsanandroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    .line 36
    iput p1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTileSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addOrReplace(Lccsanandroidx/recyclerview/widget/TileList$Tile;)Lccsanandroidx/recyclerview/widget/TileList$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    .local p1, "newTile":Lccsanandroidx/recyclerview/widget/TileList$Tile;, "Lccsanandroidx/recyclerview/widget/TileList$Tile<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    iget v1, p1, Lccsanandroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v1}, Lccsanandroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 65
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 66
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    iget v2, p1, Lccsanandroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v1, v2, p1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_0
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/recyclerview/widget/TileList$Tile;

    .line 70
    .local v1, "oldTile":Lccsanandroidx/recyclerview/widget/TileList$Tile;, "Lccsanandroidx/recyclerview/widget/TileList$Tile<TT;>;"
    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Lccsanandroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    if-ne v2, v1, :cond_1

    .line 72
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    .line 74
    :cond_1
    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 56
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public getAtIndex(I)Lccsanandroidx/recyclerview/widget/TileList$Tile;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/TileList$Tile;

    return-object v0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/TileList$Tile;->containsPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_0
    iget v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTileSize:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    .line 42
    .local v0, "startPosition":I
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lccsanandroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 43
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 44
    const/4 v2, 0x0

    return-object v2

    .line 46
    :cond_1
    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/recyclerview/widget/TileList$Tile;

    iput-object v2, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    .line 48
    .end local v0    # "startPosition":I
    .end local v1    # "index":I
    :cond_2
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/TileList$Tile;->getByPosition(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAtPos(I)Lccsanandroidx/recyclerview/widget/TileList$Tile;
    .locals 2
    .param p1, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/TileList$Tile;

    .line 79
    .local v0, "tile":Lccsanandroidx/recyclerview/widget/TileList$Tile;, "Lccsanandroidx/recyclerview/widget/TileList$Tile<TT;>;"
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    if-ne v1, v0, :cond_0

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mLastAccessedTile:Lccsanandroidx/recyclerview/widget/TileList$Tile;

    .line 82
    :cond_0
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, p1}, Lccsanandroid/util/SparseArray;->delete(I)V

    .line 83
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 52
    .local p0, "this":Lccsanandroidx/recyclerview/widget/TileList;, "Lccsanandroidx/recyclerview/widget/TileList<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/TileList;->mTiles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
