.class public abstract Lccsancom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/request/target/Target<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lccsancom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lccsancom/bumptech/glide/request/Request;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/BaseTarget;->request:Lccsancom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 91
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadCleared(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 51
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 67
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadStarted(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 59
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 75
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 83
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public setRequest(Lccsancom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/request/target/BaseTarget;, "Lccsancom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/BaseTarget;->request:Lccsancom/bumptech/glide/request/Request;

    .line 35
    return-void
.end method
