.class public interface abstract Lccsancom/bumptech/glide/ListPreloader$PreloadModelProvider;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreloadModelProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getPreloadItems(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract getPreloadRequestBuilder(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder;"
        }
    .end annotation
.end method
