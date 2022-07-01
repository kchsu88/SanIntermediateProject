.class Lccsanandroidx/appcompat/widget/TintResources;
.super Lccsanandroidx/appcompat/widget/ResourcesWrapper;
.source "TintResources.java"


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
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "res"    # Lccsanandroid/content/res/Resources;

    .line 35
    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/widget/ResourcesWrapper;-><init>(Lccsanandroid/content/res/Resources;)V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/ResourcesWrapper;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, "d":Lccsanandroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/TintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/Context;

    .line 48
    .local v1, "context":Lccsanandroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 49
    invoke-static {}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->get()Lccsanandroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z

    .line 51
    :cond_0
    return-object v0
.end method
