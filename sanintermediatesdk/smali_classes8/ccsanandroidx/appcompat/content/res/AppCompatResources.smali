.class public final Lccsanandroidx/appcompat/content/res/AppCompatResources;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatResources"

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lccsanandroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorStateListToCache(Lccsanandroid/content/Context;ILccsanandroid/content/res/ColorStateList;)V
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "value"    # Lccsanandroid/content/res/ColorStateList;

    .line 150
    sget-object v0, Lccsanandroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/util/SparseArray;

    .line 152
    .local v2, "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    if-nez v2, :cond_0

    .line 153
    new-instance v3, Lccsanandroid/util/SparseArray;

    invoke-direct {v3}, Lccsanandroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 154
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    new-instance v1, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;

    .line 157
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/Configuration;)V

    .line 156
    invoke-virtual {v2, p1, v1}, Lccsanandroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 158
    .end local v2    # "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getCachedColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 130
    sget-object v0, Lccsanandroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/SparseArray;

    .line 132
    .local v1, "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 133
    invoke-virtual {v1, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;

    .line 134
    .local v2, "entry":Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    if-eqz v2, :cond_1

    .line 135
    iget-object v3, v2, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;->configuration:Lccsanandroid/content/res/Configuration;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroid/content/res/Configuration;->equals(Lccsanandroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, v2, Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;->value:Lccsanandroid/content/res/ColorStateList;

    monitor-exit v0

    return-object v3

    .line 140
    :cond_0
    invoke-virtual {v1, p1}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 144
    .end local v1    # "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    .end local v2    # "entry":Lccsanandroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    :cond_1
    monitor-exit v0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 67
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getCachedColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 74
    .local v0, "csl":Lccsanandroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 75
    return-object v0

    .line 78
    :cond_1
    invoke-static {p0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->inflateColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 81
    invoke-static {p0, p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->addColorStateListToCache(Lccsanandroid/content/Context;ILccsanandroid/content/res/ColorStateList;)V

    .line 82
    return-object v0

    .line 86
    :cond_2
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 104
    invoke-static {}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->get()Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getTypedValue()Lccsanandroid/util/TypedValue;
    .locals 3

    .line 173
    sget-object v0, Lccsanandroidx/appcompat/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/TypedValue;

    .line 174
    .local v1, "tv":Lccsanandroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 175
    new-instance v2, Lccsanandroid/util/TypedValue;

    invoke-direct {v2}, Lccsanandroid/util/TypedValue;-><init>()V

    move-object v1, v2

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-object v1
.end method

.method private static inflateColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 112
    invoke-static {p0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->isColorInt(Lccsanandroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    return-object v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, "r":Lccsanandroid/content/res/Resources;
    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 120
    .local v2, "xml":Lccsanorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsanandroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AppCompatResources"

    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v4, v5, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static isColorInt(Lccsanandroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 162
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, "r":Lccsanandroid/content/res/Resources;
    invoke-static {}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getTypedValue()Lccsanandroid/util/TypedValue;

    move-result-object v1

    .line 165
    .local v1, "value":Lccsanandroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 167
    iget v3, v1, Lccsanandroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    iget v3, v1, Lccsanandroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
