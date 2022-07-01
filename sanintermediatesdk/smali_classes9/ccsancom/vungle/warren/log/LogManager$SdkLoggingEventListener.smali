.class interface abstract Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/log/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SdkLoggingEventListener"
.end annotation


# virtual methods
.method public abstract isCrashReportEnabled()Z
.end method

.method public abstract saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendPendingLogs()V
.end method
