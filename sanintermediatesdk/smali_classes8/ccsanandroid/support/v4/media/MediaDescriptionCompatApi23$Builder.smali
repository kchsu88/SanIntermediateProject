.class Lccsanandroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaDescriptionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static setMediaUri(Ljava/lang/Object;Lccsanandroid/net/Uri;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "mediaUri"    # Lccsanandroid/net/Uri;

    .line 31
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDescription$Builder;->setMediaUri(Lccsanandroid/net/Uri;)Lccsanandroid/media/MediaDescription$Builder;

    .line 32
    return-void
.end method
