.class Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapGlideAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;

.field private final transition:Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>.BitmapGlideAnimation;"
    .local p2, "transition":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<Lccsanandroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->this$0:Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->transition:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 63
    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 3
    .param p2, "adapter"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .line 67
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;, "Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory<TT;>.BitmapGlideAnimation;"
    .local p1, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "resources":Lccsanandroid/content/res/Resources;
    new-instance v1, Lccsanandroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->this$0:Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;

    invoke-virtual {v2, p1}, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;->getBitmap(Ljava/lang/Object;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsanandroid/graphics/drawable/BitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V

    .line 69
    .local v1, "currentBitmap":Lccsanandroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lccsancom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;->transition:Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    invoke-interface {v2, v1, p2}, Lccsancom/bumptech/glide/request/animation/GlideAnimation;->animate(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z

    move-result v2

    return v2
.end method
