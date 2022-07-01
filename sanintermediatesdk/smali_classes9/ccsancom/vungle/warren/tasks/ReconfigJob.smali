.class public Lccsancom/vungle/warren/tasks/ReconfigJob;
.super Ljava/lang/Object;
.source "ReconfigJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private reconfigCall:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lccsancom/vungle/warren/tasks/ReconfigJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/ReconfigJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;)V
    .locals 0
    .param p1, "reconfigCall"    # Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/ReconfigJob;->reconfigCall:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    .line 19
    return-void
.end method

.method public static makeJobInfo(Ljava/lang/String;)Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 3
    .param p0, "appID"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "extras":Lccsanandroid/os/Bundle;
    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lccsancom/vungle/warren/tasks/JobInfo;

    sget-object v2, Lccsancom/vungle/warren/tasks/ReconfigJob;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/tasks/JobInfo;->setExtras(Lccsanandroid/os/Bundle;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 33
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 34
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 31
    return-object v1
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 2
    .param p1, "params"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 40
    const-string v0, "appId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "appID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x1

    return v1

    .line 46
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/tasks/ReconfigJob;->reconfigCall:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    invoke-interface {v1}, Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;->reConfigVungle()V

    .line 50
    const/4 v1, 0x0

    return v1
.end method
