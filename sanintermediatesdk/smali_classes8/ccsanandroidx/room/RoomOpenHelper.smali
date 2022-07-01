.class public Lccsanandroidx/room/RoomOpenHelper;
.super Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/room/RoomOpenHelper$ValidationResult;,
        Lccsanandroidx/room/RoomOpenHelper$Delegate;
    }
.end annotation


# instance fields
.field private mConfiguration:Lccsanandroidx/room/DatabaseConfiguration;

.field private final mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

.field private final mIdentityHash:Ljava/lang/String;

.field private final mLegacyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroidx/room/DatabaseConfiguration;Lccsanandroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Lccsanandroidx/room/DatabaseConfiguration;
    .param p2, "delegate"    # Lccsanandroidx/room/RoomOpenHelper$Delegate;
    .param p3, "legacyHash"    # Ljava/lang/String;

    .line 63
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lccsanandroidx/room/RoomOpenHelper;-><init>(Lccsanandroidx/room/DatabaseConfiguration;Lccsanandroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/room/DatabaseConfiguration;Lccsanandroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Lccsanandroidx/room/DatabaseConfiguration;
    .param p2, "delegate"    # Lccsanandroidx/room/RoomOpenHelper$Delegate;
    .param p3, "identityHash"    # Ljava/lang/String;
    .param p4, "legacyHash"    # Ljava/lang/String;

    .line 54
    iget v0, p2, Lccsanandroidx/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 55
    iput-object p1, p0, Lccsanandroidx/room/RoomOpenHelper;->mConfiguration:Lccsanandroidx/room/DatabaseConfiguration;

    .line 56
    iput-object p2, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    .line 57
    iput-object p3, p0, Lccsanandroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lccsanandroidx/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private checkIdentity(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 142
    invoke-static {p1}, Lccsanandroidx/room/RoomOpenHelper;->hasRoomMasterTable(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "identityHash":Ljava/lang/String;
    new-instance v1, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v2}, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 147
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 151
    :cond_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 152
    nop

    .line 153
    iget-object v2, p0, Lccsanandroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lccsanandroidx/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    .end local v0    # "identityHash":Ljava/lang/String;
    .end local v1    # "cursor":Lccsanandroid/database/Cursor;
    :cond_2
    :goto_0
    goto :goto_1

    .line 151
    .restart local v0    # "identityHash":Ljava/lang/String;
    .restart local v1    # "cursor":Lccsanandroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 152
    throw v2

    .line 161
    .end local v0    # "identityHash":Ljava/lang/String;
    .end local v1    # "cursor":Lccsanandroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/room/RoomOpenHelper$ValidationResult;

    move-result-object v0

    .line 162
    .local v0, "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    iget-boolean v1, v0, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onPostMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 167
    invoke-direct {p0, p1}, Lccsanandroidx/room/RoomOpenHelper;->updateIdentity(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 169
    .end local v0    # "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    :goto_1
    return-void

    .line 163
    .restart local v0    # "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createMasterTableIfNotExists(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 177
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private static hasEmptySchema(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Z
    .locals 3
    .param p0, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 192
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p0, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 196
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 198
    :cond_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 196
    return v2

    .line 198
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 199
    throw v1
.end method

.method private static hasRoomMasterTable(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Z
    .locals 3
    .param p0, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 181
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-interface {p0, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 185
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 187
    :cond_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 185
    return v2

    .line 187
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 188
    throw v1
.end method

.method private updateIdentity(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 172
    invoke-direct {p0, p1}, Lccsanandroidx/room/RoomOpenHelper;->createMasterTableIfNotExists(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 173
    iget-object v0, p0, Lccsanandroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroidx/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onConfigure(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 68
    invoke-super {p0, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 73
    invoke-static {p1}, Lccsanandroidx/room/RoomOpenHelper;->hasEmptySchema(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Z

    move-result v0

    .line 74
    .local v0, "isEmptyDatabase":Z
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->createAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 75
    if-nez v0, :cond_1

    .line 80
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/room/RoomOpenHelper$ValidationResult;

    move-result-object v1

    .line 81
    .local v1, "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    iget-boolean v2, v1, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lccsanandroidx/room/RoomOpenHelper;->updateIdentity(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 87
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 88
    return-void
.end method

.method public onDowngrade(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/room/RoomOpenHelper;->onUpgrade(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;II)V

    .line 130
    return-void
.end method

.method public onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 134
    invoke-super {p0, p1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 135
    invoke-direct {p0, p1}, Lccsanandroidx/room/RoomOpenHelper;->checkIdentity(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 136
    iget-object v0, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/room/RoomOpenHelper;->mConfiguration:Lccsanandroidx/room/DatabaseConfiguration;

    .line 139
    return-void
.end method

.method public onUpgrade(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "migrated":Z
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mConfiguration:Lccsanandroidx/room/DatabaseConfiguration;

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, v1, Lccsanandroidx/room/DatabaseConfiguration;->migrationContainer:Lccsanandroidx/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v1, p2, p3}, Lccsanandroidx/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "migrations":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/room/migration/Migration;>;"
    if-eqz v1, :cond_2

    .line 97
    iget-object v2, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v2, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onPreMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/room/migration/Migration;

    .line 99
    .local v3, "migration":Lccsanandroidx/room/migration/Migration;
    invoke-virtual {v3, p1}, Lccsanandroidx/room/migration/Migration;->migrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 100
    .end local v3    # "migration":Lccsanandroidx/room/migration/Migration;
    goto :goto_0

    .line 101
    :cond_0
    iget-object v2, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v2, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onValidateSchema(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/room/RoomOpenHelper$ValidationResult;

    move-result-object v2

    .line 102
    .local v2, "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    iget-boolean v3, v2, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;->isValid:Z

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v3, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->onPostMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 107
    invoke-direct {p0, p1}, Lccsanandroidx/room/RoomOpenHelper;->updateIdentity(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 108
    const/4 v0, 0x1

    goto :goto_1

    .line 103
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migration didn\'t properly handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lccsanandroidx/room/RoomOpenHelper$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    .end local v1    # "migrations":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/room/migration/Migration;>;"
    .end local v2    # "result":Lccsanandroidx/room/RoomOpenHelper$ValidationResult;
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 112
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mConfiguration:Lccsanandroidx/room/DatabaseConfiguration;

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1, p2, p3}, Lccsanandroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->dropAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 115
    iget-object v1, p0, Lccsanandroidx/room/RoomOpenHelper;->mDelegate:Lccsanandroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Lccsanandroidx/room/RoomOpenHelper$Delegate;->createAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_2

    .line 117
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A migration from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_4
    :goto_2
    return-void
.end method
