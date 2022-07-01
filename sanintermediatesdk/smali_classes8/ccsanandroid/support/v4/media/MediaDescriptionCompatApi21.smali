.class Lccsanandroid/support/v4/media/MediaDescriptionCompatApi21;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static fromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p0, "in"    # Lccsanandroid/os/Parcel;

    .line 62
    sget-object v0, Lccsanandroid/media/MediaDescription;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 42
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Lccsanandroid/os/Bundle;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 54
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getIconBitmap(Ljava/lang/Object;)Lccsanandroid/graphics/Bitmap;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 46
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getIconBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getIconUri(Ljava/lang/Object;)Lccsanandroid/net/Uri;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 50
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getIconUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 30
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubtitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 38
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 34
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static writeToParcel(Ljava/lang/Object;Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaDescription;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 59
    return-void
.end method
