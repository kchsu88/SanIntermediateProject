.class public abstract Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FontCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler(Lccsanandroid/os/Handler;)Lccsanandroid/os/Handler;
    .locals 2
    .param p0, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 464
    if-nez p0, :cond_0

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final callbackFailAsync(ILccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "reason",
            "handler"
        }
    .end annotation

    .line 452
    invoke-static {p2}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Lccsanandroid/os/Handler;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$2;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$2;-><init>(Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    return-void
.end method

.method public final callbackSuccessAsync(Lccsanandroid/graphics/Typeface;Lccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;
    .param p2, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "typeface",
            "handler"
        }
    .end annotation

    .line 436
    invoke-static {p2}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Lccsanandroid/os/Handler;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;-><init>(Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public abstract onFontRetrievalFailed(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract onFontRetrieved(Lccsanandroid/graphics/Typeface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeface"
        }
    .end annotation
.end method
