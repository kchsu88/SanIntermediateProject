.class Lccsanandroidx/documentfile/provider/SingleDocumentFile;
.super Lccsanandroidx/documentfile/provider/DocumentFile;
.source "SingleDocumentFile.java"


# instance fields
.field private mContext:Lccsanandroid/content/Context;

.field private mUri:Lccsanandroid/net/Uri;


# direct methods
.method constructor <init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/documentfile/provider/DocumentFile;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "uri"    # Lccsanandroid/net/Uri;

    .line 32
    invoke-direct {p0, p1}, Lccsanandroidx/documentfile/provider/DocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V

    .line 33
    iput-object p2, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    .line 34
    iput-object p3, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    .line 35
    return-void
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->canRead(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->canWrite(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()Z
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroid/provider/DocumentsContract;->deleteDocument(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public exists()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->exists(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->getName(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->getType(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->isDirectory(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->isFile(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->isVirtual(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 81
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->lastModified(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 86
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/SingleDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->length(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
