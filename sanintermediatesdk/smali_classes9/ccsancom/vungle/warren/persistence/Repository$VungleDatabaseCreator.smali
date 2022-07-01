.class Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/persistence/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VungleDatabaseCreator"
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Lccsanandroid/content/Context;

    .line 1104
    return-void
.end method

.method private deleteDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1245
    return-void
.end method

.method private dropOldFilesData()V
    .locals 7

    .line 1249
    const-string v0, "vungle"

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->deleteDatabase(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1254
    .local v1, "external":Ljava/io/File;
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1256
    .local v2, "canUseExternal":Z
    :goto_0
    const-string v3, "IOException "

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1257
    new-instance v4, Ljava/io/File;

    const-string v5, ".vungle"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1259
    .local v4, "oldData":Ljava/io/File;
    :try_start_0
    invoke-static {v4}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    goto :goto_1

    .line 1260
    :catch_0
    move-exception v5

    .line 1261
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lccsancom/vungle/warren/persistence/Repository;->access$1300()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v4    # "oldData":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v4, p0, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Lccsanandroid/content/Context;

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 1266
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1267
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    .line 1269
    .local v0, "oldData":Ljava/io/File;
    :try_start_1
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1272
    goto :goto_2

    .line 1270
    :catch_1
    move-exception v5

    .line 1271
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {}, Lccsancom/vungle/warren/persistence/Repository;->access$1300()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1277
    .end local v0    # "oldData":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Lccsanandroid/content/Context;

    invoke-virtual {v6}, Lccsanandroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "downloads_vungle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1280
    goto :goto_3

    .line 1278
    :catch_2
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lccsancom/vungle/warren/persistence/Repository;->access$1300()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method


# virtual methods
.method public create(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 1199
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->dropOldFilesData()V

    .line 1201
    const-string v0, "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT, tt_download NUMERIC,asset_download_timestamp NUMERIC,asset_download_duration NUMERIC,ad_request_start_time NUMERIC,column_enable_om_sdk SHORT,column_om_sdk_extra_vast TEXT,column_request_timestamp NUMERIC, dynamic_events_and_urls TEXT, column_assets_fully_downloaded SHORT)"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1202
    const-string v0, "CREATE TABLE IF NOT EXISTS placement(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, incentivized SHORT, auto_cached SHORT, is_valid SHORT, wakeup_time NUMERIC, header_bidding SHORT, refresh_duration NUMERIC, supported_template_types NUMERIC, ad_size TEXT, autocache_priority NUMERIC, max_hb_cache NUMERIC, recommended_ad_size TEXT)"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1203
    const-string v0, "CREATE TABLE IF NOT EXISTS cookie(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, bools TEXT, ints TEXT, longs TEXT, strings TEXT )"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1204
    const-string v0, "CREATE TABLE IF NOT EXISTS report(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE,appId TEXT, placementId TEXT, adToken TEXT, incentivized SHORT, header_bidding SHORT, adStartTime NUMERIC, url TEXT, ad_duration NUMERIC, tt_download NUMERIC, campaign TEXT, videoViewed NUMERIC, ad_type TEXT, template_id TEXT, was_CTAC_licked SHORT, clicked_through TEXT, errors TEXT, user_actions TEXT, user_id TEXT, ordinal INT, videoLength NUMERIC, status INT, ad_size TEXT, init_timestamp NUMERIC, asset_download_duration NUMERIC,play_remote_url SHORT )"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1205
    const-string v0, "CREATE TABLE IF NOT EXISTS adAsset ( _id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, paren_id TEXT , ad_identifier TEXT NOT NULL, server_path TEXT, local_path TEXT NOT NULL, file_status SHORT, file_type SHORT, file_size INT, retry_count SHORT, retry_error SHORT, unique ( local_path, ad_identifier ));"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1206
    const-string v0, "CREATE TABLE IF NOT EXISTS vision_data(_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp NUMERIC, creative TEXT, campaign TEXT, advertiser TEXT )"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1207
    const-string v0, "CREATE TABLE IF NOT EXISTS analytic_url(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE)"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1208
    const-string v0, "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method public deleteData(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 1213
    const-string v0, "DROP TABLE IF EXISTS advertisement"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string v0, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1215
    const-string v0, "DROP TABLE IF EXISTS placement"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    const-string v0, "DROP TABLE IF EXISTS report"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1217
    const-string v0, "DROP TABLE IF EXISTS adAsset"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1218
    const-string v0, "DROP TABLE IF EXISTS vision_data"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1219
    const-string v0, "DROP TABLE IF EXISTS analytic_url"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1220
    const-string v0, "DROP TABLE IF EXISTS cache_bust"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 1225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 1227
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1228
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1229
    .local v2, "tableName":Ljava/lang/String;
    const-string v3, "android_metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sqlite_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1230
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1233
    :cond_1
    if-eqz v1, :cond_2

    .line 1234
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1236
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1237
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1238
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 1240
    :cond_3
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->create(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 1241
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 1109
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 1110
    const-string v0, "ALTER TABLE report ADD COLUMN status INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1115
    const-string v0, "CREATE TABLE IF NOT EXISTS vision_data(_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp NUMERIC, creative TEXT, campaign TEXT, advertiser TEXT )"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1117
    const-string v0, "ALTER TABLE report ADD COLUMN ad_size TEXT "

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1120
    const-string v0, "ALTER TABLE advertisement ADD COLUMN tt_download NUMERIC DEFAULT -1"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1123
    const-string v0, "ALTER TABLE placement ADD COLUMN ad_size TEXT "

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    const-string v0, "ALTER TABLE placement ADD COLUMN refresh_duration NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v0, "ALTER TABLE placement ADD COLUMN supported_template_types NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    .line 1132
    const-string v0, "ALTER TABLE placement ADD COLUMN header_bidding SHORT "

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1134
    const-string v0, "ALTER TABLE report ADD COLUMN header_bidding SHORT "

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1138
    :cond_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    .line 1139
    const-string v0, "ALTER TABLE placement ADD COLUMN autocache_priority NUMERIC DEFAULT 2147483647"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1142
    const-string v0, "ALTER TABLE advertisement ADD COLUMN asset_download_timestamp NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1145
    const-string v0, "ALTER TABLE advertisement ADD COLUMN asset_download_duration NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1148
    const-string v0, "ALTER TABLE advertisement ADD COLUMN ad_request_start_time NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1151
    const-string v0, "ALTER TABLE report ADD COLUMN init_timestamp NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1154
    const-string v0, "ALTER TABLE report ADD COLUMN asset_download_duration NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1158
    :cond_3
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4

    .line 1159
    const-string v0, "ALTER TABLE advertisement ADD COLUMN column_enable_om_sdk NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1162
    const-string v0, "ALTER TABLE advertisement ADD COLUMN column_om_sdk_extra_vast TEXT "

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1166
    :cond_4
    const/4 v0, 0x7

    if-ge p2, v0, :cond_5

    .line 1167
    const-string v0, "CREATE TABLE IF NOT EXISTS analytic_url(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE)"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1170
    :cond_5
    const/16 v0, 0x8

    if-ge p2, v0, :cond_6

    .line 1171
    const-string v0, "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1173
    const-string v0, "ALTER TABLE advertisement ADD COLUMN column_request_timestamp NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1176
    const-string v0, "ALTER TABLE placement ADD COLUMN max_hb_cache NUMERIC DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    const-string v0, "ALTER TABLE placement ADD COLUMN recommended_ad_size TEXT "

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1189
    :cond_6
    const/16 v0, 0x9

    if-ge p2, v0, :cond_7

    .line 1190
    const-string v0, "ALTER TABLE report ADD COLUMN play_remote_url SHORT DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    const-string v0, "ALTER TABLE advertisement ADD COLUMN column_assets_fully_downloaded SHORT DEFAULT 0"

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1195
    :cond_7
    return-void
.end method
