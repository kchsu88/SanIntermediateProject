.class Lccsanandroid/support/v4/media/MediaDescriptionCompatApi23;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getMediaUri(Ljava/lang/Object;)Lccsanandroid/net/Uri;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 26
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDescription;->getMediaUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
