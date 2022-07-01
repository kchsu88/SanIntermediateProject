.class final Lccsancom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
.super Lccsancom/bumptech/glide/request/target/ViewTarget;
.source "ViewPreloadSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/util/ViewPreloadSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizeViewTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/ViewTarget<",
        "Lccsanandroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;Lccsancom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "callback"    # Lccsancom/bumptech/glide/request/target/SizeReadyCallback;

    .line 78
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/request/target/ViewTarget;-><init>(Lccsanandroid/view/View;)V

    .line 79
    invoke-virtual {p0, p2}, Lccsancom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;->getSize(Lccsancom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .param p2, "glideAnimation"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 85
    return-void
.end method
