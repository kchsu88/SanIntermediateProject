.class Lccsancom/vungle/warren/AdLoader$8$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader$8;->onSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/AdLoader$8;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader$8;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/AdLoader$8;

    .line 1819
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$8$1;->this$1:Lccsancom/vungle/warren/AdLoader$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1823
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$8$1;->this$1:Lccsancom/vungle/warren/AdLoader$8;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$8;->val$downloadedFile:Ljava/io/File;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    .line 1826
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on deleting zip assets archive"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1828
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
