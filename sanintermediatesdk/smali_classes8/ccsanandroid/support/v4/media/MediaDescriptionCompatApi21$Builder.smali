.class Lccsanandroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaDescriptionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;

    .line 100
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription$Builder;->build()Lccsanandroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    .line 67
    new-instance v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Lccsanandroid/media/MediaDescription$Builder;-><init>()V

    return-object v0
.end method

.method public static setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 84
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Lccsanandroid/media/MediaDescription$Builder;

    .line 85
    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "extras"    # Lccsanandroid/os/Bundle;

    .line 96
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/media/MediaDescription$Builder;

    .line 97
    return-void
.end method

.method public static setIconBitmap(Ljava/lang/Object;Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconBitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 88
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setIconBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/media/MediaDescription$Builder;

    .line 89
    return-void
.end method

.method public static setIconUri(Ljava/lang/Object;Lccsanandroid/net/Uri;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconUri"    # Lccsanandroid/net/Uri;

    .line 92
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setIconUri(Lccsanandroid/net/Uri;)Lccsanandroid/media/MediaDescription$Builder;

    .line 93
    return-void
.end method

.method public static setMediaId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 72
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Lccsanandroid/media/MediaDescription$Builder;

    .line 73
    return-void
.end method

.method public static setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 80
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lccsanandroid/media/MediaDescription$Builder;

    .line 81
    return-void
.end method

.method public static setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 76
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/media/MediaDescription$Builder;

    .line 77
    return-void
.end method
