.class public Lccsancom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/request/animation/NoAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAnimationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ZZ)Lccsancom/bumptech/glide/request/animation/GlideAnimation;
    .locals 1
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "TR;>;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lccsancom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;, "Lccsancom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory<TR;>;"
    invoke-static {}, Lccsancom/bumptech/glide/request/animation/NoAnimation;->access$000()Lccsancom/bumptech/glide/request/animation/NoAnimation;

    move-result-object v0

    return-object v0
.end method
