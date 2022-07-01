.class Lccsanandroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Lccsanandroidx/core/provider/FontProvider$1;

    invoke-direct {v0}, Lccsanandroidx/core/provider/FontProvider$1;-><init>()V

    sput-object v0, Lccsanandroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToByteArrayList([Lccsanandroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .param p0, "signatures"    # [Lccsanandroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsanandroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "shaList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 228
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lccsanandroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signatures",
            "requestSignatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 214
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 215
    return v2

    .line 217
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    return v2

    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static getCertificates(Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/content/res/Resources;)Ljava/util/List;
    .locals 2
    .param p0, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/core/provider/FontRequest;",
            "Lccsanandroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lccsanandroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lccsanandroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 194
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Lccsanandroidx/core/content/res/FontResourcesParserCompat;->readCerts(Lccsanandroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFamilyResult(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/os/CancellationSignal;)Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "request",
            "cancellationSignal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 53
    invoke-static {v0, p1, v1}, Lccsanandroidx/core/provider/FontProvider;->getProvider(Lccsanandroid/content/pm/PackageManager;Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/content/res/Resources;)Lccsanandroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 55
    .local v0, "providerInfo":Lccsanandroid/content/pm/ProviderInfo;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;)Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    iget-object v1, v0, Lccsanandroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v1, p2}, Lccsanandroidx/core/provider/FontProvider;->query(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Ljava/lang/String;Lccsanandroid/os/CancellationSignal;)[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 61
    .local v1, "fonts":[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;)Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v2

    return-object v2
.end method

.method static getProvider(Lccsanandroid/content/pm/PackageManager;Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/content/res/Resources;)Lccsanandroid/content/pm/ProviderInfo;
    .locals 8
    .param p0, "packageManager"    # Lccsanandroid/content/pm/PackageManager;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "resources"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageManager",
            "request",
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lccsanandroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Lccsanandroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 78
    .local v1, "info":Lccsanandroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_3

    .line 83
    iget-object v2, v1, Lccsanandroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanandroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, v1, Lccsanandroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v2

    .line 94
    .local v2, "packageInfo":Lccsanandroid/content/pm/PackageInfo;
    iget-object v3, v2, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    invoke-static {v3}, Lccsanandroidx/core/provider/FontProvider;->convertToByteArrayList([Lccsanandroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Lccsanandroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    invoke-static {p1, p2}, Lccsanandroidx/core/provider/FontProvider;->getCertificates(Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 97
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Lccsanandroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-static {v3, v6}, Lccsanandroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    return-object v1

    .line 97
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 84
    .end local v2    # "packageInfo":Lccsanandroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_2
    new-instance v2, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lccsanandroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_3
    new-instance v2, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method static query(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Ljava/lang/String;Lccsanandroid/os/CancellationSignal;)[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 20
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "request",
            "authority",
            "cancellationSignal"
        }
    .end annotation

    .line 121
    move-object/from16 v1, p2

    const-string v0, "result_code"

    const-string v2, "font_italic"

    const-string v3, "font_weight"

    const-string v4, "font_ttc_index"

    const-string v5, "file_id"

    const-string v6, "_id"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;>;"
    new-instance v8, Lccsanandroid/net/Uri$Builder;

    invoke-direct {v8}, Lccsanandroid/net/Uri$Builder;-><init>()V

    const-string v9, "content"

    invoke-virtual {v8, v9}, Lccsanandroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v8

    .line 123
    invoke-virtual {v8, v1}, Lccsanandroid/net/Uri$Builder;->authority(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object v8

    .line 125
    .local v8, "uri":Lccsanandroid/net/Uri;
    new-instance v10, Lccsanandroid/net/Uri$Builder;

    invoke-direct {v10}, Lccsanandroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v10, v9}, Lccsanandroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v9

    .line 126
    invoke-virtual {v9, v1}, Lccsanandroid/net/Uri$Builder;->authority(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v9

    .line 127
    const-string v10, "file"

    invoke-virtual {v9, v10}, Lccsanandroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v9

    .line 128
    invoke-virtual {v9}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object v9

    .line 129
    .local v9, "fileBaseUri":Lccsanandroid/net/Uri;
    const/16 v19, 0x0

    .line 131
    .local v19, "cursor":Lccsanandroid/database/Cursor;
    const/4 v10, 0x7

    :try_start_0
    new-array v12, v10, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v6, v12, v15

    const/4 v14, 0x1

    aput-object v5, v12, v14

    const/4 v10, 0x2

    aput-object v4, v12, v10

    const/4 v10, 0x3

    const-string v11, "font_variation_settings"

    aput-object v11, v12, v10

    const/4 v10, 0x4

    aput-object v3, v12, v10

    const/4 v10, 0x5

    aput-object v2, v12, v10

    const/4 v10, 0x6

    aput-object v0, v12, v10

    .line 138
    .local v12, "projection":[Ljava/lang/String;
    sget v10, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-le v10, v11, :cond_0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "query = ?"

    new-array v11, v14, [Ljava/lang/String;

    .line 140
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    const/16 v16, 0x0

    .line 139
    move-object/from16 v17, v11

    move-object v11, v8

    const/4 v1, 0x1

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, p3

    invoke-virtual/range {v10 .. v16}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    .end local v19    # "cursor":Lccsanandroid/database/Cursor;
    .local v10, "cursor":Lccsanandroid/database/Cursor;
    goto :goto_0

    .line 143
    .end local v10    # "cursor":Lccsanandroid/database/Cursor;
    .restart local v19    # "cursor":Lccsanandroid/database/Cursor;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v13

    const-string v16, "query = ?"

    new-array v10, v1, [Ljava/lang/String;

    .line 144
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    aput-object v11, v10, v15

    const/16 v18, 0x0

    .line 143
    move-object v14, v8

    const/4 v11, 0x0

    move-object v15, v12

    move-object/from16 v17, v10

    invoke-virtual/range {v13 .. v18}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    .end local v19    # "cursor":Lccsanandroid/database/Cursor;
    .restart local v10    # "cursor":Lccsanandroid/database/Cursor;
    :goto_0
    if-eqz v10, :cond_7

    :try_start_1
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_7

    .line 148
    invoke-interface {v10, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "resultCodeColumnIndex":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v13

    .line 151
    invoke-interface {v10, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 152
    .local v6, "idColumnIndex":I
    invoke-interface {v10, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 154
    .local v5, "fileIdColumnIndex":I
    invoke-interface {v10, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 156
    .local v4, "ttcIndexColumnIndex":I
    invoke-interface {v10, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, "weightColumnIndex":I
    invoke-interface {v10, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, "italicColumnIndex":I
    :goto_1
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 161
    const/4 v13, -0x1

    if-eq v0, v13, :cond_1

    .line 162
    invoke-interface {v10, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_2

    .line 163
    :cond_1
    const/4 v15, 0x0

    :goto_2
    move v14, v15

    .line 164
    .local v14, "resultCode":I
    if-eq v4, v13, :cond_2

    .line 165
    invoke-interface {v10, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 167
    .local v15, "ttcIndex":I
    :goto_3
    if-ne v5, v13, :cond_3

    .line 168
    invoke-interface {v10, v6}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 169
    .local v18, "id":J
    move-object/from16 v16, v12

    move-wide/from16 v11, v18

    .end local v12    # "projection":[Ljava/lang/String;
    .end local v18    # "id":J
    .local v11, "id":J
    .local v16, "projection":[Ljava/lang/String;
    invoke-static {v8, v11, v12}, Lccsanandroid/content/ContentUris;->withAppendedId(Lccsanandroid/net/Uri;J)Lccsanandroid/net/Uri;

    move-result-object v17

    move-object/from16 v11, v17

    .line 170
    .local v11, "fileUri":Lccsanandroid/net/Uri;
    goto :goto_4

    .line 171
    .end local v11    # "fileUri":Lccsanandroid/net/Uri;
    .end local v16    # "projection":[Ljava/lang/String;
    .restart local v12    # "projection":[Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v12

    .end local v12    # "projection":[Ljava/lang/String;
    .restart local v16    # "projection":[Ljava/lang/String;
    invoke-interface {v10, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 172
    .local v11, "id":J
    invoke-static {v9, v11, v12}, Lccsanandroid/content/ContentUris;->withAppendedId(Lccsanandroid/net/Uri;J)Lccsanandroid/net/Uri;

    move-result-object v17

    move-object/from16 v11, v17

    .line 175
    .local v11, "fileUri":Lccsanandroid/net/Uri;
    :goto_4
    if-eq v3, v13, :cond_4

    invoke-interface {v10, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_5

    :cond_4
    const/16 v12, 0x190

    .line 176
    .local v12, "weight":I
    :goto_5
    if-eq v2, v13, :cond_5

    invoke-interface {v10, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v1, :cond_5

    const/4 v13, 0x1

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    .line 178
    .local v13, "italic":Z
    :goto_6
    invoke-static {v11, v15, v12, v13, v14}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->create(Lccsanandroid/net/Uri;IIZI)Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    move-object/from16 v12, v16

    const/4 v1, 0x1

    const/4 v11, 0x0

    .end local v11    # "fileUri":Lccsanandroid/net/Uri;
    .end local v12    # "weight":I
    .end local v13    # "italic":Z
    .end local v14    # "resultCode":I
    .end local v15    # "ttcIndex":I
    goto :goto_1

    .line 160
    .end local v16    # "projection":[Ljava/lang/String;
    .local v12, "projection":[Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v12

    .end local v12    # "projection":[Ljava/lang/String;
    .restart local v16    # "projection":[Ljava/lang/String;
    goto :goto_7

    .line 182
    .end local v0    # "resultCodeColumnIndex":I
    .end local v2    # "italicColumnIndex":I
    .end local v3    # "weightColumnIndex":I
    .end local v4    # "ttcIndexColumnIndex":I
    .end local v5    # "fileIdColumnIndex":I
    .end local v6    # "idColumnIndex":I
    .end local v16    # "projection":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v10

    goto :goto_8

    .line 147
    .restart local v12    # "projection":[Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v12

    .line 182
    .end local v12    # "projection":[Ljava/lang/String;
    :goto_7
    if-eqz v10, :cond_8

    .line 183
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V

    .line 186
    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0

    .line 182
    .end local v10    # "cursor":Lccsanandroid/database/Cursor;
    .restart local v19    # "cursor":Lccsanandroid/database/Cursor;
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v19, :cond_9

    .line 183
    invoke-interface/range {v19 .. v19}, Lccsanandroid/database/Cursor;->close()V

    .line 185
    :cond_9
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
