.class public interface abstract Lccsancom/bumptech/glide/request/target/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lccsancom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/manager/LifecycleListener;"
    }
.end annotation


# static fields
.field public static final SIZE_ORIGINAL:I = -0x80000000


# virtual methods
.method public abstract getRequest()Lccsancom/bumptech/glide/request/Request;
.end method

.method public abstract getSize(Lccsancom/bumptech/glide/request/target/SizeReadyCallback;)V
.end method

.method public abstract onLoadCleared(Lccsanandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;Lccsanandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Lccsanandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract setRequest(Lccsancom/bumptech/glide/request/Request;)V
.end method
