.class Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;
.super Ljava/lang/Object;
.source "SystemJobInfoConverter.java"


# static fields
.field static final EXTRA_IS_PERIODIC:Ljava/lang/String; = "EXTRA_IS_PERIODIC"

.field static final EXTRA_WORK_SPEC_ID:Ljava/lang/String; = "EXTRA_WORK_SPEC_ID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWorkServiceComponent:Lccsanandroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "appContext":Lccsanandroid/content/Context;
    new-instance v1, Lccsanandroid/content/ComponentName;

    const-class v2, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, v0, v2}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Lccsanandroid/content/ComponentName;

    .line 58
    return-void
.end method

.method private static convertContentUriTrigger(Lccsanandroidx/work/ContentUriTriggers$Trigger;)Lccsanandroid/app/job/JobInfo$TriggerContentUri;
    .locals 3
    .param p0, "trigger"    # Lccsanandroidx/work/ContentUriTriggers$Trigger;

    .line 119
    invoke-virtual {p0}, Lccsanandroidx/work/ContentUriTriggers$Trigger;->shouldTriggerForDescendants()Z

    move-result v0

    .line 121
    .local v0, "flag":I
    new-instance v1, Lccsanandroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p0}, Lccsanandroidx/work/ContentUriTriggers$Trigger;->getUri()Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lccsanandroid/app/job/JobInfo$TriggerContentUri;-><init>(Lccsanandroid/net/Uri;I)V

    return-object v1
.end method

.method static convertNetworkType(Lccsanandroidx/work/NetworkType;)I
    .locals 6
    .param p0, "networkType"    # Lccsanandroidx/work/NetworkType;

    .line 131
    sget-object v0, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter$1;->$SwitchMap$androidx$work$NetworkType:[I

    invoke-virtual {p0}, Lccsanandroidx/work/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 145
    const/4 v0, 0x4

    return v0

    .line 139
    :pswitch_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 140
    const/4 v0, 0x3

    return v0

    .line 137
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 135
    :pswitch_3
    return v2

    .line 133
    :pswitch_4
    return v1

    .line 149
    :cond_0
    :goto_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string v5, "API version too low. Cannot convert network type value %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v1}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method convert(Lccsanandroidx/work/impl/model/WorkSpec;I)Lccsanandroid/app/job/JobInfo;
    .locals 17
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;
    .param p2, "jobId"    # I

    .line 70
    move-object/from16 v0, p1

    iget-object v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 71
    .local v1, "constraints":Lccsanandroidx/work/Constraints;
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->getRequiredNetworkType()Lccsanandroidx/work/NetworkType;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convertNetworkType(Lccsanandroidx/work/NetworkType;)I

    move-result v2

    .line 72
    .local v2, "jobInfoNetworkType":I
    new-instance v3, Lccsanandroid/os/PersistableBundle;

    invoke-direct {v3}, Lccsanandroid/os/PersistableBundle;-><init>()V

    .line 73
    .local v3, "extras":Lccsanandroid/os/PersistableBundle;
    iget-object v4, v0, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const-string v5, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v3, v5, v4}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v4

    const-string v5, "EXTRA_IS_PERIODIC"

    invoke-virtual {v3, v5, v4}, Lccsanandroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v4, Lccsanandroid/app/job/JobInfo$Builder;

    move-object/from16 v5, p0

    iget-object v6, v5, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Lccsanandroid/content/ComponentName;

    move/from16 v7, p2

    invoke-direct {v4, v7, v6}, Lccsanandroid/app/job/JobInfo$Builder;-><init>(ILccsanandroid/content/ComponentName;)V

    .line 76
    invoke-virtual {v4, v2}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Lccsanandroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 77
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->requiresCharging()Z

    move-result v6

    invoke-virtual {v4, v6}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Lccsanandroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 78
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v6

    invoke-virtual {v4, v6}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Lccsanandroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Lccsanandroid/app/job/JobInfo$Builder;->setExtras(Lccsanandroid/os/PersistableBundle;)Lccsanandroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 81
    .local v4, "builder":Lccsanandroid/app/job/JobInfo$Builder;
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v6

    if-nez v6, :cond_1

    .line 83
    iget-object v6, v0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    sget-object v9, Lccsanandroidx/work/BackoffPolicy;->LINEAR:Lccsanandroidx/work/BackoffPolicy;

    if-ne v6, v9, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 85
    .local v6, "backoffPolicy":I
    :goto_0
    iget-wide v9, v0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-virtual {v4, v9, v10, v6}, Lccsanandroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Lccsanandroid/app/job/JobInfo$Builder;

    .line 88
    .end local v6    # "backoffPolicy":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v9

    .line 89
    .local v9, "nextRunTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 90
    .local v11, "now":J
    sub-long v13, v9, v11

    move-wide v15, v9

    .end local v9    # "nextRunTime":J
    .local v15, "nextRunTime":J
    const-wide/16 v8, 0x0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 95
    .local v8, "offset":J
    invoke-virtual {v4, v8, v9}, Lccsanandroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Lccsanandroid/app/job/JobInfo$Builder;

    .line 97
    sget v10, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v10, v13, :cond_3

    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 98
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->getContentUriTriggers()Lccsanandroidx/work/ContentUriTriggers;

    move-result-object v10

    .line 99
    .local v10, "contentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    invoke-virtual {v10}, Lccsanandroidx/work/ContentUriTriggers;->getTriggers()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lccsanandroidx/work/ContentUriTriggers$Trigger;

    .line 100
    .local v14, "trigger":Lccsanandroidx/work/ContentUriTriggers$Trigger;
    invoke-static {v14}, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convertContentUriTrigger(Lccsanandroidx/work/ContentUriTriggers$Trigger;)Lccsanandroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lccsanandroid/app/job/JobInfo$Builder;->addTriggerContentUri(Lccsanandroid/app/job/JobInfo$TriggerContentUri;)Lccsanandroid/app/job/JobInfo$Builder;

    .line 101
    .end local v14    # "trigger":Lccsanandroidx/work/ContentUriTriggers$Trigger;
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->getTriggerContentUpdateDelay()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lccsanandroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Lccsanandroid/app/job/JobInfo$Builder;

    .line 103
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->getTriggerMaxContentDelay()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lccsanandroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Lccsanandroid/app/job/JobInfo$Builder;

    .line 108
    .end local v10    # "contentUriTriggers":Lccsanandroidx/work/ContentUriTriggers;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lccsanandroid/app/job/JobInfo$Builder;->setPersisted(Z)Lccsanandroid/app/job/JobInfo$Builder;

    .line 109
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v6, v10, :cond_4

    .line 110
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v6

    invoke-virtual {v4, v6}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Lccsanandroid/app/job/JobInfo$Builder;

    .line 111
    invoke-virtual {v1}, Lccsanandroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v6

    invoke-virtual {v4, v6}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Lccsanandroid/app/job/JobInfo$Builder;

    .line 113
    :cond_4
    invoke-virtual {v4}, Lccsanandroid/app/job/JobInfo$Builder;->build()Lccsanandroid/app/job/JobInfo;

    move-result-object v6

    return-object v6
.end method
