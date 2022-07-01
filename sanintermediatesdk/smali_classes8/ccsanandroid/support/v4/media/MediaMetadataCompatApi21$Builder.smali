.class public Lccsanandroid/support/v4/media/MediaMetadataCompatApi21$Builder;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaMetadataCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;

    .line 84
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaMetadata$Builder;

    invoke-virtual {v0}, Lccsanandroid/media/MediaMetadata$Builder;->build()Lccsanandroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    .line 60
    new-instance v0, Lccsanandroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Lccsanandroid/media/MediaMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static putBitmap(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lccsanandroid/graphics/Bitmap;

    .line 64
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/media/MediaMetadata$Builder;

    .line 65
    return-void
.end method

.method public static putLong(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 68
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Lccsanandroid/media/MediaMetadata$Builder;

    .line 69
    return-void
.end method

.method public static putRating(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ratingObj"    # Ljava/lang/Object;

    .line 72
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaMetadata$Builder;

    move-object v1, p2

    check-cast v1, Lccsanandroid/media/Rating;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Lccsanandroid/media/Rating;)Lccsanandroid/media/MediaMetadata$Builder;

    .line 73
    return-void
.end method

.method public static putString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 80
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/media/MediaMetadata$Builder;

    .line 81
    return-void
.end method

.method public static putText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 76
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Lccsanandroid/media/MediaMetadata$Builder;

    .line 77
    return-void
.end method
