.class public Lccsancom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;
.super Ljava/lang/Object;
.source "JobRunnerThreadPriorityHelper.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lccsancom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeAndroidThreadPriority(Lccsancom/vungle/warren/tasks/JobInfo;)I
    .locals 4
    .param p1, "jobInfo"    # Lccsancom/vungle/warren/tasks/JobInfo;

    .line 15
    invoke-virtual {p1}, Lccsancom/vungle/warren/tasks/JobInfo;->getPriority()I

    move-result v0

    .line 16
    .local v0, "priority":I
    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 17
    .local v1, "delta":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    .line 18
    .local v2, "processPriority":I
    const/16 v3, 0x13

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method
