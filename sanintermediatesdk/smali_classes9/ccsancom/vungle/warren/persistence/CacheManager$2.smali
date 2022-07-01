.class Lccsancom/vungle/warren/persistence/CacheManager$2;
.super Lccsanandroid/os/FileObserver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/CacheManager;

.field final synthetic val$dirName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # I

    .line 164
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/CacheManager$2;->this$0:Lccsancom/vungle/warren/persistence/CacheManager;

    iput-object p4, p0, Lccsancom/vungle/warren/persistence/CacheManager$2;->val$dirName:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lccsanandroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/CacheManager$2;->stopWatching()V

    .line 168
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager$2;->val$dirName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager$2;->this$0:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-static {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->access$000(Lccsancom/vungle/warren/persistence/CacheManager;)V

    .line 172
    :cond_0
    return-void
.end method
