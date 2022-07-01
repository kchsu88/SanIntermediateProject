.class public final Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager; = null

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManag"


# instance fields
.field private mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    sput-object v0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 46
    sget-object v0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized get()Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .locals 2

    const-class v0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 397
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_0

    .line 398
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->preload()V

    .line 400
    :cond_0
    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    const-class v0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 438
    :try_start_0
    invoke-static {p0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 438
    .end local p0    # "color":I
    .end local p1    # "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized preload()V
    .locals 3

    const-class v0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-direct {v1}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;-><init>()V

    sput-object v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    .line 56
    invoke-static {}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->get()Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v2

    iput-object v2, v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    .line 57
    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    new-instance v2, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;

    invoke-direct {v2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;-><init>()V

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->setHooks(Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_0
    monitor-exit v0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V
    .locals 0
    .param p0, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Lccsanandroidx/appcompat/widget/TintInfo;
    .param p2, "state"    # [I

    .line 433
    invoke-static {p0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/appcompat/widget/TintInfo;[I)V

    .line 434
    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 406
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDrawable(Lccsanandroid/content/Context;IZ)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;IZ)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 411
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    .end local p3    # "failIfNotKnown":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 429
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConfigurationChanged(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->onConfigurationChanged(Lccsanandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 414
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .end local p1    # "context":Lccsanandroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resources"    # Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->onDrawableLoadedFromResources(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 420
    .end local p0    # "this":Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "resources":Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;
    .end local p3    # "resId":I
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

    .line 425
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
