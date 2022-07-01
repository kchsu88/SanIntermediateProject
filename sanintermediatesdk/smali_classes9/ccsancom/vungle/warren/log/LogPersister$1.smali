.class Lccsancom/vungle/warren/log/LogPersister$1;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/log/LogPersister;->getPendingFiles()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/log/LogPersister;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/log/LogPersister;

    .line 158
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogPersister$1;->this$0:Lccsancom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 161
    const-string v0, "_pending"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
