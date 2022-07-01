.class Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;
.super Lccsancom/bumptech/glide/request/target/BaseTarget;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/BaseTarget<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private photoHeight:I

.field private photoWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/BaseTarget;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/ListPreloader$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/ListPreloader$1;

    .line 301
    invoke-direct {p0}, Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;
    .param p1, "x1"    # I

    .line 301
    iput p1, p0, Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    return p1
.end method

.method static synthetic access$202(Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;
    .param p1, "x1"    # I

    .line 301
    iput p1, p0, Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    return p1
.end method


# virtual methods
.method public getSize(Lccsancom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/target/SizeReadyCallback;

    .line 313
    iget v0, p0, Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    iget v1, p0, Lccsancom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    invoke-interface {p1, v0, v1}, Lccsancom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 314
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-Ljava/lang/Object;>;"
    return-void
.end method
