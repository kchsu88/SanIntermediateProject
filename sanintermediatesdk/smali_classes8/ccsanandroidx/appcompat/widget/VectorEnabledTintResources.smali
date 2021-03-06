.class public Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;
.super Lccsanandroid/content/res/Resources;
.source "VectorEnabledTintResources.java"


# static fields
.field public static final MAX_SDK_WHERE_REQUIRED:I = 0x14

.field private static sCompatVectorFromResourcesEnabled:Z


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "res"    # Lccsanandroid/content/res/Resources;

    .line 56
    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lccsanandroid/content/res/Resources;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;)V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .locals 1

    .line 96
    sget-boolean v0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    return v0
.end method

.method public static setCompatVectorFromResourcesEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 86
    sput-boolean p0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    .line 87
    return-void
.end method

.method public static shouldBeUsed()Z
    .locals 2

    .line 42
    invoke-static {}, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->isCompatVectorFromResourcesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    .line 69
    .local v0, "context":Lccsanandroid/content/Context;
    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->get()Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->onDrawableLoadedFromResources(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/VectorEnabledTintResources;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method final superGetDrawable(I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .line 78
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
