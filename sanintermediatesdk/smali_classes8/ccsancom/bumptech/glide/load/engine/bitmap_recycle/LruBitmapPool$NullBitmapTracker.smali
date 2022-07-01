.class Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullBitmapTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;

    .line 260
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 264
    return-void
.end method

.method public remove(Lccsanandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 269
    return-void
.end method
