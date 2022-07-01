.class Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;,
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final MAX_SIZE_MULTIPLE:I = 0x8


# instance fields
.field private final groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 19
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 20
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    .line 121
    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 16
    invoke-static {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/Integer;

    .line 65
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    .local v0, "current":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return-void
.end method

.method private static getBitmapString(I)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapString(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 97
    invoke-static {p0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    .line 98
    .local v0, "size":I
    invoke-static {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 35
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(IILccsanandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 36
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    .line 38
    .local v1, "key":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 39
    .local v2, "possibleSize":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    if-gt v3, v4, :cond_0

    .line 40
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v3, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 41
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    .line 45
    :cond_0
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v3, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Bitmap;

    .line 46
    .local v3, "result":Lccsanandroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v3, p1, p2, p3}, Lccsanandroid/graphics/Bitmap;->reconfigure(IILccsanandroid/graphics/Bitmap$Config;)V

    .line 48
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    .line 51
    :cond_1
    return-object v3
.end method

.method public getSize(Lccsanandroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 86
    invoke-static {p1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public logBitmap(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 80
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(IILccsanandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 81
    .local v0, "size":I
    invoke-static {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logBitmap(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 75
    invoke-static {p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsanandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 24
    invoke-static {p1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    .line 25
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    .line 27
    .local v1, "key":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v2, v1, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 29
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->access$000(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 30
    .local v2, "current":Ljava/lang/Integer;
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->access$000(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public removeLast()Lccsanandroid/graphics/Bitmap;
    .locals 3

    .line 56
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    .line 57
    .local v0, "removed":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v1

    .line 59
    .local v1, "removedSize":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    .line 61
    .end local v1    # "removedSize":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
