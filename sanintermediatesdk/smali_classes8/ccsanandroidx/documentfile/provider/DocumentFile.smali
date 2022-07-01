.class public abstract Lccsanandroidx/documentfile/provider/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DocumentFile"


# instance fields
.field private final mParent:Lccsanandroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lccsanandroidx/documentfile/provider/DocumentFile;->mParent:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 90
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 102
    new-instance v0, Lccsanandroidx/documentfile/provider/RawDocumentFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lccsanandroidx/documentfile/provider/RawDocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    return-object v0
.end method

.method public static fromSingleUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "singleUri"    # Lccsanandroid/net/Uri;

    .line 117
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 118
    new-instance v0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;

    invoke-direct {v0, v1, p0, p1}, Lccsanandroidx/documentfile/provider/SingleDocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    return-object v0

    .line 120
    :cond_0
    return-object v1
.end method

.method public static fromTreeUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "treeUri"    # Lccsanandroid/net/Uri;

    .line 135
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 136
    new-instance v0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;

    .line 138
    invoke-static {p1}, Lccsanandroid/provider/DocumentsContract;->getTreeDocumentId(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {p1, v2}, Lccsanandroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    return-object v0

    .line 140
    :cond_0
    return-object v1
.end method

.method public static isDocumentUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 149
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 150
    invoke-static {p0, p1}, Lccsanandroid/provider/DocumentsContract;->isDocumentUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract createDirectory(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lccsanandroidx/documentfile/provider/DocumentFile;->listFiles()[Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 339
    .local v3, "doc":Lccsanandroidx/documentfile/provider/DocumentFile;
    invoke-virtual {v3}, Lccsanandroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    return-object v3

    .line 338
    .end local v3    # "doc":Lccsanandroidx/documentfile/provider/DocumentFile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParentFile()Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 229
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/DocumentFile;->mParent:Lccsanandroidx/documentfile/provider/DocumentFile;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Lccsanandroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract isVirtual()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract listFiles()[Lccsanandroidx/documentfile/provider/DocumentFile;
.end method

.method public abstract renameTo(Ljava/lang/String;)Z
.end method
