.class public Lccsancom/vungle/warren/tasks/SendLogsJob;
.super Ljava/lang/Object;
.source "SendLogsJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private logManager:Lccsancom/vungle/warren/log/LogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lccsancom/vungle/warren/tasks/SendLogsJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/SendLogsJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/log/LogManager;)V
    .locals 0
    .param p1, "logManager"    # Lccsancom/vungle/warren/log/LogManager;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/SendLogsJob;->logManager:Lccsancom/vungle/warren/log/LogManager;

    .line 15
    return-void
.end method

.method public static makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 2

    .line 18
    new-instance v0, Lccsancom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lccsancom/vungle/warren/tasks/SendLogsJob;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 1
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/tasks/SendLogsJob;->logManager:Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lccsancom/vungle/warren/log/LogManager;->sendSdkLogs()V

    .line 25
    const/4 v0, 0x0

    return v0
.end method
