.class public final Lccsancom/bumptech/glide/request/target/PreloadTarget;
.super Lccsancom/bumptech/glide/request/target/SimpleTarget;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/bumptech/glide/request/target/SimpleTarget<",
        "TZ;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 26
    .local p0, "this":Lccsancom/bumptech/glide/request/target/PreloadTarget;, "Lccsancom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 27
    return-void
.end method

.method public static obtain(II)Lccsancom/bumptech/glide/request/target/PreloadTarget;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lccsancom/bumptech/glide/request/target/PreloadTarget<",
            "TZ;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lccsancom/bumptech/glide/request/target/PreloadTarget;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/request/target/PreloadTarget;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lccsancom/bumptech/glide/request/target/PreloadTarget;, "Lccsancom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;"
    invoke-static {p0}, Lccsancom/bumptech/glide/Glide;->clear(Lccsancom/bumptech/glide/request/target/Target;)V

    .line 32
    return-void
.end method
