.class Lccsanandroidx/work/impl/WorkDatabase_Impl$1;
.super Lccsanandroidx/room/RoomOpenHelper$Delegate;
.source "WorkDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/WorkDatabase_Impl;->createOpenHelper(Lccsanandroidx/room/DatabaseConfiguration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/WorkDatabase_Impl;
    .param p2, "version"    # I

    .line 49
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-direct {p0, p2}, Lccsanandroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 52
    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE  INDEX `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "CREATE  INDEX `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "CREATE  INDEX `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE  INDEX `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE  INDEX `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c84d23ade98552f1cec71088c1f0794c\')"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public dropAllTables(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 68
    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 77
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$000(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$100(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 79
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v2}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$200(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Lccsanandroidx/room/RoomDatabase$Callback;->onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 86
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$302(Lccsanandroidx/work/impl/WorkDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 87
    const-string v0, "PRAGMA foreign_keys = ON"

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$400(Lccsanandroidx/work/impl/WorkDatabase_Impl;Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 89
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$500(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v1}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$600(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkDatabase_Impl$1;->this$0:Lccsanandroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v2}, Lccsanandroidx/work/impl/WorkDatabase_Impl;->access$700(Lccsanandroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Lccsanandroidx/room/RoomDatabase$Callback;->onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onPostMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 103
    return-void
.end method

.method public onPreMigrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 98
    invoke-static {p1}, Lccsanandroidx/room/util/DBUtil;->dropFtsSyncTriggers(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 99
    return-void
.end method

.method protected validateMigration(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 38
    .param p1, "_db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 107
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 108
    .local v1, "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    new-instance v3, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v4, "work_spec_id"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v7, "prerequisite_id"

    invoke-direct {v3, v7, v5, v6, v2}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 111
    .local v3, "_foreignKeysDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v14, Lccsanandroidx/room/util/TableInfo$ForeignKey;

    new-array v8, v6, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v4, v8, v15

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-array v8, v6, [Ljava/lang/String;

    const-string v13, "id"

    aput-object v13, v8, v15

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const-string v9, "WorkSpec"

    const-string v10, "CASCADE"

    const-string v11, "CASCADE"

    move-object v8, v14

    move-object v2, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lccsanandroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v8, Lccsanandroidx/room/util/TableInfo$ForeignKey;

    new-array v9, v6, [Ljava/lang/String;

    aput-object v7, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    new-array v9, v6, [Ljava/lang/String;

    aput-object v2, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    const-string v19, "WorkSpec"

    const-string v20, "CASCADE"

    const-string v21, "CASCADE"

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v23}, Lccsanandroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v8, Ljava/util/HashSet;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 114
    .local v8, "_indicesDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v9, Lccsanandroidx/room/util/TableInfo$Index;

    new-array v10, v6, [Ljava/lang/String;

    aput-object v4, v10, v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_Dependency_work_spec_id"

    invoke-direct {v9, v11, v15, v10}, Lccsanandroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v9, Lccsanandroidx/room/util/TableInfo$Index;

    new-array v10, v6, [Ljava/lang/String;

    aput-object v7, v10, v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v10, "index_Dependency_prerequisite_id"

    invoke-direct {v9, v10, v15, v7}, Lccsanandroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v7, Lccsanandroidx/room/util/TableInfo;

    const-string v9, "Dependency"

    invoke-direct {v7, v9, v1, v3, v8}, Lccsanandroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 117
    .local v7, "_infoDependency":Lccsanandroidx/room/util/TableInfo;
    invoke-static {v0, v9}, Lccsanandroidx/room/util/TableInfo;->read(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lccsanandroidx/room/util/TableInfo;

    move-result-object v9

    .line 118
    .local v9, "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    invoke-virtual {v7, v9}, Lccsanandroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "\n Found:\n"

    if-eqz v10, :cond_4

    .line 123
    new-instance v10, Ljava/util/HashMap;

    const/16 v12, 0x17

    invoke-direct {v10, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 124
    .local v10, "_columnsWorkSpec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    invoke-direct {v12, v2, v5, v6, v6}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v13, "state"

    const-string v14, "INTEGER"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v13, "worker_class_name"

    invoke-direct {v12, v13, v5, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "input_merger_class_name"

    invoke-direct {v12, v13, v5, v15, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "input"

    move-object/from16 v16, v1

    .end local v1    # "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .local v16, "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    const-string v1, "BLOB"

    invoke-direct {v12, v13, v1, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "output"

    invoke-direct {v12, v13, v1, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "initial_delay"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "interval_duration"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "flex_duration"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v13, "run_attempt_count"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "backoff_policy"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "backoff_delay_duration"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "backoff_delay_duration"

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "period_start_time"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "period_start_time"

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v13, "minimum_retention_duration"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "minimum_retention_duration"

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v13, "schedule_requested_at"

    invoke-direct {v12, v13, v14, v6, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v6, "required_network_type"

    invoke-direct {v12, v6, v14, v15, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v6, "required_network_type"

    invoke-virtual {v10, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v6, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v12, "requires_charging"

    move-object/from16 v19, v3

    const/4 v3, 0x1

    .end local v3    # "_foreignKeysDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v19, "_foreignKeysDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    invoke-direct {v6, v12, v14, v3, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v12, "requires_charging"

    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v6, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v12, "requires_device_idle"

    invoke-direct {v6, v12, v14, v3, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v12, "requires_device_idle"

    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v6, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v12, "requires_battery_not_low"

    invoke-direct {v6, v12, v14, v3, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v12, "requires_battery_not_low"

    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v6, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v12, "requires_storage_not_low"

    invoke-direct {v6, v12, v14, v3, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v12, "requires_storage_not_low"

    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v6, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v12, "trigger_content_update_delay"

    invoke-direct {v6, v12, v14, v3, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string/jumbo v12, "trigger_content_update_delay"

    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v6, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v12, "trigger_max_content_delay"

    invoke-direct {v6, v12, v14, v3, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string/jumbo v3, "trigger_max_content_delay"

    invoke-virtual {v10, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v3, Lccsanandroidx/room/util/TableInfo$Column;

    const-string v6, "content_uri_triggers"

    invoke-direct {v3, v6, v1, v15, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v1, "content_uri_triggers"

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 148
    .local v1, "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 149
    .local v3, "_indicesWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v12, Lccsanandroidx/room/util/TableInfo$Index;

    move-object/from16 v20, v8

    .end local v8    # "_indicesDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v20, "_indicesDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-array v8, v6, [Ljava/lang/String;

    aput-object v13, v8, v15

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v8, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v12, v8, v15, v6}, Lccsanandroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v6, Lccsanandroidx/room/util/TableInfo;

    const-string v8, "WorkSpec"

    invoke-direct {v6, v8, v10, v1, v3}, Lccsanandroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 151
    .local v6, "_infoWorkSpec":Lccsanandroidx/room/util/TableInfo;
    const-string v8, "WorkSpec"

    invoke-static {v0, v8}, Lccsanandroidx/room/util/TableInfo;->read(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lccsanandroidx/room/util/TableInfo;

    move-result-object v8

    .line 152
    .local v8, "_existingWorkSpec":Lccsanandroidx/room/util/TableInfo;
    invoke-virtual {v6, v8}, Lccsanandroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 157
    new-instance v12, Ljava/util/HashMap;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 158
    .local v12, "_columnsWorkTag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    new-instance v15, Lccsanandroidx/room/util/TableInfo$Column;

    const-string/jumbo v13, "tag"

    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v22, "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    invoke-direct {v15, v13, v5, v1, v1}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string/jumbo v13, "tag"

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v13, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v15, 0x2

    invoke-direct {v13, v4, v5, v1, v15}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v12, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 161
    .local v13, "_foreignKeysWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v15, Lccsanandroidx/room/util/TableInfo$ForeignKey;

    move-object/from16 v29, v3

    .end local v3    # "_indicesWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v29, "_indicesWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-array v3, v1, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v3, v21

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    new-array v3, v1, [Ljava/lang/String;

    aput-object v2, v3, v21

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string v24, "WorkSpec"

    const-string v25, "CASCADE"

    const-string v26, "CASCADE"

    move-object/from16 v23, v15

    invoke-direct/range {v23 .. v28}, Lccsanandroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 163
    .local v1, "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v15, Lccsanandroidx/room/util/TableInfo$Index;

    move-object/from16 v23, v10

    .end local v10    # "_columnsWorkSpec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .local v23, "_columnsWorkSpec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v10, v3

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v24, v9

    .end local v9    # "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    .local v24, "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    const-string v9, "index_WorkTag_work_spec_id"

    invoke-direct {v15, v9, v3, v10}, Lccsanandroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Lccsanandroidx/room/util/TableInfo;

    const-string v9, "WorkTag"

    invoke-direct {v3, v9, v12, v13, v1}, Lccsanandroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 165
    .local v3, "_infoWorkTag":Lccsanandroidx/room/util/TableInfo;
    const-string v9, "WorkTag"

    invoke-static {v0, v9}, Lccsanandroidx/room/util/TableInfo;->read(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lccsanandroidx/room/util/TableInfo;

    move-result-object v9

    .line 166
    .local v9, "_existingWorkTag":Lccsanandroidx/room/util/TableInfo;
    invoke-virtual {v3, v9}, Lccsanandroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 171
    new-instance v10, Ljava/util/HashMap;

    const/4 v15, 0x2

    invoke-direct {v10, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    .local v10, "_columnsSystemIdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    new-instance v15, Lccsanandroidx/room/util/TableInfo$Column;

    move-object/from16 v25, v1

    const/4 v1, 0x1

    .end local v1    # "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v25, "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    invoke-direct {v15, v4, v5, v1, v1}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v10, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v15, Lccsanandroidx/room/util/TableInfo$Column;

    move-object/from16 v26, v12

    .end local v12    # "_columnsWorkTag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .local v26, "_columnsWorkTag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    const-string/jumbo v12, "system_id"

    move-object/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "_foreignKeysWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v27, "_foreignKeysWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    invoke-direct {v15, v12, v14, v1, v13}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string/jumbo v12, "system_id"

    invoke-virtual {v10, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 175
    .local v12, "_foreignKeysSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v14, Lccsanandroidx/room/util/TableInfo$ForeignKey;

    new-array v15, v1, [Ljava/lang/String;

    aput-object v4, v15, v13

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    new-array v15, v1, [Ljava/lang/String;

    aput-object v2, v15, v13

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const-string v31, "WorkSpec"

    const-string v32, "CASCADE"

    const-string v33, "CASCADE"

    move-object/from16 v30, v14

    invoke-direct/range {v30 .. v35}, Lccsanandroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Ljava/util/HashSet;

    const/4 v13, 0x0

    invoke-direct {v1, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 177
    .local v1, "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v13, Lccsanandroidx/room/util/TableInfo;

    const-string v14, "SystemIdInfo"

    invoke-direct {v13, v14, v10, v12, v1}, Lccsanandroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 178
    .local v13, "_infoSystemIdInfo":Lccsanandroidx/room/util/TableInfo;
    const-string v14, "SystemIdInfo"

    invoke-static {v0, v14}, Lccsanandroidx/room/util/TableInfo;->read(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lccsanandroidx/room/util/TableInfo;

    move-result-object v14

    .line 179
    .local v14, "_existingSystemIdInfo":Lccsanandroidx/room/util/TableInfo;
    invoke-virtual {v13, v14}, Lccsanandroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 184
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v28, v1

    const/4 v1, 0x2

    .end local v1    # "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v28, "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    invoke-direct {v15, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    .local v15, "_columnsWorkName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    move-object/from16 v30, v10

    .end local v10    # "_columnsSystemIdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .local v30, "_columnsSystemIdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    const-string v10, "name"

    move-object/from16 v31, v12

    const/4 v12, 0x1

    .end local v12    # "_foreignKeysSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v31, "_foreignKeysSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    invoke-direct {v1, v10, v5, v12, v12}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v10, "name"

    invoke-virtual {v15, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Lccsanandroidx/room/util/TableInfo$Column;

    const/4 v10, 0x2

    invoke-direct {v1, v4, v5, v12, v10}, Lccsanandroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v15, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 188
    .local v1, "_foreignKeysWorkName":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v5, Lccsanandroidx/room/util/TableInfo$ForeignKey;

    new-array v10, v12, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v4, v10, v17

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    new-array v10, v12, [Ljava/lang/String;

    aput-object v2, v10, v17

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v37

    const-string v33, "WorkSpec"

    const-string v34, "CASCADE"

    const-string v35, "CASCADE"

    move-object/from16 v32, v5

    invoke-direct/range {v32 .. v37}, Lccsanandroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 190
    .local v2, "_indicesWorkName":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v10, Lccsanandroidx/room/util/TableInfo$Index;

    new-array v5, v5, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "index_WorkName_work_spec_id"

    invoke-direct {v10, v5, v12, v4}, Lccsanandroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v4, Lccsanandroidx/room/util/TableInfo;

    const-string v5, "WorkName"

    invoke-direct {v4, v5, v15, v1, v2}, Lccsanandroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 192
    .local v4, "_infoWorkName":Lccsanandroidx/room/util/TableInfo;
    const-string v5, "WorkName"

    invoke-static {v0, v5}, Lccsanandroidx/room/util/TableInfo;->read(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Lccsanandroidx/room/util/TableInfo;

    move-result-object v5

    .line 193
    .local v5, "_existingWorkName":Lccsanandroidx/room/util/TableInfo;
    invoke-virtual {v4, v5}, Lccsanandroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 198
    return-void

    .line 194
    :cond_0
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migration didn\'t properly handle WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    .end local v2    # "_indicesWorkName":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .end local v4    # "_infoWorkName":Lccsanandroidx/room/util/TableInfo;
    .end local v5    # "_existingWorkName":Lccsanandroidx/room/util/TableInfo;
    .end local v15    # "_columnsWorkName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v28    # "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .end local v30    # "_columnsSystemIdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v31    # "_foreignKeysSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v1, "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .restart local v10    # "_columnsSystemIdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .restart local v12    # "_foreignKeysSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_1
    move-object/from16 v28, v1

    .end local v1    # "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .restart local v28    # "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    .end local v10    # "_columnsSystemIdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v14    # "_existingSystemIdInfo":Lccsanandroidx/room/util/TableInfo;
    .end local v25    # "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .end local v26    # "_columnsWorkTag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v27    # "_foreignKeysWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v28    # "_indicesSystemIdInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v1, "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v12, "_columnsWorkTag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .local v13, "_foreignKeysWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_2
    move-object/from16 v25, v1

    .end local v1    # "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .restart local v25    # "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    .end local v12    # "_columnsWorkTag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v13    # "_foreignKeysWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v22    # "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v23    # "_columnsWorkSpec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v24    # "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    .end local v25    # "_indicesWorkTag":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .end local v29    # "_indicesWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v1, "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v3, "_indicesWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .local v9, "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    .local v10, "_columnsWorkSpec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    :cond_3
    move-object/from16 v22, v1

    .end local v1    # "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v22    # "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    .end local v6    # "_infoWorkSpec":Lccsanandroidx/room/util/TableInfo;
    .end local v10    # "_columnsWorkSpec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v16    # "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v19    # "_foreignKeysDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v20    # "_indicesDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    .end local v22    # "_foreignKeysWorkSpec":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v1, "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .local v3, "_foreignKeysDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$ForeignKey;>;"
    .local v8, "_indicesDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsanandroidx/room/util/TableInfo$Index;>;"
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v24, v9

    .end local v1    # "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .end local v9    # "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    .restart local v16    # "_columnsDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lccsanandroidx/room/util/TableInfo$Column;>;"
    .restart local v24    # "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    .end local v24    # "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    .local v2, "_existingDependency":Lccsanandroidx/room/util/TableInfo;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
