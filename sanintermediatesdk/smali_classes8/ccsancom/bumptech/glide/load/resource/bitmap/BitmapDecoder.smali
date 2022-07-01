.class public interface abstract Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract decode(Ljava/lang/Object;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "II",
            "Lccsancom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lccsanandroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method
