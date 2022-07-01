.class Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;
.super Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"

.field private static sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static sFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sHasInitBeenCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "style"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "family",
            "name",
            "weight",
            "style"
        }
    .end annotation

    .line 136
    invoke-static {}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 138
    :try_start_0
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 140
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 141
    .end local v0    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Lccsanandroid/graphics/Typeface;
    .locals 5
    .param p0, "family"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "family"
        }
    .end annotation

    .line 123
    invoke-static {}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 125
    :try_start_0
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "familyArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 127
    sget-object v3, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 129
    .end local v0    # "familyArray":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFile(Lccsanandroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 3
    .param p1, "fd"    # Lccsanandroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroid/system/Os;->stat(Ljava/lang/String;)Lccsanandroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Lccsanandroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Lccsanandroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 106
    :cond_0
    return-object v0

    .line 108
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lccsanandroid/system/ErrnoException;
    return-object v0
.end method

.method private static init()V
    .locals 9

    .line 68
    sget-boolean v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    .line 78
    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 80
    .local v3, "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v4, "addFontWeightStyle"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 82
    .local v4, "addFontMethod":Ljava/lang/reflect/Method;
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, "familyArray":Ljava/lang/Object;
    const-class v6, Lccsanandroid/graphics/Typeface;

    const-string v7, "createFromFamiliesWithDefault"

    new-array v0, v0, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v0, v2

    .line 84
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v5    # "familyArray":Ljava/lang/Object;
    .local v0, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 86
    .end local v0    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v1    # "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "addFontMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceCompatApi21Impl"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v1, 0x0

    .line 89
    .restart local v1    # "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 90
    .restart local v3    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 91
    .restart local v4    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    move-object v0, v2

    .line 93
    .local v0, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :goto_1
    sput-object v3, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 94
    sput-object v1, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    .line 95
    sput-object v4, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 96
    sput-object v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 97
    return-void
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    .line 114
    invoke-static {}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 116
    :try_start_0
    sget-object v0, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Lccsanandroid/content/Context;Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Lccsanandroid/content/res/Resources;I)Lccsanandroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "entry"    # Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
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
            "entry",
            "resources",
            "style"
        }
    .end annotation

    .line 176
    invoke-static {}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->newFamily()Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "family":Ljava/lang/Object;
    invoke-virtual {p2}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 178
    .local v4, "e":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    invoke-static {p1}, Lccsanandroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Lccsanandroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 179
    .local v5, "tmpFile":Ljava/io/File;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 180
    return-object v6

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v7

    invoke-static {v5, p3, v7}, Lccsanandroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Lccsanandroid/content/res/Resources;I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 184
    nop

    .line 196
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 184
    return-object v6

    .line 187
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v4}, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    invoke-static {v0, v7, v8, v9}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_2

    .line 188
    nop

    .line 196
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 188
    return-object v6

    .line 196
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 197
    nop

    .line 177
    .end local v4    # "e":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "tmpFile":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .restart local v4    # "e":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .restart local v5    # "tmpFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 197
    throw v1

    .line 190
    :catch_0
    move-exception v1

    .line 194
    .local v1, "exception":Ljava/lang/RuntimeException;
    nop

    .line 196
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 194
    return-object v6

    .line 199
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .end local v4    # "e":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "tmpFile":Ljava/io/File;
    :cond_3
    invoke-static {v0}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public createFromFontInfo(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroid/graphics/Typeface;
    .locals 8
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

    .line 149
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 150
    return-object v1

    .line 152
    :cond_0
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 153
    .local v0, "bestFont":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v2

    .line 154
    .local v2, "resolver":Lccsanandroid/content/ContentResolver;
    nop

    .line 155
    :try_start_0
    invoke-virtual {v0}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Lccsanandroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4, p2}, Lccsanandroid/content/ContentResolver;->openFileDescriptor(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 156
    .local v3, "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_2

    .line 157
    nop

    .line 168
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_1
    return-object v1

    .line 159
    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Lccsanandroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Lccsanandroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v4

    .line 160
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    invoke-static {v4}, Lccsanandroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Lccsanandroid/graphics/Typeface;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 168
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    :cond_4
    return-object v5

    .line 163
    :cond_5
    :goto_0
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-super {p0, p1, v5}, Lccsanandroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Lccsanandroid/content/Context;Ljava/io/InputStream;)Lccsanandroid/graphics/Typeface;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 168
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 164
    :cond_6
    return-object v6

    .line 163
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    .end local v0    # "bestFont":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Lccsanandroid/content/ContentResolver;
    .end local v3    # "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :goto_1
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 154
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bestFont":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Lccsanandroid/content/ContentResolver;
    .restart local v3    # "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    .restart local p1    # "context":Lccsanandroid/content/Context;
    .restart local p2    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    .end local v0    # "bestFont":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Lccsanandroid/content/ContentResolver;
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_7
    :goto_2
    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 168
    .end local v3    # "pfd":Lccsanandroid/os/ParcelFileDescriptor;
    .restart local v0    # "bestFont":Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Lccsanandroid/content/ContentResolver;
    .restart local p1    # "context":Lccsanandroid/content/Context;
    .restart local p2    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/IOException;
    return-object v1
.end method
