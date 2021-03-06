.class public final Lccsanandroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;,
        Lccsanandroid/support/v4/media/MediaMetadataCompat$RatingKey;,
        Lccsanandroid/support/v4/media/MediaMetadataCompat$BitmapKey;,
        Lccsanandroid/support/v4/media/MediaMetadataCompat$LongKey;,
        Lccsanandroid/support/v4/media/MediaMetadataCompat$TextKey;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field static final METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ADVERTISEMENT:Ljava/lang/String; = "android.media.metadata.ADVERTISEMENT"

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DOWNLOAD_STATUS:Ljava/lang/String; = "android.media.metadata.DOWNLOAD_STATUS"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_MEDIA_URI:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field static final METADATA_TYPE_BITMAP:I = 0x2

.field static final METADATA_TYPE_LONG:I = 0x0

.field static final METADATA_TYPE_RATING:I = 0x3

.field static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field final mBundle:Lccsanandroid/os/Bundle;

.field private mDescription:Lccsanandroid/support/v4/media/MediaDescriptionCompat;

.field private mMetadataObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 308
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    .line 309
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v4, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "android.media.metadata.DURATION"

    invoke-virtual {v0, v7, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v7, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v7, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v8, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v8, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v9, "android.media.metadata.WRITER"

    invoke-virtual {v0, v9, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v10, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v10, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v11, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v11, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v11, "android.media.metadata.DATE"

    invoke-virtual {v0, v11, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v11, "android.media.metadata.YEAR"

    invoke-virtual {v0, v11, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v11, "android.media.metadata.GENRE"

    invoke-virtual {v0, v11, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v11, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v11, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v11, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v11, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v11, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v11, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v11, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v11, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "android.media.metadata.ART"

    invoke-virtual {v0, v14, v13}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v15, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v15, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v12, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v12, v13}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const/4 v5, 0x3

    move-object/from16 v16, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v5, v1}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v5, "android.media.metadata.RATING"

    invoke-virtual {v0, v5, v1}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v1, v13}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v5, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v5, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v13, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v13, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v13, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v13, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v13, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v0, v13, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v2, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {v0, v2, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v2, "android.media.metadata.DOWNLOAD_STATUS"

    invoke-virtual {v0, v2, v6}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    const/4 v2, 0x2

    aput-object v7, v0, v2

    const/4 v2, 0x3

    aput-object v11, v0, v2

    const/4 v3, 0x4

    aput-object v9, v0, v3

    const/4 v3, 0x5

    aput-object v8, v0, v3

    const/4 v3, 0x6

    aput-object v10, v0, v3

    sput-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    .line 352
    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v14, v0, v1

    const/4 v4, 0x2

    aput-object v12, v0, v4

    sput-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 358
    new-array v0, v2, [Ljava/lang/String;

    aput-object v5, v0, v3

    aput-object v15, v0, v1

    aput-object v16, v0, v4

    sput-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    .line 641
    new-instance v0, Lccsanandroid/support/v4/media/MediaMetadataCompat$1;

    invoke-direct {v0}, Lccsanandroid/support/v4/media/MediaMetadataCompat$1;-><init>()V

    sput-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0, p1}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    iput-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    .line 370
    invoke-static {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 371
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const-class v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Lccsanandroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    .line 375
    return-void
.end method

.method public static fromMediaMetadata(Ljava/lang/Object;)Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .locals 2
    .param p0, "metadataObj"    # Ljava/lang/Object;

    .line 607
    if-eqz p0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 608
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 609
    .local v0, "p":Lccsanandroid/os/Parcel;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccsanandroid/support/v4/media/MediaMetadataCompatApi21;->writeToParcel(Ljava/lang/Object;Lccsanandroid/os/Parcel;I)V

    .line 610
    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 611
    sget-object v1, Lccsanandroid/support/v4/media/MediaMetadataCompat;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/support/v4/media/MediaMetadataCompat;

    .line 612
    .local v1, "metadata":Lccsanandroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 613
    iput-object p0, v1, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    .line 614
    return-object v1

    .line 616
    .end local v0    # "p":Lccsanandroid/os/Parcel;
    .end local v1    # "metadata":Lccsanandroid/support/v4/media/MediaMetadataCompat;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "bmp":Lccsanandroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, p1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 464
    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaMetadata"

    const-string v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getBundle()Lccsanandroid/os/Bundle;
    .locals 2

    .line 590
    new-instance v0, Lccsanandroid/os/Bundle;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-direct {v0, v1}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    return-object v0
.end method

.method public getDescription()Lccsanandroid/support/v4/media/MediaDescriptionCompat;
    .locals 12

    .line 474
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mDescription:Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    if-eqz v0, :cond_0

    .line 475
    return-object v0

    .line 478
    :cond_0
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "mediaId":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 481
    .local v1, "text":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 482
    .local v2, "icon":Lccsanandroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 485
    .local v3, "iconUri":Lccsanandroid/net/Uri;
    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p0, v4}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 486
    .local v4, "displayText":Ljava/lang/CharSequence;
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_1

    .line 489
    aput-object v4, v1, v7

    .line 490
    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v5}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v8

    .line 491
    const-string v5, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v5}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v6

    goto :goto_1

    .line 494
    :cond_1
    const/4 v5, 0x0

    .line 495
    .local v5, "textIndex":I
    const/4 v9, 0x0

    .line 496
    .local v9, "keyIndex":I
    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_3

    sget-object v10, Lccsanandroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_3

    .line 497
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "keyIndex":I
    .local v11, "keyIndex":I
    aget-object v9, v10, v9

    invoke-virtual {p0, v9}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 498
    .local v9, "next":Ljava/lang/CharSequence;
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 500
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "textIndex":I
    .local v10, "textIndex":I
    aput-object v9, v1, v5

    move v5, v10

    .line 502
    .end local v9    # "next":Ljava/lang/CharSequence;
    .end local v10    # "textIndex":I
    .restart local v5    # "textIndex":I
    :cond_2
    move v9, v11

    goto :goto_0

    .line 506
    .end local v5    # "textIndex":I
    .end local v11    # "keyIndex":I
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    sget-object v9, Lccsanandroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v10, v9

    if-ge v5, v10, :cond_5

    .line 507
    aget-object v9, v9, v5

    invoke-virtual {p0, v9}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object v9

    .line 508
    .local v9, "next":Lccsanandroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 509
    move-object v2, v9

    .line 510
    goto :goto_3

    .line 506
    .end local v9    # "next":Lccsanandroid/graphics/Bitmap;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 515
    .end local v5    # "i":I
    :cond_5
    :goto_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    sget-object v9, Lccsanandroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    array-length v10, v9

    if-ge v5, v10, :cond_7

    .line 516
    aget-object v9, v9, v5

    invoke-virtual {p0, v9}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "next":Ljava/lang/String;
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 518
    invoke-static {v9}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    .line 519
    goto :goto_5

    .line 515
    .end local v9    # "next":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 523
    .end local v5    # "i":I
    :cond_7
    :goto_5
    const/4 v5, 0x0

    .line 524
    .local v5, "mediaUri":Lccsanandroid/net/Uri;
    const-string v9, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p0, v9}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 525
    .local v9, "mediaUriStr":Ljava/lang/String;
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 526
    invoke-static {v9}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v5

    .line 529
    :cond_8
    new-instance v10, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v10}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 530
    .local v10, "bob":Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;
    invoke-virtual {v10, v0}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 531
    aget-object v7, v1, v7

    invoke-virtual {v10, v7}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 532
    aget-object v7, v1, v8

    invoke-virtual {v10, v7}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 533
    aget-object v6, v1, v6

    invoke-virtual {v10, v6}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 534
    invoke-virtual {v10, v2}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 535
    invoke-virtual {v10, v3}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Lccsanandroid/net/Uri;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 536
    invoke-virtual {v10, v5}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Lccsanandroid/net/Uri;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 538
    new-instance v6, Lccsanandroid/os/Bundle;

    invoke-direct {v6}, Lccsanandroid/os/Bundle;-><init>()V

    .line 539
    .local v6, "bundle":Lccsanandroid/os/Bundle;
    iget-object v7, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    const-string v8, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v7, v8}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 540
    nop

    .line 541
    invoke-virtual {p0, v8}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 540
    const-string v11, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v6, v11, v7, v8}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 543
    :cond_9
    iget-object v7, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    const-string v8, "android.media.metadata.DOWNLOAD_STATUS"

    invoke-virtual {v7, v8}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 544
    nop

    .line 545
    invoke-virtual {p0, v8}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 544
    const-string v11, "android.media.extra.DOWNLOAD_STATUS"

    invoke-virtual {v6, v11, v7, v8}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 547
    :cond_a
    invoke-virtual {v6}, Lccsanandroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 548
    invoke-virtual {v10, v6}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 550
    :cond_b
    invoke-virtual {v10}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    iput-object v7, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mDescription:Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    .line 552
    return-object v7
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Ljava/lang/Object;
    .locals 2

    .line 631
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 632
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 633
    .local v0, "p":Lccsanandroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 634
    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 635
    invoke-static {v0}, Lccsanandroid/support/v4/media/MediaMetadataCompatApi21;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    .line 636
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 638
    .end local v0    # "p":Lccsanandroid/os/Parcel;
    :cond_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getRating(Ljava/lang/String;)Lccsanandroid/support/v4/media/RatingCompat;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "rating":Lccsanandroid/support/v4/media/RatingCompat;
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 439
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, p1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Lccsanandroid/support/v4/media/RatingCompat;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, p1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/support/v4/media/RatingCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 446
    :goto_0
    goto :goto_1

    .line 443
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaMetadata"

    const-string v3, "Failed to retrieve a key as Rating."

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 409
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 412
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 571
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 562
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 563
    return-void
.end method
