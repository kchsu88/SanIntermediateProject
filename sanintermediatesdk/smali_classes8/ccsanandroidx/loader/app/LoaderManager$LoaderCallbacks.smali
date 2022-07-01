.class public interface abstract Lccsanandroidx/loader/app/LoaderManager$LoaderCallbacks;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/loader/app/LoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCreateLoader(ILccsanandroid/os/Bundle;)Lccsanandroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Lccsanandroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract onLoadFinished(Lccsanandroidx/loader/content/Loader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/loader/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation
.end method

.method public abstract onLoaderReset(Lccsanandroidx/loader/content/Loader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/loader/content/Loader<",
            "TD;>;)V"
        }
    .end annotation
.end method
