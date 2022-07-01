.class public Lccsanandroidx/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;
    }
.end annotation


# static fields
.field private static final sTypefaceCache:Lccsanandroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lccsanandroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v0, Lccsanandroidx/core/graphics/TypefaceCompatApi29Impl;

    invoke-direct {v0}, Lccsanandroidx/core/graphics/TypefaceCompatApi29Impl;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 52
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 53
    new-instance v0, Lccsanandroidx/core/graphics/TypefaceCompatApi28Impl;

    invoke-direct {v0}, Lccsanandroidx/core/graphics/TypefaceCompatApi28Impl;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 54
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 55
    new-instance v0, Lccsanandroidx/core/graphics/TypefaceCompatApi26Impl;

    invoke-direct {v0}, Lccsanandroidx/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 56
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 57
    invoke-static {}, Lccsanandroidx/core/graphics/TypefaceCompatApi24Impl;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Lccsanandroidx/core/graphics/TypefaceCompatApi24Impl;

    invoke-direct {v0}, Lccsanandroidx/core/graphics/TypefaceCompatApi24Impl;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 59
    :cond_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 60
    new-instance v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;

    invoke-direct {v0}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 62
    :cond_4
    new-instance v0, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v0}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 69
    :goto_0
    new-instance v0, Lccsanandroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lccsanandroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Lccsanandroidx/collection/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 244
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Lccsanandroidx/collection/LruCache;

    invoke-virtual {v0}, Lccsanandroidx/collection/LruCache;->evictAll()V

    .line 245
    return-void
.end method

