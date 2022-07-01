.class Lccsanandroidx/documentfile/provider/TreeDocumentFile;
.super Lccsanandroidx/documentfile/provider/DocumentFile;
.source "TreeDocumentFile.java"


# instance fields
.field private mContext:Lccsanandroid/content/Context;

.field private mUri:Lccsanandroid/net/Uri;


# direct methods
.method constructor <init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/documentfile/provider/DocumentFile;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "uri"    # Lccsanandroid/net/Uri;

    .line 37
    invoke-direct {p0, p1}, Lccsanandroidx/documentfile/provider/DocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V

    .line 38
    iput-object p2, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    .line 39
    iput-object p3, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    .line 40
    return-void
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .line 166
    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 174
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static createFile(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "self"    # Lccsanandroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lccsanandroid/provider/DocumentsContract;->createDocument(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->canRead(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->canWrite(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-static {v0, v1, v2, p1}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->createFile(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 65
    .local v0, "result":Lccsanandroid/net/Uri;
    if-eqz v0, :cond_0

    new-instance v1, Lccsanandroidx/documentfile/provider/TreeDocumentFile;

    iget-object v2, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->createFile(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 46
    .local v0, "result":Lccsanandroid/net/Uri;
    if-eqz v0, :cond_0

    new-instance v1, Lccsanandroidx/documentfile/provider/TreeDocumentFile;

    iget-object v2, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public delete()Z
    .locals 2

    .line 123
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroid/provider/DocumentsContract;->deleteDocument(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public exists()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->exists(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->getName(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->getType(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->isDirectory(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->isFile(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->isVirtual(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .line 102
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->lastModified(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 107
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentsContractApi19;->length(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Lccsanandroidx/documentfile/provider/DocumentFile;
    .locals 11

    .line 136
    iget-object v0, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, "resolver":Lccsanandroid/content/ContentResolver;
    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    .line 138
    invoke-static {v1}, Lccsanandroid/provider/DocumentsContract;->getDocumentId(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Lccsanandroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v7

    .line 139
    .local v7, "childrenUri":Lccsanandroid/net/Uri;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 141
    .local v8, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/net/Uri;>;"
    const/4 v9, 0x0

    .line 143
    .local v9, "c":Lccsanandroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "document_id"

    const/4 v10, 0x0

    aput-object v1, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 145
    :goto_0
    invoke-interface {v9}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v9, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "documentId":Ljava/lang/String;
    iget-object v2, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    invoke-static {v2, v1}, Lccsanandroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 149
    .local v2, "documentUri":Lccsanandroid/net/Uri;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    nop

    .end local v1    # "documentId":Ljava/lang/String;
    .end local v2    # "documentUri":Lccsanandroid/net/Uri;
    goto :goto_0

    .line 154
    :cond_0
    nop

    :goto_1
    invoke-static {v9}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 155
    goto :goto_2

    .line 154
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "DocumentFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 157
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lccsanandroid/net/Uri;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lccsanandroid/net/Uri;

    .line 158
    .local v1, "result":[Lccsanandroid/net/Uri;
    array-length v2, v1

    new-array v2, v2, [Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 159
    .local v2, "resultFiles":[Lccsanandroidx/documentfile/provider/DocumentFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 160
    new-instance v4, Lccsanandroidx/documentfile/provider/TreeDocumentFile;

    iget-object v5, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    aget-object v6, v1, v3

    invoke-direct {v4, p0, v5, v6}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    aput-object v4, v2, v3

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 154
    .end local v1    # "result":[Lccsanandroid/net/Uri;
    .end local v2    # "resultFiles":[Lccsanandroidx/documentfile/provider/DocumentFile;
    :goto_4
    invoke-static {v9}, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mContext:Lccsanandroid/content/Context;

    .line 180
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;

    .line 179
    invoke-static {v1, v2, p1}, Lccsanandroid/provider/DocumentsContract;->renameDocument(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    .line 181
    .local v1, "result":Lccsanandroid/net/Uri;
    if-eqz v1, :cond_0

    .line 182
    iput-object v1, p0, Lccsanandroidx/documentfile/provider/TreeDocumentFile;->mUri:Lccsanandroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    return v0

    .line 187
    .end local v1    # "result":Lccsanandroid/net/Uri;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
