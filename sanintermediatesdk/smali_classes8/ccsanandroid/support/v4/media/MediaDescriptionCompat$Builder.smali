.class public final Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaDescriptionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mExtras:Lccsanandroid/os/Bundle;

.field private mIcon:Lccsanandroid/graphics/Bitmap;

.field private mIconUri:Lccsanandroid/net/Uri;

.field private mMediaId:Ljava/lang/String;

.field private mMediaUri:Lccsanandroid/net/Uri;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    return-void
.end method


# virtual methods
.method public build()Lccsanandroid/support/v4/media/MediaDescriptionCompat;
    .locals 10

    .line 552
    new-instance v9, Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mMediaId:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mIcon:Lccsanandroid/graphics/Bitmap;

    iget-object v6, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mIconUri:Lccsanandroid/net/Uri;

    iget-object v7, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mExtras:Lccsanandroid/os/Bundle;

    iget-object v8, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mMediaUri:Lccsanandroid/net/Uri;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lccsanandroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lccsanandroid/graphics/Bitmap;Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;Lccsanandroid/net/Uri;)V

    return-object v9
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 495
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 496
    return-object p0
.end method

.method public setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "extras"    # Lccsanandroid/os/Bundle;

    .line 530
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mExtras:Lccsanandroid/os/Bundle;

    .line 531
    return-object p0
.end method

.method public setIconBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "icon"    # Lccsanandroid/graphics/Bitmap;

    .line 507
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mIcon:Lccsanandroid/graphics/Bitmap;

    .line 508
    return-object p0
.end method

.method public setIconUri(Lccsanandroid/net/Uri;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "iconUri"    # Lccsanandroid/net/Uri;

    .line 519
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mIconUri:Lccsanandroid/net/Uri;

    .line 520
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 461
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mMediaId:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public setMediaUri(Lccsanandroid/net/Uri;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "mediaUri"    # Lccsanandroid/net/Uri;

    .line 541
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mMediaUri:Lccsanandroid/net/Uri;

    .line 542
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 483
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 484
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 472
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 473
    return-object p0
.end method
