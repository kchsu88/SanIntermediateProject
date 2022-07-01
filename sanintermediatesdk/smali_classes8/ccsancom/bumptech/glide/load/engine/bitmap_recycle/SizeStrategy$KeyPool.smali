.class Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
.super Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method protected create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 1

    .line 116
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(I)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 1
    .param p1, "size"    # I

    .line 109
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 110
    .local v0, "result":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->init(I)V

    .line 111
    return-object v0
.end method
