.class public Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExistenceOperation"
.end annotation


# instance fields
.field private final task:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V
    .locals 0
    .param p1, "task"    # Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->task:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    .line 84
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 90
    iget-object v0, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->task:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->access$000(Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V

    .line 91
    iget-object v0, p0, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->task:Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->cancel(Z)Z

    .line 92
    return-void
.end method
