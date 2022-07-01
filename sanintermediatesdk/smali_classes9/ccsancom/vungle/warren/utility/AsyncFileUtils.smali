.class public Lccsancom/vungle/warren/utility/AsyncFileUtils;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;,
        Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;,
        Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
    }
.end annotation


# static fields
.field private static volatile taskExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lccsancom/vungle/warren/utility/SDKExecutors;

    invoke-direct {v0}, Lccsancom/vungle/warren/utility/SDKExecutors;-><init>()V

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/SDKExecutors;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/AsyncFileUtils;->taskExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFileExistAsync(Ljava/io/File;Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "callback"    # Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    .line 30
    new-instance v0, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    invoke-direct {v0, p0, p1}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;-><init>(Ljava/io/File;Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)V

    .line 31
    .local v0, "task":Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;
    new-instance v1, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    invoke-direct {v1, v0}, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;-><init>(Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V

    .line 32
    .local v1, "operation":Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
    sget-object v2, Lccsancom/vungle/warren/utility/AsyncFileUtils;->taskExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    .line 34
    return-object v1
.end method

.method public static setTaskExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 16
    sput-object p0, Lccsancom/vungle/warren/utility/AsyncFileUtils;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 17
    return-void
.end method
