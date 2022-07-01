.class Lccsancom/vungle/warren/log/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/log/LogManager;->saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/log/LogManager;

.field final synthetic val$context:Ljava/lang/String;

.field final synthetic val$exClass:Ljava/lang/String;

.field final synthetic val$level:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$threadId:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/log/LogManager;Ljava/lang/String;Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/log/LogManager;

    .line 133
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogManager$1;->this$0:Lccsancom/vungle/warren/log/LogManager;

    iput-object p2, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$level:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    iput-object p4, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$context:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$userAgent:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$exClass:Ljava/lang/String;

    iput-object p7, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$threadId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 136
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$1;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lccsancom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$1;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lccsancom/vungle/warren/log/LogManager;->access$200(Lccsancom/vungle/warren/log/LogManager;)Lccsancom/vungle/warren/log/LogPersister;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$message:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$level:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$context:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$userAgent:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$1;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lccsancom/vungle/warren/log/LogManager;->access$000(Lccsancom/vungle/warren/log/LogManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$1;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lccsancom/vungle/warren/log/LogManager;->access$100(Lccsancom/vungle/warren/log/LogManager;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$exClass:Ljava/lang/String;

    iget-object v10, p0, Lccsancom/vungle/warren/log/LogManager$1;->val$threadId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual/range {v1 .. v10}, Lccsancom/vungle/warren/log/LogPersister;->saveLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method
