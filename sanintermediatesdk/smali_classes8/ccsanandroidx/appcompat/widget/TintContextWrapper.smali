.class public Lccsanandroidx/appcompat/widget/TintContextWrapper;
.super Lccsanandroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroidx/appcompat/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Lccsanandroid/content/res/Resources;

.field private final mTheme:Lccsanandroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Lccsanandroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Lccsanandroid/content/ContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 94
    invoke-static {}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mResources:Lccsanandroid/content/res/Resources;

    .line 98
    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->newTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    .line 99
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources$Theme;->setTo(Lccsanandroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lccsanandroidx/appcompat/widget/TintResources;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/TintResources;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mResources:Lccsanandroid/content/res/Resources;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    .line 104
    :goto_0
    return-void
.end method

.method private static shouldWrap(Lccsanandroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 78
    instance-of v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Lccsanandroidx/appcompat/widget/TintResources;

    if-nez v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-static {}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 83
    :cond_3
    :goto_0
    return v1
.end method

.method public static wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 46
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->shouldWrap(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    sget-object v0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    goto :goto_3

    .line 52
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 53
    sget-object v2, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 54
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroidx/appcompat/widget/TintContextWrapper;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 55
    :cond_1
    sget-object v3, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroidx/appcompat/widget/TintContextWrapper;>;"
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 60
    sget-object v2, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 61
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroidx/appcompat/widget/TintContextWrapper;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/appcompat/widget/TintContextWrapper;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 62
    .local v3, "wrapper":Lccsanandroidx/appcompat/widget/TintContextWrapper;
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v4

    if-ne v4, p0, :cond_5

    .line 63
    monitor-exit v0

    return-object v3

    .line 59
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroidx/appcompat/widget/TintContextWrapper;>;"
    .end local v3    # "wrapper":Lccsanandroidx/appcompat/widget/TintContextWrapper;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 69
    .end local v1    # "i":I
    :cond_6
    :goto_3
    new-instance v1, Lccsanandroidx/appcompat/widget/TintContextWrapper;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/TintContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 70
    .local v1, "wrapper":Lccsanandroidx/appcompat/widget/TintContextWrapper;
    sget-object v2, Lccsanandroidx/appcompat/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    return-object v1

    .line 72
    .end local v1    # "wrapper":Lccsanandroidx/appcompat/widget/TintContextWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_7
    return-object p0
.end method


# virtual methods
.method public getAssets()Lccsanandroid/content/res/AssetManager;
    .locals 1

    .line 128
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    .line 122
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mResources:Lccsanandroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Lccsanandroid/content/res/Resources$Theme;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    invoke-super {p0}, Lccsanandroid/content/ContextWrapper;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/TintContextWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Lccsanandroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_0

    .line 116
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 118
    :goto_0
    return-void
.end method
