.class Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;
.super Lccsanandroid/content/ContextWrapper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/persistence/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoBackupDatabaseWrapperContext"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 133
    invoke-direct {p0, p1}, Lccsanandroid/content/ContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 134
    return-void
.end method

.method private getFlags(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 152
    const/high16 v0, 0x10000000

    .line 153
    .local v0, "flags":I
    and-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 154
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    const/16 v2, 0x10

    :cond_1
    or-int/2addr v0, v2

    .line 155
    return v0
.end method


# virtual methods
.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    invoke-super {p0, p1}, Lccsanandroid/content/ContextWrapper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "oldDb":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, "newDb":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 143
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-journal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    sget-object v4, Lccsancom/vungle/warren/persistence/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v5, "DatabaseHelper"

    const-string v6, "Failed to delete old db/-journal"

    invoke-static {v3, v4, v5, v6}, Lccsancom/vungle/warren/VungleLogger;->error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 160
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getFlags(I)I

    move-result v1

    invoke-static {v0, p3, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;Lccsanandroid/database/DatabaseErrorHandler;)Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Lccsanandroid/database/DatabaseErrorHandler;

    .line 165
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lccsancom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getFlags(I)I

    move-result v1

    invoke-static {v0, p3, v1, p4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;ILccsanandroid/database/DatabaseErrorHandler;)Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
