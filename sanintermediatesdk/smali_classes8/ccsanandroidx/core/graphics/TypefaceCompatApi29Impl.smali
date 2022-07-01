.class public Lccsanandroidx/core/graphics/TypefaceCompatApi29Impl;
.super Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Lccsanandroid/content/Context;Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Lccsanandroid/content/res/Resources;I)Lccsanandroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "familyEntry"    # Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Lccsanandroid/content/res/Resources;
    .param p4, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "familyEntry",
            "resources",
            "style"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "familyBuilder":Lccsanandroid/graphics/fonts/FontFamily$Builder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-object v7, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .local v7, "entry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :try_start_1
    new-instance v8, Lccsanandroid/graphics/fonts/Font$Builder;

    invoke-virtual {v7}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v9

    invoke-direct {v8, p3, v9}, Lccsanandroid/graphics/fonts/Font$Builder;-><init>(Lccsanandroid/content/res/Resources;I)V

    .line 113
    invoke-virtual {v7}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Lccsanandroid/graphics/fonts/Font$Builder;->setWeight(I)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 114
    invoke-virtual {v7}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    const/4 v6, 0x0

    .line 114
    :goto_1
    invoke-virtual {v8, v6}, Lccsanandroid/graphics/fonts/Font$Builder;->setSlant(I)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 116
    invoke-virtual {v7}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v8

    invoke-virtual {v6, v8}, Lccsanandroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 117
    invoke-virtual {v7}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lccsanandroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Lccsanandroid/graphics/fonts/Font$Builder;->build()Lccsanandroid/graphics/fonts/Font;

    move-result-object v6

    .line 119
    .local v6, "platformFont":Lccsanandroid/graphics/fonts/Font;
    if-nez v0, :cond_1

    .line 120
    new-instance v8, Lccsanandroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v8, v6}, Lccsanandroid/graphics/fonts/FontFamily$Builder;-><init>(Lccsanandroid/graphics/fonts/Font;)V

    move-object v0, v8

    goto :goto_2

    .line 122
    :cond_1
    invoke-virtual {v0, v6}, Lccsanandroid/graphics/fonts/FontFamily$Builder;->addFont(Lccsanandroid/graphics/fonts/Font;)Lccsanandroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v6    # "platformFont":Lccsanandroid/graphics/fonts/Font;
    :goto_2
    goto :goto_3

    .line 124
    :catch_0
    move-exception v6

    .line 110
    .end local v7    # "entry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    :cond_2
    if-nez v0, :cond_3

    .line 129
    return-object v1

    .line 131
    :cond_3
    :try_start_2
    new-instance v2, Lccsanandroid/graphics/fonts/FontStyle;

    .line 132
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    const/16 v3, 0x2bc

    goto :goto_4

    .line 133
    :cond_4
    const/16 v3, 0x190

    .line 134
    :goto_4
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    .line 135
    :cond_5
    nop

    :goto_5
    invoke-direct {v2, v3, v4}, Lccsanandroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 137
    .local v2, "defaultStyle":Lccsanandroid/graphics/fonts/FontStyle;
    new-instance v3, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Lccsanandroid/graphics/fonts/FontFamily$Builder;->build()Lccsanandroid/graphics/fonts/FontFamily;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Lccsanandroid/graphics/fonts/FontFamily;)V

    .line 138
    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Lccsanandroid/graphics/fonts/FontStyle;)Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;->build()Lccsanandroid/graphics/Typeface;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    return-object v1

    .line 140
    .end local v0    # "familyBuilder":Lccsanandroid/graphics/fonts/FontFamily$Builder;
    .end local v2    # "defaultStyle":Lccsanandroid/graphics/fonts/FontStyle;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public createFromFontInfo(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroid/graphics/Typeface;
    .locals 11
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p3, "fonts"    # [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .param p4, "style"    # I
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

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "familyBuilder":Lccsanandroid/graphics/fonts/FontFamily$Builder;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v1

    .line 65
    .local v1, "resolver":Lccsanandroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_6

    aget-object v7, p3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .local v7, "font":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    :try_start_1
    invoke-virtual {v7}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Lccsanandroid/net/Uri;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v1, v8, v9, p2}, Lccsanandroid/content/ContentResolver;->openFileDescriptor(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 68
    .local v8, "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    if-nez v8, :cond_1

    .line 82
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_0
    goto :goto_4

    .line 71
    :cond_1
    :try_start_2
    new-instance v9, Lccsanandroid/graphics/fonts/Font$Builder;

    invoke-direct {v9, v8}, Lccsanandroid/graphics/fonts/Font$Builder;-><init>(Lccsanandroid/os/ParcelFileDescriptor;)V

    .line 72
    invoke-virtual {v7}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lccsanandroid/graphics/fonts/Font$Builder;->setWeight(I)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v9

    .line 73
    invoke-virtual {v7}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    const/4 v6, 0x0

    .line 73
    :goto_1
    invoke-virtual {v9, v6}, Lccsanandroid/graphics/fonts/Font$Builder;->setSlant(I)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 75
    invoke-virtual {v7}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v9

    invoke-virtual {v6, v9}, Lccsanandroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Lccsanandroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Lccsanandroid/graphics/fonts/Font$Builder;->build()Lccsanandroid/graphics/fonts/Font;

    move-result-object v6

    .line 77
    .local v6, "platformFont":Lccsanandroid/graphics/fonts/Font;
    if-nez v0, :cond_3

    .line 78
    new-instance v9, Lccsanandroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v9, v6}, Lccsanandroid/graphics/fonts/FontFamily$Builder;-><init>(Lccsanandroid/graphics/fonts/Font;)V

    move-object v0, v9

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v0, v6}, Lccsanandroid/graphics/fonts/FontFamily$Builder;->addFont(Lccsanandroid/graphics/fonts/Font;)Lccsanandroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .end local v6    # "platformFont":Lccsanandroid/graphics/fonts/Font;
    :goto_2
    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v8}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    .end local v8    # "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    :cond_4
    goto :goto_4

    .line 66
    .restart local v8    # "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v6

    if-eqz v8, :cond_5

    :try_start_4
    invoke-virtual {v8}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v9

    .end local v0    # "familyBuilder":Lccsanandroid/graphics/fonts/FontFamily$Builder;
    .end local v1    # "resolver":Lccsanandroid/content/ContentResolver;
    .end local v7    # "font":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_5
    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 82
    .end local v8    # "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    .restart local v0    # "familyBuilder":Lccsanandroid/graphics/fonts/FontFamily$Builder;
    .restart local v1    # "resolver":Lccsanandroid/content/ContentResolver;
    .restart local v7    # "font":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p1    # "context":Lccsanandroid/content/Context;
    .restart local p2    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_0
    move-exception v6

    .line 65
    .end local v7    # "font":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    :cond_6
    if-nez v0, :cond_7

    .line 87
    return-object v2

    .line 89
    :cond_7
    :try_start_6
    new-instance v3, Lccsanandroid/graphics/fonts/FontStyle;

    .line 90
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_8

    const/16 v5, 0x2bc

    goto :goto_5

    .line 91
    :cond_8
    const/16 v5, 0x190

    .line 92
    :goto_5
    and-int/lit8 v7, p4, 0x2

    if-eqz v7, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    .line 93
    :cond_9
    nop

    :goto_6
    invoke-direct {v3, v5, v4}, Lccsanandroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 95
    .local v3, "defaultStyle":Lccsanandroid/graphics/fonts/FontStyle;
    new-instance v4, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Lccsanandroid/graphics/fonts/FontFamily$Builder;->build()Lccsanandroid/graphics/fonts/FontFamily;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Lccsanandroid/graphics/fonts/FontFamily;)V

    .line 96
    invoke-virtual {v4, v3}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Lccsanandroid/graphics/fonts/FontStyle;)Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;->build()Lccsanandroid/graphics/Typeface;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 95
    return-object v2

    .line 98
    .end local v3    # "defaultStyle":Lccsanandroid/graphics/fonts/FontStyle;
    :catch_1
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected createFromInputStream(Lccsanandroid/content/Context;Ljava/io/InputStream;)Lccsanandroid/graphics/Typeface;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "is"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromResourcesFontFile(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;ILjava/lang/String;I)Lccsanandroid/graphics/Typeface;
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resources"    # Lccsanandroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I
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

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "family":Lccsanandroid/graphics/fonts/FontFamily;
    const/4 v1, 0x0

    .line 155
    .local v1, "font":Lccsanandroid/graphics/fonts/Font;
    :try_start_0
    new-instance v2, Lccsanandroid/graphics/fonts/Font$Builder;

    invoke-direct {v2, p2, p3}, Lccsanandroid/graphics/fonts/Font$Builder;-><init>(Lccsanandroid/content/res/Resources;I)V

    invoke-virtual {v2}, Lccsanandroid/graphics/fonts/Font$Builder;->build()Lccsanandroid/graphics/fonts/Font;

    move-result-object v2

    move-object v1, v2

    .line 156
    new-instance v2, Lccsanandroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/fonts/FontFamily$Builder;-><init>(Lccsanandroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Lccsanandroid/graphics/fonts/FontFamily$Builder;->build()Lccsanandroid/graphics/fonts/FontFamily;

    move-result-object v2

    move-object v0, v2

    .line 157
    new-instance v2, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v0}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Lccsanandroid/graphics/fonts/FontFamily;)V

    .line 159
    invoke-virtual {v1}, Lccsanandroid/graphics/fonts/Font;->getStyle()Lccsanandroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Lccsanandroid/graphics/fonts/FontStyle;)Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lccsanandroid/graphics/Typeface$CustomFallbackBuilder;->build()Lccsanandroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object v2

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3
.end method

.method protected findBestInfo([Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 2
    .param p1, "fonts"    # [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fonts",
            "style"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
