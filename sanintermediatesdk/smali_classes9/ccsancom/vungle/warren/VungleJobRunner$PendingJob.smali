.class Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingJob"
.end annotation


# instance fields
.field info:Lccsancom/vungle/warren/tasks/JobInfo;

.field private final uptimeMillis:J


# direct methods
.method constructor <init>(JLccsancom/vungle/warren/tasks/JobInfo;)V
    .locals 0
    .param p1, "uptimeMillis"    # J
    .param p3, "info"    # Lccsancom/vungle/warren/tasks/JobInfo;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->uptimeMillis:J

    .line 46
    iput-object p3, p0, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->info:Lccsancom/vungle/warren/tasks/JobInfo;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/VungleJobRunner$PendingJob;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleJobRunner$PendingJob;

    .line 40
    iget-wide v0, p0, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->uptimeMillis:J

    return-wide v0
.end method
