.class final Lccsancom/bumptech/glide/load/model/AssetUriParser;
.super Ljava/lang/Object;
.source "AssetUriParser.java"


# static fields
.field private static final ASSET_PATH_SEGMENT:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final ASSET_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lccsancom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static isAssetUri(Lccsanandroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Lccsanandroid/net/Uri;

    .line 22
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android_asset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static toAssetPath(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Lccsanandroid/net/Uri;

    .line 34
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
