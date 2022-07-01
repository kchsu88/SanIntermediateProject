.class Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;
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
    name = "DequeueAndCheckForCompletion"
.end annotation


# instance fields
.field private final mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 330
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 334
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->dequeueAndCheckForCompletion()V

    .line 335
    return-void
.end method
