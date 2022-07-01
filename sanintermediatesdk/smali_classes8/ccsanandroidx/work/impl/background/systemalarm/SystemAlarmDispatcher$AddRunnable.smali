.class Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddRunnable"
.end annotation


# instance fields
.field private final mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field private final mIntent:Lccsanandroid/content/Intent;

.field private final mStartId:I


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V
    .locals 0
    .param p1, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "startId"    # I

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 350
    iput-object p2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;->mIntent:Lccsanandroid/content/Intent;

    .line 351
    iput p3, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;->mStartId:I

    .line 352
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 356
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;->mIntent:Lccsanandroid/content/Intent;

    iget v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;->mStartId:I

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Lccsanandroid/content/Intent;I)Z

    .line 357
    return-void
.end method
