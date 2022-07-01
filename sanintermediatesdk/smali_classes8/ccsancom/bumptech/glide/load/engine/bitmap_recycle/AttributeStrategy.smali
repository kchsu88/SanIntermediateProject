.class Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;,
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    }
.end annotation


# instance fields
.field private final groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    .line 12
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 75
    return-void
.end method

.method static synthetic access$000(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 10
    invoke-static {p0, p1, p2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->getBitmapString(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapString(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapString(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->getBitmapString(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 22
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-result-object v0

    .line 24
    .local v0, "key":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Bitmap;

    return-object v1
.end method

.method public getSize(Lccsanandroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 44
    invoke-static {p1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public logBitmap(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 39
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->getBitmapString(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBitmap(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 34
    invoke-static {p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->getBitmapString(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsanandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 15
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-result-object v0

    .line 17
    .local v0, "key":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v1, v0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public removeLast()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
