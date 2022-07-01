.class public abstract Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;
.super Ljava/lang/Object;
.source "DrawableResource.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lccsanandroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/engine/Resource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final drawable:Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    .local p1, "drawable":Lccsanandroid/graphics/drawable/Drawable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 24
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Drawable must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;->get()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