.method public static create(Lccsanandroid/content/Context;Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "family"    # Lccsanandroid/graphics/Typeface;
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "family",
            "style"
        }
    .end annotation

    .line 223
    if-eqz p0, :cond_1

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "typefaceFromFamily":Lccsanandroid/graphics/Typeface;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 229
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/graphics/TypefaceCompat;->getBestFontFromFamily(Lccsanandroid/content/Context;Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    return-object v0

    .line 235
    :cond_0
    invoke-static {p1, p2}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 224
    .end local v0    # "typefaceFromFamily":Lccsanandroid/graphics/Typeface;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromFontInfo(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p2, "fonts"    # [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .param p3, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancellationSignal",
            "fonts",
            "style"
        }
    .end annotation

    .line 193
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontInfo(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourcesFamilyXml(Lccsanandroid/content/Context;Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Lccsanandroid/content/res/Resources;IILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;Z)Lccsanandroid/graphics/Typeface;
    .locals 15
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "entry"    # Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .param p2, "resources"    # Lccsanandroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p6, "handler"    # Lccsanandroid/os/Handler;
    .param p7, "isRequestFromLayoutInflator"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "entry",
            "resources",
            "id",
            "style",
            "fontCallback",
            "handler",
            "isRequestFromLayoutInflator"
        }
    .end annotation

    .line 125
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    instance-of v3, v0, Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v3, :cond_6

    .line 126
    move-object v3, v0

    check-cast v3, Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 128
    .local v3, "providerEntry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    nop

    .line 129
    invoke-virtual {v3}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v4}, Lccsanandroidx/core/graphics/TypefaceCompat;->getSystemFontFamily(Ljava/lang/String;)Lccsanandroid/graphics/Typeface;

    move-result-object v4

    .line 130
    .local v4, "fontFamilyTypeface":Lccsanandroid/graphics/Typeface;
    if-eqz v4, :cond_1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1, v4, v2}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Lccsanandroid/graphics/Typeface;Lccsanandroid/os/Handler;)V

    .line 134
    :cond_0
    return-object v4

    .line 137
    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p7, :cond_3

    .line 139
    nop

    .line 138
    invoke-virtual {v3}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 140
    :cond_3
    if-nez v1, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    :goto_0
    nop

    .line 141
    .local v11, "isBlocking":Z
    if-eqz p7, :cond_5

    invoke-virtual {v3}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result v5

    move v12, v5

    goto :goto_1

    .line 142
    :cond_5
    const/4 v5, -0x1

    const/4 v12, -0x1

    :goto_1
    nop

    .line 144
    .local v12, "timeout":I
    invoke-static/range {p6 .. p6}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Lccsanandroid/os/Handler;)Lccsanandroid/os/Handler;

    move-result-object v5

    .line 145
    .local v5, "newHandler":Lccsanandroid/os/Handler;
    new-instance v14, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    invoke-direct {v14, v1}, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;-><init>(Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 146
    .local v14, "newCallback":Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;
    invoke-virtual {v3}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Lccsanandroidx/core/provider/FontRequest;

    move-result-object v9

    move-object v8, p0

    move/from16 v10, p4

    move-object v13, v5

    invoke-static/range {v8 .. v14}, Lccsanandroidx/core/provider/FontsContractCompat;->requestFont(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;IZILccsanandroid/os/Handler;Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;)Lccsanandroid/graphics/Typeface;

    move-result-object v3

    .line 148
    .end local v4    # "fontFamilyTypeface":Lccsanandroid/graphics/Typeface;
    .end local v5    # "newHandler":Lccsanandroid/os/Handler;
    .end local v11    # "isBlocking":Z
    .end local v12    # "timeout":I
    .end local v14    # "newCallback":Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;
    .local v3, "typeface":Lccsanandroid/graphics/Typeface;
    move-object v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p4

    goto :goto_2

    .line 149
    .end local v3    # "typeface":Lccsanandroid/graphics/Typeface;
    :cond_6
    sget-object v3, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v4, v0

    check-cast v4, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p4

    invoke-virtual {v3, p0, v4, v6, v7}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Lccsanandroid/content/Context;Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Lccsanandroid/content/res/Resources;I)Lccsanandroid/graphics/Typeface;

    move-result-object v3

    .line 151
    .restart local v3    # "typeface":Lccsanandroid/graphics/Typeface;
    if-eqz v1, :cond_8

    .line 152
    if-eqz v3, :cond_7

    .line 153
    invoke-virtual {v1, v3, v2}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Lccsanandroid/graphics/Typeface;Lccsanandroid/os/Handler;)V

    goto :goto_2

    .line 155
    :cond_7
    const/4 v4, -0x3

    invoke-virtual {v1, v4, v2}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILccsanandroid/os/Handler;)V

    .line 161
    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 162
    sget-object v4, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Lccsanandroidx/collection/LruCache;

    invoke-static/range {p2 .. p4}, Lccsanandroidx/core/graphics/TypefaceCompat;->createResourceUid(Lccsanandroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Lccsanandroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_9
    return-object v3
.end method

.method public static createFromResourcesFontFile(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;ILjava/lang/String;I)Lccsanandroid/graphics/Typeface;
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resources",
            "id",
            "path",
            "style"
        }
    .end annotation

    .line 176
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->createFromResourcesFontFile(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;ILjava/lang/String;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    .line 178
    .local v0, "typeface":Lccsanandroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 179
    invoke-static {p1, p2, p4}, Lccsanandroidx/core/graphics/TypefaceCompat;->createResourceUid(Lccsanandroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "resourceUid":Ljava/lang/String;
    sget-object v2, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Lccsanandroidx/collection/LruCache;

    invoke-virtual {v2, v1, v0}, Lccsanandroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v1    # "resourceUid":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static createResourceUid(Lccsanandroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "resources",
            "id",
            "style"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFromCache(Lccsanandroid/content/res/Resources;II)Lccsanandroid/graphics/Typeface;
    .locals 2
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resources",
            "id",
            "style"
        }
    .end annotation

    .line 82
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Lccsanandroidx/collection/LruCache;

    invoke-static {p0, p1, p2}, Lccsanandroidx/core/graphics/TypefaceCompat;->createResourceUid(Lccsanandroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Typeface;

    return-object v0
.end method

.method private static getBestFontFromFamily(Lccsanandroid/content/Context;Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "typeface",
            "style"
        }
    .end annotation

    .line 202
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->getFontFamily(Lccsanandroid/graphics/Typeface;)Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-result-object v1

    .line 203
    .local v1, "families":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    if-nez v1, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    nop

    .line 208
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 207
    invoke-virtual {v0, p0, v1, v2, p2}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Lccsanandroid/content/Context;Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Lccsanandroid/content/res/Resources;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemFontFamily(Ljava/lang/String;)Lccsanandroid/graphics/Typeface;
    .locals 4
    .param p0, "familyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "familyName"
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lccsanandroid/graphics/Typeface;->create(Ljava/lang/String;I)Lccsanandroid/graphics/Typeface;

    move-result-object v2

    .line 107
    .local v2, "typeface":Lccsanandroid/graphics/Typeface;
    sget-object v3, Lccsanandroid/graphics/Typeface;->DEFAULT:Lccsanandroid/graphics/Typeface;

    invoke-static {v3, v1}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    .line 108
    .local v1, "defaultTypeface":Lccsanandroid/graphics/Typeface;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lccsanandroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    :cond_1
    return-object v0

    .line 105
    .end local v1    # "defaultTypeface":Lccsanandroid/graphics/Typeface;
    .end local v2    # "typeface":Lccsanandroid/graphics/Typeface;
    :cond_2
    :goto_0
    return-object v0
.end method
