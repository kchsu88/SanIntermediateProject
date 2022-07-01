.class public Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;
.super Ljava/lang/Object;
.source "SystemAlarmScheduler.java"

# interfaces
.implements Lccsanandroidx/work/impl/Scheduler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "SystemAlarmScheduler"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->mContext:Lccsanandroid/content/Context;

    .line 42
    return-void
.end method

.method private scheduleWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 5
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 62
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Scheduling work with workSpecId %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 63
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createScheduleWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "scheduleIntent":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 65
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0, p1}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createStopWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "cancelIntent":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 55
    return-void
.end method

.method public varargs schedule([Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 3
    .param p1, "workSpecs"    # [Lccsanandroidx/work/impl/model/WorkSpec;

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 47
    .local v2, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-direct {p0, v2}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmScheduler;->scheduleWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V

    .line 46
    .end local v2    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
