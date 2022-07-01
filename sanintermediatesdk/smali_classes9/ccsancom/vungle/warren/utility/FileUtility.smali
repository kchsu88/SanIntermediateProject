.class public Lccsancom/vungle/warren/utility/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final allowedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static objectInputStreamProvider:Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lccsancom/vungle/warren/utility/FileUtility$1;

    invoke-direct {v0}, Lccsancom/vungle/warren/utility/FileUtility$1;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/utility/FileUtility;->objectInputStreamProvider:Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;

    .line 44
    const-class v0, Lccsancom/vungle/warren/utility/FileUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/util/LinkedHashSet;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/util/HashSet;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/util/HashMap;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/FileUtility;->allowedClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 150
    if-eqz p0, :cond_0

    .line 151
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_1

    .line 154
    :cond_0
    :goto_0
    nop

    .line 155
    :goto_1
    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 122
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 123
    return-void

    .line 126
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 127
    .local v3, "c":Ljava/io/File;
    invoke-static {v3}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 126
    .end local v3    # "c":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "files":[Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    return-void

    .line 132
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4
    :goto_1
    return-void
.end method

.method public static deleteAndLogIfFailed(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 138
    const-string v0, "Cannot delete "

    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    sget-object v1, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private static getIndentString(I)Ljava/lang/String;
    .locals 3
    .param p0, "indent"    # I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 105
    const-string v2, "|  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getObjectInputStreamProvider()Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;
    .locals 1

    .line 290
    sget-object v0, Lccsancom/vungle/warren/utility/FileUtility;->objectInputStreamProvider:Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;

    return-object v0
.end method

.method public static printDirectoryTree(Ljava/io/File;)V
    .locals 0
    .param p0, "folder"    # Ljava/io/File;

    .line 51
    return-void
.end method

.method private static printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V
    .locals 6
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "indent"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 75
    if-nez p0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    invoke-static {p1}, Lccsancom/vungle/warren/utility/FileUtility;->getIndentString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 86
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 90
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2}, Lccsancom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V

    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2}, Lccsancom/vungle/warren/utility/FileUtility;->printFile(Ljava/io/File;ILjava/lang/StringBuilder;)V

    .line 89
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_3
    return-void

    .line 80
    .end local v0    # "files":[Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folder is not a Directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static printFile(Ljava/io/File;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "indent"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p1}, Lccsancom/vungle/warren/utility/FileUtility;->getIndentString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    return-void
.end method

.method static readAllLines(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, "ser":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    return-object v2

    .line 194
    .end local v1    # "ser":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static readMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "ser":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v1

    check-cast v2, Ljava/util/HashMap;

    return-object v2

    .line 168
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2
.end method

.method public static readSerializable(Ljava/io/File;)Ljava/lang/Object;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 236
    return-object v1

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "fin":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 241
    .local v2, "oin":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 242
    sget-object v3, Lccsancom/vungle/warren/utility/FileUtility;->objectInputStreamProvider:Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;

    invoke-interface {v3, v0}, Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;->provideObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object v3

    move-object v2, v3

    .line 243
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    return-object v1

    .line 252
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 248
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v5, "cannot read serializable"

    invoke-static {v4, v5, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 246
    :catch_1
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    nop

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 244
    :catch_2
    move-exception v3

    .line 245
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v5, "IOIOException"

    invoke-static {v4, v5, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    nop

    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 254
    nop

    .line 256
    :try_start_2
    invoke-static {p0}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 258
    goto :goto_1

    .line 257
    :catch_3
    move-exception v3

    .line 259
    :goto_1
    return-object v1

    .line 252
    :goto_2
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 254
    throw v1
.end method

.method static setObjectInputStreamProvider(Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;)V
    .locals 0
    .param p0, "objectInputStreamProvider"    # Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;

    .line 285
    sput-object p0, Lccsancom/vungle/warren/utility/FileUtility;->objectInputStreamProvider:Lccsancom/vungle/warren/utility/FileUtility$ObjectInputStreamProvider;

    .line 286
    return-void
.end method

.method public static size(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 263
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    const-wide/16 v0, 0x0

    .line 268
    .local v0, "length":J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 270
    .local v2, "children":[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 271
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 272
    .local v5, "child":Ljava/io/File;
    invoke-static {v5}, Lccsancom/vungle/warren/utility/FileUtility;->size(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 271
    .end local v5    # "child":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    :cond_1
    return-wide v0

    .line 279
    .end local v2    # "children":[Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2

    .line 264
    .end local v0    # "length":J
    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static writeAllLines(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 203
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    return-void

    .line 206
    :cond_1
    invoke-static {v0, p1}, Lccsancom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    .line 207
    return-void
.end method

.method public static writeMap(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-static {v0, p1}, Lccsancom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    .line 178
    return-void
.end method

.method public static writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serializable"    # Ljava/io/Serializable;

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {p0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 215
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "fout":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 220
    .local v1, "oout":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 221
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 222
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lccsancom/vungle/warren/utility/FileUtility;->TAG:Ljava/lang/String;

    const-string v4, "IOIOException"

    invoke-static {v3, v4, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    nop

    .line 230
    return-void

    .line 227
    :goto_1
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    throw v2
.end method
