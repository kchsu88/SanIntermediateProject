.class Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Lccsanandroidx/room/EntityInsertionAdapter;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/room/EntityInsertionAdapter<",
        "Lccsanandroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;
    .param p2, "database"    # Lccsanandroidx/room/RoomDatabase;

    .line 53
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$1;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityInsertionAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 17
    .param p1, "stmt"    # Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 61
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 62
    invoke-interface {v0, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, v1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_0
    iget-object v2, v1, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    invoke-static {v2}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->stateToInt(Lccsanandroidx/work/WorkInfo$State;)I

    move-result v2

    .line 68
    .local v2, "_tmp":I
    const/4 v3, 0x2

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 69
    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v4, 0x3

    if-nez v3, :cond_1

    .line 70
    invoke-interface {v0, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 72
    :cond_1
    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :goto_1
    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v4, 0x4

    if-nez v3, :cond_2

    .line 75
    invoke-interface {v0, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 77
    :cond_2
    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :goto_2
    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    invoke-static {v3}, Lccsanandroidx/work/Data;->toByteArray(Lccsanandroidx/work/Data;)[B

    move-result-object v3

    .line 81
    .local v3, "_tmp_1":[B
    const/4 v4, 0x5

    if-nez v3, :cond_3

    .line 82
    invoke-interface {v0, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 84
    :cond_3
    invoke-interface {v0, v4, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 87
    :goto_3
    iget-object v4, v1, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    invoke-static {v4}, Lccsanandroidx/work/Data;->toByteArray(Lccsanandroidx/work/Data;)[B

    move-result-object v4

    .line 88
    .local v4, "_tmp_2":[B
    const/4 v5, 0x6

    if-nez v4, :cond_4

    .line 89
    invoke-interface {v0, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 91
    :cond_4
    invoke-interface {v0, v5, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 93
    :goto_4
    const/4 v5, 0x7

    iget-wide v6, v1, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {v0, v5, v6, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 94
    const/16 v5, 0x8

    iget-wide v6, v1, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {v0, v5, v6, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 95
    const/16 v5, 0x9

    iget-wide v6, v1, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {v0, v5, v6, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 96
    const/16 v5, 0xa

    iget v6, v1, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v6, v6

    invoke-interface {v0, v5, v6, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 98
    iget-object v5, v1, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    invoke-static {v5}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Lccsanandroidx/work/BackoffPolicy;)I

    move-result v5

    .line 99
    .local v5, "_tmp_3":I
    const/16 v6, 0xb

    int-to-long v7, v5

    invoke-interface {v0, v6, v7, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 100
    const/16 v6, 0xc

    iget-wide v7, v1, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {v0, v6, v7, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    const/16 v6, 0xd

    iget-wide v7, v1, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    invoke-interface {v0, v6, v7, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 102
    const/16 v6, 0xe

    iget-wide v7, v1, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {v0, v6, v7, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 103
    const/16 v6, 0xf

    iget-wide v7, v1, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {v0, v6, v7, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 104
    iget-object v6, v1, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 105
    .local v6, "_tmpConstraints":Lccsanandroidx/work/Constraints;
    const/16 v9, 0x14

    const/16 v10, 0x13

    const/16 v11, 0x12

    const/16 v12, 0x11

    const/16 v13, 0x10

    if-eqz v6, :cond_6

    .line 107
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->getRequiredNetworkType()Lccsanandroidx/work/NetworkType;

    move-result-object v15

    invoke-static {v15}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Lccsanandroidx/work/NetworkType;)I

    move-result v15

    .line 108
    .local v15, "_tmp_4":I
    int-to-long v7, v15

    invoke-interface {v0, v13, v7, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->requiresCharging()Z

    move-result v7

    .line 111
    .local v7, "_tmp_5":I
    move/from16 v16, v15

    .end local v15    # "_tmp_4":I
    .local v16, "_tmp_4":I
    int-to-long v14, v7

    invoke-interface {v0, v12, v14, v15}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v12

    .line 114
    .local v12, "_tmp_6":I
    int-to-long v13, v12

    invoke-interface {v0, v11, v13, v14}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v11

    .line 117
    .local v11, "_tmp_7":I
    int-to-long v13, v11

    invoke-interface {v0, v10, v13, v14}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v10

    .line 120
    .local v10, "_tmp_8":I
    int-to-long v13, v10

    invoke-interface {v0, v9, v13, v14}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->getTriggerContentUpdateDelay()J

    move-result-wide v13

    const/16 v9, 0x15

    invoke-interface {v0, v9, v13, v14}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->getTriggerMaxContentDelay()J

    move-result-wide v13

    const/16 v9, 0x16

    invoke-interface {v0, v9, v13, v14}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {v6}, Lccsanandroidx/work/Constraints;->getContentUriTriggers()Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v9

    invoke-static {v9}, Lccsanandroidx/work/impl/model/WorkTypeConverters;->contentUriTriggersToByteArray(Lccsanandroidx/work/ContentUriTriggers;)[B

    move-result-object v9

    .line 125
    .local v9, "_tmp_9":[B
    if-nez v9, :cond_5

    .line 126
    const/16 v8, 0x17

    invoke-interface {v0, v8}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 128
    :cond_5
    const/16 v8, 0x17

    invoke-interface {v0, v8, v9}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 130
    .end local v7    # "_tmp_5":I
    .end local v9    # "_tmp_9":[B
    .end local v10    # "_tmp_8":I
    .end local v11    # "_tmp_7":I
    .end local v12    # "_tmp_6":I
    .end local v16    # "_tmp_4":I
    :goto_5
    goto :goto_6

    .line 131
    :cond_6
    invoke-interface {v0, v13}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 132
    invoke-interface {v0, v12}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 133
    invoke-interface {v0, v11}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 134
    invoke-interface {v0, v10}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 135
    invoke-interface {v0, v9}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 136
    const/16 v7, 0x15

    invoke-interface {v0, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 137
    const/16 v7, 0x16

    invoke-interface {v0, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 138
    const/16 v7, 0x17

    invoke-interface {v0, v7}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 140
    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p2, Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$1;->bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsanandroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
