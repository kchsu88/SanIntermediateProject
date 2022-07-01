.class public final Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;,
        Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;,
        Lccsanandroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;,
        Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;,
        Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;,
        Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "ResourceManagerInternal"


# instance fields
.field private mDelegates:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/content/Context;",
            "Lccsanandroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

.field private mKnownDrawableIdTags:Lccsanandroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/content/Context;",
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Lccsanandroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Lccsanandroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    sput-object v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 112
    new-instance v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;

    .line 367
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Lccsanandroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Lccsanandroidx/collection/SimpleArrayMap;

    .line 370
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method private declared-synchronized addDrawableToCache(Lccsanandroid/content/Context;JLccsanandroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "key"    # J
    .param p4, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-virtual {p4}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 337
    .local v0, "cs":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/collection/LongSparseArray;

    .line 339
    .local v1, "cache":Lccsanandroidx/collection/LongSparseArray;, "Lccsanandroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v1, :cond_0

    .line 340
    new-instance v2, Lccsanandroidx/collection/LongSparseArray;

    invoke-direct {v2}, Lccsanandroidx/collection/LongSparseArray;-><init>()V

    move-object v1, v2

    .line 341
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, v2}, Lccsanandroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 346
    .end local v1    # "cache":Lccsanandroidx/collection/LongSparseArray;, "Lccsanandroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 335
    .end local v0    # "cs":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "key":J
    .end local p4    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addTintListToCache(Lccsanandroid/content/Context;ILccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 402
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 405
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/SparseArrayCompat;

    .line 406
    .local v0, "themeTints":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 407
    new-instance v1, Lccsanandroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Lccsanandroidx/collection/SparseArrayCompat;-><init>()V

    move-object v0, v1

    .line 408
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_1
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 411
    return-void
.end method

.method private checkVectorDrawableSetup(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 482
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    .line 484
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 489
    sget v0, Lccsanandroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 490
    .local v0, "d":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->isVectorDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    return-void

    .line 491
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 492
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createCacheKey(Lccsanandroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Lccsanandroid/util/TypedValue;

    .line 167
    iget v0, p0, Lccsanandroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lccsanandroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createDrawableIfNeeded(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 172
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Lccsanandroid/util/TypedValue;

    .line 175
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Lccsanandroid/util/TypedValue;

    .line 176
    .local v0, "tv":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 177
    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->createCacheKey(Lccsanandroid/util/TypedValue;)J

    move-result-wide v1

    .line 179
    .local v1, "key":J
    invoke-direct {p0, p1, v1, v2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Lccsanandroid/content/Context;J)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 180
    .local v3, "dr":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 182
    return-object v3

    .line 186
    :cond_1
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 187
    :cond_2
    invoke-interface {v4, p0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->createDrawableFor(Lccsanandroidx/appcompat/widget/ResourceManagerInternal;Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    move-object v3, v4

    .line 189
    if-eqz v3, :cond_3

    .line 190
    iget v4, v0, Lccsanandroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 192
    invoke-direct {p0, p1, v1, v2, v3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Lccsanandroid/content/Context;JLccsanandroid/graphics/drawable/Drawable;)Z

    .line 195
    :cond_3
    return-object v3
.end method

.method private static createTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;[I)Lccsanandroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Lccsanandroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .line 460
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 464
    .local v0, "color":I
    invoke-static {v0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized get()Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    .locals 2

    const-class v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-direct {v1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    sput-object v1, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    .line 96
    invoke-static {v1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->installDefaultInflateDelegates(Lccsanandroidx/appcompat/widget/ResourceManagerInternal;)V

    .line 98
    :cond_0
    sget-object v1, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getCachedDrawable(Lccsanandroid/content/Context;J)Lccsanandroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "key"    # J

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .local v0, "cache":Lccsanandroidx/collection/LongSparseArray;, "Lccsanandroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    monitor-exit p0

    return-object v1

    .line 320
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 321
    .local v2, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v2, :cond_2

    .line 323
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 324
    .local v3, "entry":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_1

    .line 325
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 328
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    .end local v3    # "entry":Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 314
    .end local v0    # "cache":Lccsanandroidx/collection/LongSparseArray;, "Lccsanandroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "key":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;
    .locals 4
    .param p0, "color"    # I
    .param p1, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    const-class v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v0

    .line 470
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->get(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    .line 472
    .local v2, "filter":Lccsanandroid/graphics/PorterDuffColorFilter;
    if-nez v2, :cond_0

    .line 474
    new-instance v3, Lccsanandroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Lccsanandroid/graphics/PorterDuffColorFilter;-><init>(ILccsanandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 475
    invoke-virtual {v1, p0, p1, v2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->put(ILccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/graphics/PorterDuffColorFilter;)Lccsanandroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    monitor-exit v0

    return-object v2

    .line 469
    .end local v2    # "filter":Lccsanandroid/graphics/PorterDuffColorFilter;
    .end local p0    # "color":I
    .end local p1    # "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTintListFromCache(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 393
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/SparseArrayCompat;

    .line 395
    .local v0, "tints":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lccsanandroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/res/ColorStateList;

    :cond_0
    return-object v1

    .line 397
    .end local v0    # "tints":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroid/content/res/ColorStateList;>;"
    :cond_1
    return-object v1
.end method

.method private static installDefaultInflateDelegates(Lccsanandroidx/appcompat/widget/ResourceManagerInternal;)V
    .locals 2
    .param p0, "manager"    # Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    .line 105
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 106
    new-instance v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;-><init>()V

    const-string/jumbo v1, "vector"

    invoke-direct {p0, v1, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 107
    new-instance v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 108
    new-instance v0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 110
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "d"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 498
    instance-of v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_1

    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 498
    :goto_1
    return v0
.end method

.method private loadDrawableFromDelegates(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 229
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Lccsanandroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lccsanandroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Lccsanandroidx/collection/SparseArrayCompat;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {v0, p2}, Lccsanandroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "cachedTagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Lccsanandroidx/collection/SimpleArrayMap;

    .line 233
    invoke-virtual {v3, v0}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 242
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 240
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 244
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2
    new-instance v0, Lccsanandroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Lccsanandroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Lccsanandroidx/collection/SparseArrayCompat;

    .line 247
    :goto_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Lccsanandroid/util/TypedValue;

    .line 250
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Lccsanandroid/util/TypedValue;

    .line 251
    .local v0, "tv":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 252
    .local v1, "res":Lccsanandroid/content/res/Resources;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 254
    invoke-static {v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->createCacheKey(Lccsanandroid/util/TypedValue;)J

    move-result-wide v4

    .line 256
    .local v4, "key":J
    invoke-direct {p0, p1, v4, v5}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Lccsanandroid/content/Context;J)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 257
    .local v6, "dr":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 263
    return-object v6

    .line 266
    :cond_4
    iget-object v7, v0, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    iget-object v7, v0, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 269
    :try_start_0
    invoke-virtual {v1, p2}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 270
    .local v7, "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v8

    .line 272
    .local v8, "attrs":Lccsanandroid/util/AttributeSet;
    :goto_2
    invoke-interface {v7}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    if-eq v10, v3, :cond_5

    goto :goto_2

    .line 276
    :cond_5
    if-ne v10, v11, :cond_8

    .line 280
    invoke-interface {v7}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "tagName":Ljava/lang/String;
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v9, p2, v3}, Lccsanandroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 285
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v3}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;

    .line 286
    .local v9, "delegate":Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;
    if-eqz v9, :cond_6

    .line 287
    nop

    .line 288
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v11

    .line 287
    invoke-interface {v9, p1, v7, v8, v11}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;->createFromXmlInner(Lccsanandroid/content/Context;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 290
    :cond_6
    if-eqz v6, :cond_7

    .line 292
    iget v11, v0, Lccsanandroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v11}, Lccsanandroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 293
    invoke-direct {p0, p1, v4, v5, v6}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Lccsanandroid/content/Context;JLccsanandroid/graphics/drawable/Drawable;)Z

    .line 300
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Lccsanandroid/util/AttributeSet;
    .end local v9    # "delegate":Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;
    .end local v10    # "type":I
    :cond_7
    goto :goto_3

    .line 277
    .restart local v7    # "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "attrs":Lccsanandroid/util/AttributeSet;
    .restart local v10    # "type":I
    :cond_8
    new-instance v3, Lccsanorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v3, v9}, Lccsanorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tv":Lccsanandroid/util/TypedValue;
    .end local v1    # "res":Lccsanandroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Lccsanandroid/graphics/drawable/Drawable;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v7    # "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Lccsanandroid/util/AttributeSet;
    .end local v10    # "type":I
    .restart local v0    # "tv":Lccsanandroid/util/TypedValue;
    .restart local v1    # "res":Lccsanandroid/content/res/Resources;
    .restart local v4    # "key":J
    .restart local v6    # "dr":Lccsanandroid/graphics/drawable/Drawable;
    .restart local p1    # "context":Lccsanandroid/content/Context;
    .restart local p2    # "resId":I
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "ResourceManagerInternal"

    const-string v8, "Exception while inflating drawable"

    invoke-static {v7, v8, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 305
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, p2, v2}, Lccsanandroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 307
    :cond_a
    return-object v6

    .line 310
    .end local v0    # "tv":Lccsanandroid/util/TypedValue;
    .end local v1    # "res":Lccsanandroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Lccsanandroid/graphics/drawable/Drawable;
    :cond_b
    return-object v1
.end method

.method private tintDrawable(Lccsanandroid/content/Context;IZLccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 201
    .local v0, "tintList":Lccsanandroid/content/res/ColorStateList;
    if-eqz v0, :cond_2

    .line 203
    invoke-static {p4}, Lccsanandroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p4}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 206
    :cond_0
    invoke-static {p4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 207
    invoke-static {p4, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 210
    invoke-virtual {p0, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getTintMode(I)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 211
    .local v1, "tintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_1

    .line 212
    invoke-static {p4, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 214
    .end local v1    # "tintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p2, p4}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawable(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 219
    .local v1, "tinted":Z
    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    .line 222
    const/4 p4, 0x0

    .line 225
    .end local v1    # "tinted":Z
    :cond_4
    :goto_1
    return-object p4
.end method

.method static tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V
    .locals 2
    .param p0, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Lccsanandroidx/appcompat/widget/TintInfo;
    .param p2, "state"    # [I

    .line 436
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 438
    const-string v0, "ResourceManagerInternal"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_0
    iget-boolean v0, p1, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    .line 443
    :cond_2
    :goto_0
    nop

    .line 444
    iget-boolean v0, p1, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 445
    :goto_1
    iget-boolean v1, p1, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object v1, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 443
    :goto_2
    invoke-static {v0, v1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->createTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;[I)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 451
    :goto_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5

    .line 454
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 456
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 132
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;IZ)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDrawable(Lccsanandroid/content/Context;IZ)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->checkVectorDrawableSetup(Lccsanandroid/content/Context;)V

    .line 139
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->createDrawableIfNeeded(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 143
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :cond_0
    if-nez v0, :cond_1

    .line 144
    invoke-static {p1, p2}, Lccsanandroidx/core/content/ContextCompat;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Lccsanandroid/content/Context;IZLccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 151
    :cond_2
    if-eqz v0, :cond_3

    .line 153
    invoke-static {v0}, Lccsanandroidx/appcompat/widget/DrawableUtils;->fixDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_3
    monitor-exit p0

    return-object v0

    .line 136
    .end local v0    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    .end local p3    # "failIfNotKnown":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getTintListFromCache(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 381
    .local v0, "tint":Lccsanandroid/content/res/ColorStateList;
    if-nez v0, :cond_1

    .line 383
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintListForDrawableRes(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->addTintListToCache(Lccsanandroid/content/Context;ILccsanandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 378
    .end local v0    # "tint":Lccsanandroid/content/res/ColorStateList;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getTintMode(I)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "resId"    # I

    .line 374
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintModeForDrawableRes(I)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized onConfigurationChanged(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/LongSparseArray;

    .line 160
    .local v0, "cache":Lccsanandroidx/collection/LongSparseArray;, "Lccsanandroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lccsanandroidx/collection/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    .end local v0    # "cache":Lccsanandroidx/collection/LongSparseArray;, "Lccsanandroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local p1    # "context":Lccsanandroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resources"    # Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-direct {p0, p1, p3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    .local v0, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p2, p3}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->superGetDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 355
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    :cond_0
    if-eqz v0, :cond_1

    .line 356
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Lccsanandroid/content/Context;IZLccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 358
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 350
    .end local v0    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resources":Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;
    .end local p3    # "resId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHooks(Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    .locals 0
    .param p1, "hooks"    # Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    .end local p1    # "hooks":Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 363
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
