.class Lccsancom/vungle/warren/log/LogManager$2;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/log/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/log/LogManager;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/log/LogManager;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/log/LogManager;

    .line 253
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogManager$2;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCrashReportEnabled()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$2;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lccsancom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    return v0
.end method

.method public saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "level"    # Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "exClass"    # Ljava/lang/String;
    .param p5, "threadId"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$2;->this$0:Lccsancom/vungle/warren/log/LogManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/vungle/warren/log/LogManager;->saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public sendPendingLogs()V
    .locals 1

    .line 256
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager$2;->this$0:Lccsancom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lccsancom/vungle/warren/log/LogManager;->access$300(Lccsancom/vungle/warren/log/LogManager;)V

    .line 257
    return-void
.end method
