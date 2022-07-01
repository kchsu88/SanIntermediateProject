.class public Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;,
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final ALPHA_8_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

.field private static final ARGB_4444_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

.field private static final ARGB_8888_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

.field private static final MAX_SIZE_MULTIPLE:I = 0x8

.field private static final RGB_565_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;


# instance fields
.field private final groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lccsanandroid/graphics/Bitmap$Config;

    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    .line 35
    new-array v0, v3, [Lccsanandroid/graphics/Bitmap$Config;

    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->RGB_565:Lccsanandroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    .line 38
    new-array v0, v3, [Lccsanandroid/graphics/Bitmap$Config;

    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_4444:Lccsanandroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    .line 41
    new-array v0, v3, [Lccsanandroid/graphics/Bitmap$Config;

    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ALPHA_8:Lccsanandroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 46
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 172
    return-void
.end method

.method static synthetic access$100(ILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 26
    invoke-static {p0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;Lccsanandroid/graphics/Bitmap$Config;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/Integer;
    .param p2, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 106
    invoke-direct {p0, p2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Lccsanandroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 107
    .local v0, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 108
    .local v1, "current":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 109
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_0
    return-void
.end method

.method private findBestKey(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;ILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 9
    .param p1, "key"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .param p2, "size"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 79
    move-object v0, p1

    .line 80
    .local v0, "result":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    invoke-static {p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getInConfigs(Lccsanandroid/graphics/Bitmap$Config;)[Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v1

    .local v1, "arr$":[Lccsanandroid/graphics/Bitmap$Config;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 81
    .local v4, "possibleConfig":Lccsanandroid/graphics/Bitmap$Config;
    invoke-direct {p0, v4}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Lccsanandroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    .line 82
    .local v5, "sizesForPossibleConfig":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 83
    .local v6, "possibleSize":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v8, p2, 0x8

    if-gt v7, v8, :cond_2

    .line 84
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-nez v4, :cond_0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p3}, Lccsanandroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 86
    :cond_1
    :goto_1
    iget-object v7, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v7, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->offer(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 87
    iget-object v7, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v4}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v0

    goto :goto_2

    .line 80
    .end local v4    # "possibleConfig":Lccsanandroid/graphics/Bitmap$Config;
    .end local v5    # "sizesForPossibleConfig":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "possibleSize":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "arr$":[Lccsanandroid/graphics/Bitmap$Config;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    :goto_2
    return-object v0
.end method

.method private static getBitmapString(ILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # I
    .param p1, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInConfigs(Lccsanandroid/graphics/Bitmap$Config;)[Lccsanandroid/graphics/Bitmap$Config;
    .locals 2
    .param p0, "requested"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 225
    sget-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Lccsanandroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 233
    :pswitch_0
    sget-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    return-object v0

    .line 231
    :pswitch_1
    sget-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    return-object v0

    .line 229
    :pswitch_2
    sget-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    return-object v0

    .line 227
    :pswitch_3
    sget-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Lccsanandroid/graphics/Bitmap$Config;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizesForConfig(Lccsanandroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 2
    .param p1, "config"    # Lccsanandroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 117
    .local v0, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object v0, v1

    .line 119
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    return-object v0
.end method


# virtual methods
.method public get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 64
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(IILccsanandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 65
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v1, v0, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v1

    .line 66
    .local v1, "targetKey":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    invoke-direct {p0, v1, v0, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->findBestKey(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;ILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v2

    .line 68
    .local v2, "bestKey":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v3, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Bitmap;

    .line 69
    .local v3, "result":Lccsanandroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 71
    invoke-static {v3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Lccsanandroid/graphics/Bitmap$Config;)V

    .line 72
    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    :goto_0
    invoke-virtual {v3, p1, p2, v4}, Lccsanandroid/graphics/Bitmap;->reconfigure(IILccsanandroid/graphics/Bitmap$Config;)V

    .line 75
    :cond_1
    return-object v3
.end method

.method public getSize(Lccsanandroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 138
    invoke-static {p1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public logBitmap(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 132
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(IILccsanandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 133
    .local v0, "size":I
    invoke-static {v0, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logBitmap(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 126
    invoke-static {p1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    .line 127
    .local v0, "size":I
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public put(Lccsanandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 52
    invoke-static {p1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    .line 53
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v1

    .line 55
    .local v1, "key":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v2, v1, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Lccsanandroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v2

    .line 58
    .local v2, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->access$000(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 59
    .local v3, "current":Ljava/lang/Integer;
    invoke-static {v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->access$000(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public removeLast()Lccsanandroid/graphics/Bitmap;
    .locals 4

    .line 97
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    .line 98
    .local v0, "removed":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v1

    .line 100
    .local v1, "removedSize":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Lccsanandroid/graphics/Bitmap$Config;)V

    .line 102
    .end local v1    # "removedSize":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeConfigStrategy{groupedMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    goto :goto_0

    .line 150
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
